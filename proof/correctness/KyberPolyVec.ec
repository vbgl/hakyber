require import AllCore List IntDiv CoreMap.
from Jasmin require  import JModel JMemory.
require import W16extra Array256 Array128 Array768.
require import Fq.
require import KyberPoly.
require import NTT_Fq.

pragma -oldip.

theory KyberPolyVec.

import KyberPoly.
import Fq.
import Kyber_.
import ZModField.

import MLWEPKE.H_MLWE.Matrix_.

require import IndcpaDerand.
import NTT_Fq.

(* AUX *)

lemma mulvec a b :
   dotp a b = 
    invntt (basemul (ntt a.[0]) (ntt b.[0])) +
    invntt (basemul (ntt a.[1]) (ntt b.[1])) +
    invntt (basemul (ntt a.[2]) (ntt b.[2])).
proof.
rewrite -!mul_comm_ntt !invnttK.
rewrite /dotp => />. 
rewrite /Big.BAdd.big /predT /=.
by smt(@Big.CR).
qed.

op lift_array768 (p : W16.t Array768.t) =
  Array768.map (fun x => inzmod (W16.to_sint x)) p.

op lift_polyvec(row :  W16.t Array768.t, c : int) = 
   Array256.init (fun i => inzmod (W16.to_sint row.[c*256 + i])). 

op signed_bound768_cxq (coefs : W16.t Array768.t) (l u c : int) : bool =
  forall (k : int), l <= k < u => b16 coefs.[k] (c * q).

op pos_bound768_cxq (coefs : W16.t Array768.t) (l u c : int) : bool =
  forall (k : int), l <= k < u => bpos16 coefs.[k] (c * q).

op pos_bound768_b (coefs : W16.t Array768.t) (l u b : int) : bool =
  forall (k : int), l <= k < u => bpos16 coefs.[k] b.



lemma lift_array768_inzmod (a : W16.t t) k :
  0 <= k < 768 =>
  inzmod (to_sint a.[k]) = (lift_array768 a).[k].
proof. by move => H; rewrite /lift_array768 mapE /= initE H. qed.

lemma signed_bound768_signed_bound (a : W16.t t) (b : W16.t Array256.t) n i (sa sb : int) x :
  0 <= n <= sa - sb => 0 <= i <= 256 =>
  signed_bound768_cxq a i sa x =>
  (forall k, 0 <= k < sb => b.[k] = a.[k+n]) =>
  signed_bound_cxq b i sb x.
proof.
  rewrite /signed_bound768_cxq /signed_bound_cxq => 2? H1 H2 *.
  by rewrite H2 1:/# H1 1:/#.
qed.

lemma lift_array256_inzmod (a : W16.t Array256.t) k :
  0 <= k < 256 =>
  inzmod (to_sint a.[k]) = (lift_array256 a).[k].
proof. by move => H; rewrite /lift_array256 mapE /= initE H. qed.

lemma signed_bound256_signed_bound (a : W16.t t) (b c d : W16.t Array256.t) x :
  signed_bound_cxq b 0 256 x =>
  signed_bound_cxq c 0 256 x =>
  signed_bound_cxq d 0 256 x =>
  (forall k, 0 <= k < 256 => a.[k] = b.[k]) =>
  (forall k, 256 <= k < 512 => a.[k] = c.[k-256]) =>
  (forall k, 512 <= k < 768 => a.[k] = d.[k-512]) =>
  signed_bound768_cxq a 0 768 x.
proof.
  rewrite /signed_bound768_cxq /signed_bound_cxq => H H0 H1 H2 H3 H4 k *.
  case (k < 256) => hb.
    by rewrite H2 1:/# H 1:/#.
  case (k < 512) => hc.
    by rewrite H3 1:/# H0 1:/#.
  by rewrite H4 1:/# H1 1:/#.
qed.

lemma pos_bound256_pos_bound768 (a : W16.t t) (b c d : W16.t Array256.t) x :
  pos_bound256_cxq b 0 256 x =>
  pos_bound256_cxq c 0 256 x =>
  pos_bound256_cxq d 0 256 x =>
  (forall k, 0 <= k < 256 => a.[k] = b.[k]) =>
  (forall k, 256 <= k < 512 => a.[k] = c.[k-256]) =>
  (forall k, 512 <= k < 768 => a.[k] = d.[k-512]) =>
  pos_bound768_cxq a 0 768 x.
proof.
  rewrite /pos_bound768_cxq /pos_bound256_cxq => H H0 H1 H2 H3 H4 k *.
  case (k < 256) => hb. 
    by rewrite H2 1:/# H 1:/#.
  case (k < 512) => hc.
    by rewrite H3 1:/# H0 1:/#.
  by rewrite H4 1:/# H1 1:/#.
qed.

lemma pos_bound768_pos_bound (a : W16.t t) (b : W16.t Array256.t) i n (sa sb : int) x :
  0 <= n <= sa - sb => 0 <= i <= 256 =>
  pos_bound768_cxq a i sa x =>
  (forall k, 0 <= k < sb => b.[k] = a.[k+n]) =>
  pos_bound256_cxq b i sb x.
proof.
  rewrite /pos_bound768_cxq /pos_bound256_cxq => H H0 H1 H2 k *.
  by rewrite H2 1:/# H1 1:/#.
qed.

lemma lift_array256_sub_768 a (b : W16.t Array256.t) x n :
  0 <= n =>
  lift_array768 a = x =>
  (forall (k : int), 0 <= k < 256 => inzmod (to_sint b.[k]) = x.[k+n]) =>
  (forall (k : int), 0 <= k < 256 => b.[k] = a.[k+n]) =>
  lift_array256 b = Array256.of_list witness (sub x n 256).
proof.
  rewrite /lift_array768 => H H0 H1 H2.
  rewrite /lift_array256 tP => j H3.
  rewrite mapE /of_list !initE H3 /=.
  by rewrite H1 // nth_sub // addzC.
qed.

lemma inzmod_lift_array256 (x : W16.t t) y n :
  0 <= n <= 512 =>
  (forall (k : int), 0 <= k < 256 => inzmod (to_sint x.[k+n]) = (lift_array256 y).[k]) =>
  lift_array256 y = Array256.of_list witness (sub (lift_array768 x) n 256).
proof.
  move => H H0; rewrite tP => j H1.
  rewrite -H0 //.
  rewrite /of_list initE H1 /= nth_sub // /lift_array768 mapiE // /#. 
qed.

lemma pos_bound256_signed_boundD (r : W16.t Array256.t) x :
  pos_bound256_cxq r 0 256 x =>
  signed_bound_cxq r 0 256 x.
proof.
  rewrite /pos_bound256_cxq /signed_bound_cxq; smt (b16E).
qed.

lemma lift_array768E (x : W16.t t) k :
  0 <= k < 768 =>
  (lift_array768 x).[k] = inzmod (to_sint x.[k]).
proof.  by move => ?; rewrite /lift_array768 mapiE //. qed.

lemma lift_array768_eq (x y : W16.t t) :
  (forall k, 0 <= k < 256 =>
    inzmod (to_sint x.[k]) = (Array256.of_list witness (sub (lift_array768 y) 0 256)).[k]) =>
  (forall k, 0 <= k < 256 =>
    inzmod (to_sint x.[k+256]) = (Array256.of_list witness (sub (lift_array768 y) 256 256)).[k]) =>
  (forall k, 0 <= k < 256 =>
    inzmod (to_sint x.[k+512]) = (Array256.of_list witness (sub (lift_array768 y) 512 256)).[k]) =>
  lift_array768 x = lift_array768 y.
proof.
  move => H H0 H1; rewrite tP => k H2.
  rewrite lift_array768E //.
  case (k < 256) => H3.
    by rewrite H 1:/# get_of_list 1:/# nth_sub 1:/#.
  case (k < 512) => H4.
    move : (H0 (k-256)).
    have ->: 0 <= k - 256 < 256 by smt().
    by move=> /= ->; rewrite /= get_of_list 1:/# nth_sub 1,2:/#.
  move : (H1 (k-512)).
  have -> /= H5: 0 <= k - 512 < 256 by smt().
  by rewrite H5 get_of_list 1:/# nth_sub 1,2:/#.
qed.

lemma lift_array768P (x y : W16.t t) :
  lift_array768 x = lift_array768 y <=>
  (forall k, 0 <= k < 768 => inzmod (to_sint x.[k]) = inzmod (to_sint y.[k])).
proof. 
  split; first by rewrite tP => H *; rewrite -!lift_array768E // H //. 
  by rewrite tP => H *; rewrite !lift_array768E // H //. 
qed.

lemma pos_bound768_signed_bound768 a i j x :
  pos_bound768_cxq a i j x => signed_bound768_cxq a i j x.
proof.
  rewrite /pos_bound768_cxq /signed_bound768_cxq; smt(b16E).
qed.

lemma pos_bound256_cxqD a i j x :
  1 < x => pos_bound256_cxq a i j (x-1) => pos_bound256_cxq a i j x.
proof.
  move => H; rewrite /pos_bound256_cxq. 
  have ->: (forall (k : int), i <= k < j => bpos16 a.[k] ((x - 1) * q)) =
          (forall (k : int), i <= k < j => 0 <= to_sint a.[k] < ((x - 1) * q)) by done.
  move => H0 k H1; rewrite bpos16E.
  move : (H0 k); rewrite H1 qE /= => /> *; smt(@W16). 
qed.

lemma pos_bound256_signed_bound a i j x :
  pos_bound256_cxq a i j x => signed_bound_cxq a i j x.
proof.
  rewrite /pos_bound256_cxq /signed_bound_cxq; smt (b16E).
qed.

lemma pos_bound256_cxqP a i j x :
  pos_bound256_cxq a i j x <=> (forall k, i <= k < j => 0 <= to_sint a.[k] < x * q).
proof. by split; rewrite /pos_bound256_cxq. qed.

lemma pos_bound768_cxqP a i j x :
  pos_bound768_cxq a i j x <=> (forall k, i <= k < j => 0 <= to_sint a.[k] < x * q).
proof. by split; rewrite /pos_bound768_cxq. qed.

op lift_array768_32 (p : W32.t Array768.t) =
  Array768.map (fun x => inzmod (W32.to_sint x)) p.

op bpos32 a b = (0 <= W32.to_sint a && to_sint a < b)
  axiomatized by bpos32E.

op pos_bound768_cxq_32 (coefs : W32.t Array768.t) (l u c : int) : bool =
  forall (k : int), l <= k < u => bpos32 coefs.[k] (c * q).

op pos_bound768_b_32 (coefs : W32.t Array768.t) (l u b : int) : bool =
  forall (k : int), l <= k < u => bpos32 coefs.[k] b.

lemma to_sint_unsigned32 : forall (x : W32.t), 
    0 <= to_sint x =>
    to_sint x = to_uint x.
proof.
  move => x; rewrite W32.to_sintE /smod.
  move : (W32.to_uint_cmp x) => /> ? ?.
  by case (2147483648 <= to_uint x) => ? // /#. 
qed.

(* END AUX *)

lemma polyvec_topolys_corr_h ap ab pv' :
      hoare[ Mderand.polyvec_topolys :
           pv = pv' /\ ap = lift_array768 pv /\
           signed_bound768_cxq pv 0 768 ab 
           ==>
           signed_bound_cxq res.`1 0 256 ab /\ 
           signed_bound_cxq res.`2 0 256 ab /\ 
           signed_bound_cxq res.`3 0 256 ab /\ 
           (forall k, 0 <= k < 256 => res.`1.[k] = pv'.[k]) /\
           (forall k, 0 <= k < 256 => res.`2.[k] = pv'.[k+256]) /\
           (forall k, 0 <= k < 256 => res.`3.[k] = pv'.[k+512]) /\
           (forall k, 0 <= k < 256 =>
              inzmod (to_sint res.`1.[k]) = ap.[k]) /\ 
           (forall k, 0 <= k < 256 =>
              inzmod (to_sint res.`2.[k]) = ap.[256+k]) /\ 
           (forall k, 0 <= k < 256 =>
              inzmod (to_sint res.`3.[k]) = ap.[512+k])]. 
proof.
  proc. while ((forall i, 0 <= i < 256 => r0.[i] = pv.[i]) /\ 
                (forall i, 0 <= i < 256 => r1.[i] = pv.[i + 256]) /\ 
                (forall k, 0 <= k < to_uint i => r2.[k] = pv.[k + 512]) /\ 
                0 <= to_uint i <= 256 /\ to_uint j - to_uint i = 512).
    wp; skip => /> &hr H H0 H1 H2 H3 H4 H5; split => [k H6 H7| ]. 
      rewrite get_setE.
        by move : H5; rewrite ultE of_uintK pmod_small //. 
        case (k = to_uint i{hr}) => ?; first by smt().
          by rewrite H1; move : H7; rewrite to_uintD_small 1,2:/#.
      split; first split.
        by move : H5; rewrite ultE of_uintK pmod_small //; rewrite to_uintD_small 1,2:/#.
        by move : H5; rewrite ultE of_uintK pmod_small //; rewrite to_uintD_small 1,2:/#.
        by rewrite !to_uintD_small 1,2:/# /#.
  wp; while ((forall i, 0 <= i < 256 => r0.[i] = pv.[i]) /\ 
              (forall k, 0 <= k < to_uint i => r1.[k] = pv.[k + 256]) /\ 
              0 <= to_uint i <= 256 /\ to_uint j - to_uint i = 256).
    wp; skip => /> &hr H H0 H1 H2 H3 H4; split => [k H5 H6 | ].
      rewrite get_setE.
        by move : H4; rewrite ultE of_uintK pmod_small //. 
        case (k = to_uint i{hr}) => ?; first by smt().
          by rewrite H0; move : H6; rewrite to_uintD_small 1,2:/#.
      split; first split.
        by move : H4; rewrite ultE of_uintK pmod_small //; rewrite to_uintD_small 1,2:/#.
        by move : H4; rewrite ultE of_uintK pmod_small //; rewrite to_uintD_small 1,2:/#.
        by rewrite !to_uintD_small 1,2:/# /#.
  wp; while ((forall k, 0 <= k < to_uint i => r0.[k] = pv.[k]) /\
              0 <= to_uint i <= 256).
    wp; skip => /> &hr H H0 H1 H2; split => [k H3 H4 | ]. 
      rewrite get_setE.
        by move : H2; rewrite ultE of_uintK pmod_small //. 
        case (k = to_uint i{hr}) => ?; first by smt().
          by rewrite H; move : H4; rewrite to_uintD_small 1,2:/#.
    split.
      by move : H2; rewrite ultE of_uintK pmod_small //; rewrite to_uintD_small 1,2:/#.
      by move : H2; rewrite ultE of_uintK pmod_small //; rewrite to_uintD_small 1,2:/#.
  wp; skip => /> => &hr *; split; first by smt().
  move => i0 rr0; rewrite W64.ultE /= => ? + ??.
  have -> ? : to_uint i0 = 256 by smt().
  split; first smt().
  move => i1 j0 r10; rewrite W64.ultE /= => ? + + ???.
  have -> * : to_uint i1 = 256 by smt().
  split; 1: smt().
  move=> i2 j1 r20; rewrite W64.ultE /= => ? + + ???.
  have -> * : to_uint i2 = 256 by smt().
  smt (lift_array768_inzmod signed_bound768_signed_bound).
qed.

lemma polyvec_topolys_ll  :
      islossless Mderand.polyvec_topolys.
proof.
admitted.

lemma polyvec_topolys_corr ap ab pv' :
      phoare[ Mderand.polyvec_topolys :
           pv = pv' /\ ap = lift_array768 pv /\
           signed_bound768_cxq pv 0 768 ab 
           ==>
           signed_bound_cxq res.`1 0 256 ab /\ 
           signed_bound_cxq res.`2 0 256 ab /\ 
           signed_bound_cxq res.`3 0 256 ab /\ 
           (forall k, 0 <= k < 256 => res.`1.[k] = pv'.[k]) /\
           (forall k, 0 <= k < 256 => res.`2.[k] = pv'.[k+256]) /\
           (forall k, 0 <= k < 256 => res.`3.[k] = pv'.[k+512]) /\
           (forall k, 0 <= k < 256 =>
              inzmod (to_sint res.`1.[k]) = ap.[k]) /\ 
           (forall k, 0 <= k < 256 =>
              inzmod (to_sint res.`2.[k]) = ap.[256+k]) /\ 
           (forall k, 0 <= k < 256 =>
              inzmod (to_sint res.`3.[k]) = ap.[512+k])] = 1%r by
  conseq polyvec_topolys_ll (polyvec_topolys_corr_h ap ab pv').
 

lemma polyvec_frompolys_corr_h _p0 _p1 _p2 a1p a2p a3p ab :
      hoare[ Mderand.polyvec_frompolys :
           a1p = lift_array256 p0 /\
           signed_bound_cxq p0 0 256 ab /\
           a2p = lift_array256 p1 /\
           signed_bound_cxq p1 0 256 ab /\
           a3p = lift_array256 p2 /\
           signed_bound_cxq p2 0 256 ab /\
           _p0 = p0 /\ _p1 = p1 /\ _p2 = p2
           ==>
           signed_bound768_cxq res 0 768 ab /\ 
           (forall k, 0 <= k < 256 => res.[k] = _p0.[k]) /\
           (forall k, 0 <= k < 256 => res.[k+256] = _p1.[k]) /\
           (forall k, 0 <= k < 256 => res.[k+512] = _p2.[k]) /\
           (forall k, 0 <= k < 256 =>
              inzmod (to_sint res.[k]) = a1p.[k]) /\ 
           (forall k, 0 <= k < 256 =>
              inzmod (to_sint res.[k+256]) = a2p.[k]) /\ 
           (forall k, 0 <= k < 256 =>
              inzmod (to_sint res.[k+512]) = a3p.[k])].
proof.
  proc; while ((forall k, 0 <= k < 256 => r.[k] = p0.[k]) /\ 
                (forall k, 0 <= k < 256 => r.[k+256] = p1.[k]) /\ 
                (forall k, 0 <= k < to_uint i => r.[k+512] = p2.[k]) /\ 
                0 <= to_uint i <= 256 /\ to_uint j - to_uint i = 512).
    wp; skip => /> &hr; rewrite W64.ultE /= => *. 
    rewrite !to_uintD_small /= 1,2:/#;smt(get_setE).
  wp; while ((forall k, 0 <= k < 256 => r.[k] = p0.[k]) /\ 
                (forall k, 0 <= k < to_uint i => r.[k+256] = p1.[k]) /\ 
                0 <= to_uint i <= 256 /\ to_uint j - to_uint i = 256).
    wp; skip => /> &hr; rewrite W64.ultE /= => *.
    rewrite !to_uintD_small /= 1,2:/#; smt(get_setE).
  wp; while ((forall k, 0 <= k < to_uint i => r.[k] = p0.[k]) /\ 0 <= to_uint i <= 256).
    wp; skip => /> &hr; rewrite W64.ultE /= => *.
    rewrite to_uintD_small 1:/#; smt(get_setE).
  wp; skip => /> *; split; first by smt().
  move=> 2?;rewrite ultE /= => *. 
  split; 1: smt().
  move=> 3?; rewrite ultE /= => *; split; 1:smt().
  move=> 3?; rewrite ultE /=; smt (signed_bound256_signed_bound lift_array256_inzmod).
qed.


lemma polyvec_frompolys_ll  :
      islossless Mderand.polyvec_frompolys.
admitted.

lemma polyvec_frompolys_corr _p0 _p1 _p2 a1p a2p a3p ab :
      phoare[ Mderand.polyvec_frompolys :
           a1p = lift_array256 p0 /\
           signed_bound_cxq p0 0 256 ab /\
           a2p = lift_array256 p1 /\
           signed_bound_cxq p1 0 256 ab /\
           a3p = lift_array256 p2 /\
           signed_bound_cxq p2 0 256 ab /\
           _p0 = p0 /\ _p1 = p1 /\ _p2 = p2
           ==>
           signed_bound768_cxq res 0 768 ab /\ 
           (forall k, 0 <= k < 256 => res.[k] = _p0.[k]) /\
           (forall k, 0 <= k < 256 => res.[k+256] = _p1.[k]) /\
           (forall k, 0 <= k < 256 => res.[k+512] = _p2.[k]) /\
           (forall k, 0 <= k < 256 =>
              inzmod (to_sint res.[k]) = a1p.[k]) /\ 
           (forall k, 0 <= k < 256 =>
              inzmod (to_sint res.[k+256]) = a2p.[k]) /\ 
           (forall k, 0 <= k < 256 =>
              inzmod (to_sint res.[k+512]) = a3p.[k])]  = 1%r by
  conseq polyvec_frompolys_ll (polyvec_frompolys_corr_h _p0 _p1 _p2 a1p a2p a3p ab ).
 

lemma polyvec_csubq_corr ap :
      hoare[ Mderand.polyvec_csubq :
           ap = lift_array768 r /\
           pos_bound768_cxq r 0 768 2 
           ==>
           ap = lift_array768 res /\
           pos_bound768_cxq res 0 768 1 ] . 
proof.
  move => *; proc; sp. 
  exists* r; elim* => r'.
  seq 1 : (r = r' /\ pos_bound768_cxq r 0 768 2 /\ ap = lift_array768 r /\
          pos_bound256_cxq r0 0 256 2 /\ 
          pos_bound256_cxq r1 0 256 2 /\
          pos_bound256_cxq r2 0 256 2 /\
          (forall k, 0 <= k < 256 => r0.[k] = r.[k]) /\
          (forall k, 0 <= k < 256 => inzmod (to_sint r0.[k]) = ap.[k]) /\ 
          (forall k, 0 <= k < 256 => r1.[k] = r.[k+256]) /\
          (forall k, 0 <= k < 256 => inzmod (to_sint r1.[k]) = ap.[256+k]) /\ 
          (forall k, 0 <= k < 256 => r2.[k] = r.[k+512]) /\
          (forall k, 0 <= k < 256 => inzmod (to_sint r2.[k]) = ap.[512+k]) /\
          lift_array256 r0 = Array256.of_list witness (sub ap 0 256) /\
          lift_array256 r1 = Array256.of_list witness (sub ap 256 256) /\
          lift_array256 r2 = Array256.of_list witness (sub ap 512 256)).
    call (polyvec_topolys_corr_h ap 2 r').
      skip => /> &hr *; split; first by apply pos_bound768_signed_bound768.
      move => ? result *; do split.
        by rewrite (pos_bound768_pos_bound r' result.`1 0 0 768 256 2) //.
        by rewrite (pos_bound768_pos_bound r' result.`2 0 256 768 256 2) //. 
        by rewrite (pos_bound768_pos_bound r' result.`3 0 512 768 256 2) //. 
        by rewrite (lift_array256_sub_768 r' _ (lift_array768 r') 0) //.
        by rewrite (lift_array256_sub_768 r' _ (lift_array768 r') 256) // /#.
        by rewrite (lift_array256_sub_768 r' _ (lift_array768 r') 512) // /#.
  seq 1 : (#[/1:4,5:7,8:]pre /\  pos_bound256_cxq r0 0 256 1).
    exists* r0; elim* => r0'; call (poly_csubq_corr_h (Array256.of_list witness (sub ap 0 256))).
    skip => /> *; smt(@Array256).  
  seq 1 : (#[/1:4,5:7,8:]pre /\  pos_bound256_cxq r1 0 256 1).
    exists* r0; elim* => r0'; call (poly_csubq_corr_h (Array256.of_list witness (sub ap 256 256))).
    skip => /> *;smt(@Array256).   
  seq 1 : (#[/1:4,5:7,8:]pre /\  pos_bound256_cxq r2 0 256 1).
    exists* r0; elim* => r0'; call (poly_csubq_corr_h (Array256.of_list witness (sub ap 512 256))).
    skip => /> *; smt(@Array256).
  ecall (polyvec_frompolys_corr_h r0 r1 r2
                               (Array256.of_list witness (sub ap 0 256)) 
                               (Array256.of_list witness (sub ap 256 256)) 
                               (Array256.of_list witness (sub ap 512 256)) 1).
  skip => /> &hr H H0 H1 H2 H3 H4 H5 H6 H7 H8; do split. 
     by rewrite H3.
     by move : H6; rewrite /pos_bound256_cxq /signed_bound_cxq  => />; smt(@Array256).
     by rewrite H4.
     by move : H7; rewrite /pos_bound256_cxq /signed_bound_cxq  => />; smt(@Array256).
     by rewrite H5.
     by move : H8; rewrite /pos_bound256_cxq /signed_bound_cxq  => />; smt(@Array256).
  move => 6? result *; rewrite -(lift_array768_eq result r') //.  
  split; first by done.
  move : H6 H7 H8; rewrite /lift_array256 /lift_array768 /pos_bound768_cxq /signed_bound768_cxq /pos_bound256_cxq /signed_bound256_cxq qE=> /> *.
 smt(@Array768).
qed.

lemma formula_polyvec x : 
  0 <= x < 3329 =>
  (x * 1024 + 1665) * (4294967296 %/ 3329) %% 18446744073709551616 %/ 4294967296 %% 1024 =
  (x * 1024 + 1664) %/ 3329 %% 1024.
proof.
move=> /mem_range.
have :  
   (all
     (fun x => (x * 1024 + 1665) * (4294967296 %/ 3329) %% 18446744073709551616 %/ 4294967296 %% 1024 =
(x * 1024 + 1664) %/ 3329 %% 1024)
     (range 0 3329)).
by move=> />.
by rewrite allP => H /H /={H}.
qed.

lemma roundcimpl64 (a : W16.t) :
  bpos16 a q =>
  inzmod
  (to_sint (truncateu16
         ((((zeroextu64 a `<<` (of_int 10)%W8) + (of_int 1665)%W64) * (of_int 1290167)%W64 `>>`
           (of_int 32)%W8) `&`
          (of_int 1023)%W64))) = PolyVec.roundc (inzmod (to_sint a)).
proof.
rewrite /zeroextu64 /truncateu16 PolyVec.roundcE qE => /> *.
rewrite (_: W64.of_int 1023 = W64.masklsb 10); first by rewrite /max /=.
rewrite W64.and_mod => />. 
rewrite W64.of_uintK to_sintE.
rewrite /(`<<`) /(`>>`).
rewrite W64.shlMP; first by smt().
rewrite W64.to_uint_shr; first by smt().
rewrite W16.of_uintK.
congr.
rewrite inzmodK.
rewrite to_sintE.
rewrite qE.
simplify.
rewrite IntDiv.pmod_small /max /=. smt(@W64).
rewrite IntDiv.pmod_small /max /=. smt(@W64).
rewrite (IntDiv.pmod_small _ 3329). smt(@W16).
rewrite (_: (smod (to_uint a))%W16 = to_uint a). smt(@W16).
pose xx := (to_uint a * 1024 + 1665).
rewrite W64.of_uintK => />.
pose yy := xx * 1290167 %% 18446744073709551616 %/ 4294967296 %% 1024.
have ? : (0 <= yy < 2^16). smt(@W16).
rewrite (_: W16.smod yy =  yy). 
rewrite /smod.
simplify.
case (32768 <= yy) => ?. smt().
done.
rewrite /yy.
rewrite (_: 1290167 = 4294967296 %/ 3329). smt().

rewrite /xx.
pose x := to_uint a.
rewrite formula_polyvec.
rewrite /x. 
have to_sint_geq0 : to_sint a = to_uint a.
rewrite to_sint_unsigned //.
rewrite -to_sint_geq0.
done.
done.
qed.

lemma roundcimpl_rng (a : W16.t) :
  bpos16 a q =>
  0 <= to_sint (truncateu16
         ((((zeroextu64 a `<<` (of_int 10)%W8) + (of_int 1665)%W64) * (of_int 1290167)%W64 `>>`
           (of_int 32)%W8) `&`
          (of_int 1023)%W64)) < 1024.
proof.
rewrite to_sintE; move => /> *.
rewrite (_: W64.of_int 1023 = W64.masklsb 10); first by rewrite /max /=.
rewrite W64.and_mod => />. 
pose xx := (W64.of_int
             (to_uint
                (((zeroextu64 a `<<` (of_int 10)%W8) + (of_int 1665)%W64) * (of_int 1290167)%W64 `>>` (of_int 32)%W8) %%
              1024)).
have ? : 0<= to_uint  xx < 1024; first by smt(@W64).
have ? : 0<= to_uint  (truncateu16 xx) < 1024.

  rewrite /truncateu16; smt(@W16 @W64).
  by rewrite /max /smod /=;  smt(@W16).
qed.

lemma polyvec_compress_round_corr ap :
      hoare[ Mderand.polyvec_compress_round :
           ap = lift_array768 a /\
           pos_bound768_cxq a 0 768 2 
           ==>
           Array768.map PolyVec.roundc ap = lift_array768 res /\
           forall k, 0 <= k < 768 => 0 <= to_sint res.[k] < 1024 ] . 
proof.
  move => *; proc.

while (#pre /\ 0 <= to_uint i <= 768 + 3 /\ to_uint i %% 4 = 0 /\ 
        ap = lift_array768 aa /\ pos_bound768_cxq aa 0 768 1 /\
        (forall k,
          0 <= k < to_uint i =>
           inzmod (W16.to_sint r.[k]) = PolyVec.roundc ap.[k]) /\ 
        (forall k,
            0<= k < to_uint i => 0 <= to_sint r.[k] < 1024)).
      unroll 2; unroll 3; unroll 4; unroll 5.
      (rcondt 2; first by wp; skip); (rcondt 10; first by wp; skip); (rcondt 18; first by wp; skip);
        (rcondt 26; first by wp; skip); (rcondf 34; first by wp; skip).
      wp; skip => /> &hr H H0 H1 H2 H3 H4 H5 H6; rewrite ultE /= => ?.
      rewrite !to_uintD_small /= 1..4:/#; split; 1:smt().
      split; 1:smt().
      split; move => k *; 1: smt (get_setE lift_array768E  roundcimpl64).
      rewrite /pos_bound768_cxq /= in H4.
      move: (roundcimpl_rng (aa{hr}.[k])).
      have ->: bpos16 aa{hr}.[k] q by smt().
      smt (get_setE).
call (polyvec_csubq_corr ap). 
wp; skip => /> *; split; 1: smt().
move => i0 r0; rewrite ultE /= => *; split; 2: smt().
rewrite tP => j *; rewrite mapiE //; smt(@Array768).
qed.

(******************************************************)
lemma polyvec_add_corr _a _b ab bb :
    0 <= ab <= 6 => 0 <= bb <= 3 =>  
      hoare[ Mderand.polyvec_add2 :
           _a = lift_array768 r /\
           _b = lift_array768 b /\
           signed_bound768_cxq r 0 768 ab /\
           signed_bound768_cxq b 0 768 bb 
           ==>
           signed_bound768_cxq res 0 768 (ab + bb) /\ 
           forall k, 0 <= k < 768 =>
              inzmod (to_sint res.[k]) = _a.[k] + _b.[k]]. 
proof.
move => *.
proc.
seq 6 : (#pre).
by wp; skip.
seq 1 : (#pre /\ signed_bound_cxq r0 0 256 ab /\ signed_bound_cxq r1 0 256 ab /\
        signed_bound_cxq r2 0 256 ab /\ (forall k, 0 <= k < 256 => r0.[k] = r.[k]) /\
        (forall k, 0 <= k < 256 => r1.[k] = r.[k+256]) /\ (forall k, 0 <= k < 256 => r2.[k] = r.[k+512]) /\
        (forall k, 0 <= k < 256 => inzmod (to_sint r0.[k]) = _a.[k]) /\
        (forall k, 0 <= k < 256 => inzmod (to_sint r1.[k]) = _a.[256+k]) /\
        (forall k, 0 <= k < 256 => inzmod (to_sint r2.[k]) = _a.[512+k])).
exists* r; elim* => a'.
call (polyvec_topolys_corr_h _a ab a').
by skip => /> *. 

seq 1 : (#pre /\ signed_bound_cxq b0 0 256 bb /\ signed_bound_cxq b1 0 256 bb /\
        signed_bound_cxq b2 0 256 bb /\ (forall k, 0 <= k < 256 => b0.[k] = b.[k]) /\
        (forall k, 0 <= k < 256 => b1.[k] = b.[k+256]) /\ (forall k, 0 <= k < 256 => b2.[k] = b.[k+512]) /\
        (forall k, 0 <= k < 256 => inzmod (to_sint b0.[k]) = _b.[k]) /\
        (forall k, 0 <= k < 256 => inzmod (to_sint b1.[k]) = _b.[256+k]) /\
        (forall k, 0 <= k < 256 => inzmod (to_sint b2.[k]) = _b.[512+k])).
exists* b; elim* => b'.
call (polyvec_topolys_corr_h _b bb b').
by skip => /> *.

seq 1 : (#{/~r0}pre /\ signed_bound_cxq r0 0 256 (ab + bb) /\
        forall k, 0 <= k < 256 => inzmod (to_sint r0.[k]) = (lift_array768 r).[k] + (lift_array768 b).[k]).
exists* r0; elim* => a0'. 
exists* b0; elim* => b0'.
call (poly_add_corr (lift_array256 a0') (lift_array256 b0') ab bb).
skip => /> *. by smt(@Array256).

seq 1 : (#{/~r1}pre /\ signed_bound_cxq r1 0 256 (ab + bb) /\
        forall k, 0 <= k < 256 => inzmod (to_sint r1.[k]) = (lift_array768 r).[256+k] + (lift_array768 b).[256+k]).
exists* r1; elim* => a1'. 
exists* b1; elim* => b1'.
call (poly_add_corr (lift_array256 a1') (lift_array256 b1') ab bb).
skip => /> *. by smt(@Array256).

seq 1 : (#{/~r2}pre /\ signed_bound_cxq r2 0 256 (ab + bb) /\
        forall k, 0 <= k < 256 => inzmod (to_sint r2.[k]) = (lift_array768 r).[512+k] + (lift_array768 b).[512+k]).
exists* r2; elim* => a2'. 
exists* b2; elim* => b2'.
call (poly_add_corr (lift_array256 a2') (lift_array256 b2') ab bb).
skip => /> *. by smt(@Array256).

ecall (polyvec_frompolys_corr_h r0 r1 r2 (lift_array256 r0) (lift_array256 r1) (lift_array256 r2) (ab + bb)).
skip => /> *.
by smt(@Array768 @Array256).
qed.

(******************************************************)

lemma polyvec_topolys_corr_aux ap pv' :
      hoare[ Mderand.polyvec_topolys :
           pv = pv' /\ ap = lift_array768 pv
           ==>
           (forall k, 0 <= k < 256 => res.`1.[k] = pv'.[k]) /\
           (forall k, 0 <= k < 256 => res.`2.[k] = pv'.[k+256]) /\
           (forall k, 0 <= k < 256 => res.`3.[k] = pv'.[k+512]) /\
           (forall k, 0 <= k < 256 =>
              inzmod (to_sint res.`1.[k]) = ap.[k]) /\ 
           (forall k, 0 <= k < 256 =>
              inzmod (to_sint res.`2.[k]) = ap.[256+k]) /\ 
           (forall k, 0 <= k < 256 =>
              inzmod (to_sint res.`3.[k]) = ap.[512+k])]. 
proof.
  proc. while ((forall i, 0 <= i < 256 => r0.[i] = pv.[i]) /\ 
                (forall i, 0 <= i < 256 => r1.[i] = pv.[i + 256]) /\ 
                (forall k, 0 <= k < to_uint i => r2.[k] = pv.[k + 512]) /\ 
                0 <= to_uint i <= 256 /\ to_uint j - to_uint i = 512).
    wp; skip => /> &hr; rewrite ultE /= => *; split => [k | ].
    + rewrite to_uintD_small /= 1:/# => *; smt(Array256.get_setE).
    rewrite !to_uintD_small /=; smt().
  wp; while ((forall i, 0 <= i < 256 => r0.[i] = pv.[i]) /\ 
              (forall k, 0 <= k < to_uint i => r1.[k] = pv.[k + 256]) /\ 
              0 <= to_uint i <= 256 /\ to_uint j - to_uint i = 256).
    wp; skip => /> &hr; rewrite ultE /= => *. 
    rewrite !to_uintD_small /= 1,2:/#; smt(Array256.get_setE).
  wp; while ((forall k, 0 <= k < to_uint i => r0.[k] = pv.[k]) /\
              0 <= to_uint i <= 256).
    wp; skip => /> &hr; rewrite ultE /= => *. 
    rewrite !to_uintD_small /= 1:/#; smt(Array256.get_setE).
  wp; skip => /> => *; split; first by smt().
  move=> ??; rewrite ultE /= => *.
  split;1 :smt().
  move=> 3?; rewrite ultE /= => *; split;1: smt().
  move=> 3?; rewrite ultE /= => *; smt (lift_array768_inzmod).
qed.

lemma polyvec_reduce_corr _a :
      hoare[ Mderand.polyvec_reduce :
          _a = lift_array768 r ==> 
          _a = lift_array768 res /\
          forall k, 0 <= k < 768 => bpos16 res.[k] (2*Kyber_.q)].
proof.
proc.
ecall (polyvec_frompolys_corr_h r0 r1 r2 (lift_array256 r0) (lift_array256 r1) (lift_array256 r2) 2).
ecall (poly_reduce_corr_h (lift_array256 r2)).
ecall (poly_reduce_corr_h (lift_array256 r1)).
ecall (poly_reduce_corr_h (lift_array256 r0)).
ecall (polyvec_topolys_corr_aux _a r).
wp; skip => /> &hr *.
split; 1: by rewrite /signed_bound_cxq; smt (b16E).
move=> *; split; 2: smt().
apply tP => *; smt (lift_array768_inzmod lift_array256_inzmod).
qed.

import Array5.
lemma polyvec_decompress_restore_corr ap :
      hoare[ Mderand.polyvec_decompress_restore :
           ap = lift_array768_32 rp /\
           pos_bound768_b_32 rp 0 768 (2^10) 
           ==>
           Array768.map PolyVec.unroundc ap = lift_array768 res /\
           signed_bound768_cxq res 0 768 1 ] . 
proof.
proc.
while (#pre /\ 0 <= to_uint i <= 768 /\ to_uint i %% 4 = 0 /\
       forall k, 0 <= k < to_uint i => r.[k] = truncateu16 (((rp.[k] * W32.of_int 3329) + W32.of_int 512) `>>` 
                                               W8.of_int 10)).
 + exlim (to_uint i) => i0.
   while ((0 <= i0 && i0 < 768) /\ i0 %% 4 = 0 /\ to_uint i = i0 + k /\ 0 <= k <= 4 /\
          (forall z, k <= z < 5 => t.[z] = rp.[i0 + z]) /\
          forall k, 0 <= k < to_uint i => r.[k] = 
               truncateu16 (((rp.[k] * W32.of_int 3329) + W32.of_int 512) `>>` W8.of_int 10)).
   + auto => /> &hr *.
     by rewrite to_uintD_small /= 1:/#; smt (Array5.get_setE Array768.get_setE). 
   wp; while ((0 <= i0 && i0 < 768) /\ i0 %% 4 = 0 /\ to_uint i = i0 /\ 0 <= k <= 5 /\
           (forall z, 0 <= z < k=> t.[z] = rp.[i0 + z])).
   + auto => /> &hr; smt (Array5.get_setE).
   by auto => /> &hr; rewrite ultE /= /#.

wp; skip => /> &hr H; split; 1: smt().
move=> i0 r0; rewrite ultE /= => 4?.
have -> hr0 : to_uint i0 = 768 by smt().
have h : forall k, 0 <= k && k < 768 => 
  to_sint r0.[k] = ((to_sint rp{hr}.[k] %% 3329 * 3329 + 512) %/ 2 ^ 10).
+ move=> k hk; rewrite hr0 1://.
  move: (H k hk); rewrite bpos32E => /> *.
  have heq : to_uint (rp{hr}.[k] * W32.of_int 3329) = to_uint rp{hr}.[k] * 3329.
  + by rewrite to_uintM_small /=; smt(to_sint_unsigned32).
  have heq1 : to_uint (rp{hr}.[k] * W32.of_int 3329 + W32.of_int 512) = 
              to_uint rp{hr}.[k] * 3329 + 512.
  + rewrite to_uintD_small /=; smt(to_sint_unsigned32).
  pose X := (W2u16.truncateu16 _).
  have heq2 : to_uint X = (to_sint rp{hr}.[k] %% 3329 * 3329 + 512) %/ 2 ^ 10.
  + rewrite to_uint_truncateu16 shr_div_le // /=. 
    rewrite heq1; smt(to_sint_unsigned32).
  rewrite (W16.to_sintE X) /smod /=.
  have -> /=: !(32768 <= to_uint X). 
  + rewrite heq2 /=; smt(to_sint_unsigned32).
  by rewrite heq2.
split.
+ apply Array768.tP => k hk.
  by rewrite /lift_array768 !mapiE 1..3:// /= PolyVec.unroundcE inzmodK qE h.
move=> k hk; rewrite b16E h 1:// /= qE. 
by move: (H k hk); rewrite bpos32E /#.
qed.

require import Jindcpa.

lemma ntt_correct_h (_r0 : zmod Array256.t):
      hoare[ Mderand.poly_ntt :
               _r0 = lift_array256 arg /\
               array_mont zetas_const = lift_array128 jzetas /\ signed_bound_cxq arg 0 256 2 ==>
               ntt _r0 = lift_array256 res /\
               forall (k : int), 0 <= k && k < 256 => bpos16 res.[k] (2 * q)]
 by conseq (ntt_correct _r0). 

lemma polyvec_ntt_correct _r:
   hoare[ Mderand.polyvec_ntt :
        _r = lift_array768 r /\
        array_mont zetas_const = 
           lift_array128  jzetas /\
        signed_bound768_cxq r 0 768 2
          ==> 
            ntt (Array256.of_list witness (sub _r 0 256)) = lift_polyvec res 0 /\
            ntt (Array256.of_list witness (sub _r 256 256)) = lift_polyvec res 1 /\
            ntt (Array256.of_list witness (sub _r 512 256)) = lift_polyvec res 2 /\
            pos_bound768_cxq res 0 768 2 ].
proof.
proc.
ecall (polyvec_frompolys_corr_h r0 r1 r2 (lift_array256 r0) (lift_array256 r1) (lift_array256 r2) 2).
ecall (ntt_correct_h (lift_array256 r2)).
ecall (ntt_correct_h (lift_array256 r1)).
ecall (ntt_correct_h (lift_array256 r0)).
ecall (polyvec_topolys_corr_h _r 2 r).
wp; skip => /> &hr 2? result 6? H1 H2 H3 ? H4 ? ? H5 ? ? H6 ?.
split; 1: smt(b16E). 
move=>5? H7 H8 H9 H10 H11 H12; split.
+ apply Array256.tP => i hi.
  rewrite /lift_polyvec /= initiE 1:// /= H10 1:// -H4.
  congr; congr.
  apply Array256.tP => j hj.
  smt(@Array256 @Array768).
split.
+ apply Array256.tP => i hi.
  rewrite /lift_polyvec /= initiE 1:// /= addzC H11 1:// -H5.
  congr; congr.
  apply Array256.tP => j hj.
  smt(@Array256 @Array768).
split.
  apply Array256.tP => i hi.
  rewrite /lift_polyvec /= initiE 1:// /= addzC H12 1:// -H6.
  congr; congr.
  apply Array256.tP => j hj.
  smt(@Array256 @Array768).
smt (b16E bpos16E). 
qed.

lemma invntt_correct_h (_r : zmod Array256.t):
      hoare[  Mderand.poly_invntt :
             _r = lift_array256 arg /\
             array_mont_inv zetas_inv_const = lift_array128 jzetas_inv /\ signed_bound_cxq arg 0 256 2 ==>
             scale (invntt _r) (inzmod SignedReductions.R) = lift_array256 res /\
             forall (k : int), 0 <= k && k < 256 => b16 res.[k] (q + 1)]
by conseq (invntt_correct _r). 

lemma polyvec_invntt_correct _r:
   hoare[ Mderand.polyvec_invntt :
        _r = lift_array768 r /\
        array_mont_inv zetas_inv_const = 
           lift_array128  jzetas_inv /\
        signed_bound768_cxq r 0 768 2
          ==> 
            scale (invntt (Array256.of_list witness (sub _r 0 256))) (inzmod SignedReductions.R) = lift_polyvec res 0 /\
            scale (invntt (Array256.of_list witness (sub _r 256 256))) (inzmod SignedReductions.R) = lift_polyvec res 1 /\
            scale (invntt (Array256.of_list witness (sub _r 512 256))) (inzmod SignedReductions.R) = lift_polyvec res 2 /\
            forall (k : int), 0 <= k && k < 768 => b16 res.[k] (q + 1) ].
proof.
proc.
ecall (polyvec_frompolys_corr_h r0 r1 r2 (lift_array256 r0) (lift_array256 r1) (lift_array256 r2) 2).
ecall (invntt_correct_h (lift_array256 r2)).
ecall (invntt_correct_h (lift_array256 r1)).
ecall (invntt_correct_h (lift_array256 r0)).
ecall (polyvec_topolys_corr_h _r 2 r).
wp; skip => /> &hr ?? result 9? result0 h0 ? result1 h1 ? result2 h2 ?.
split; 1: smt (b16E qE).
move=> 5? H1 H2 H3 H4 H5 H6. 
rewrite /lift_polyvec.
split.
+ apply Array256.tP => i hi.
  rewrite initiE 1:// /=. 
  rewrite H4 1:// -h0.
  congr; congr; congr.
  apply Array256.tP => j hj.
  smt(@Array256 @Array768).
split.
+ apply Array256.tP => i hi.
  rewrite initiE 1:// /=. 
  rewrite addzC H5 1:// -h1.
  congr; congr; congr.
  apply Array256.tP => j hj.
  smt(@Array256 @Array768).
split.
+ apply Array256.tP => i hi.
  rewrite initiE 1:// /=. 
  rewrite addzC H6 1:// -h2.
  congr; congr; congr.
  apply Array256.tP => j hj.
  smt(@Array256 @Array768).
smt().
qed.

lemma polyvec_pointwise_acc_corr_h _a0 _a1 _a2 _b0 _b1 _b2 _p0 _p1 _p2 (_r : zmod Array256.t) :
  array_mont zetas_const = lift_array128 jzetas =>
  _p0 = scale (basemul _a0 _b0) (inzmod 169) =>
  _p1 = scale (basemul _a1 _b1) (inzmod 169) =>
  _p2 = scale (basemul _a2 _b2) (inzmod 169) =>
  (forall k, 0 <=  k < 256 =>
     _r.[k] = _p0.[k] + _p1.[k] + _p2.[k])  =>
  hoare [ M.polyvec_pointwise_acc : 
    _a0 = lift_polyvec a 0 /\
    _a1 = lift_polyvec a 1 /\
    _a2 = lift_polyvec a 2 /\
    _b0 = lift_polyvec b 0 /\
    _b1 = lift_polyvec b 1 /\
    _b2 = lift_polyvec b 2 /\
    signed_bound768_cxq a 0 768 2 /\ 
    signed_bound768_cxq b  0 768 2 
     ==> 
    lift_array256 res =  _r /\
    forall (k : int), 0 <= k && k < 256 => 
        bpos16 res.[k] (2 * q)
  ].
proof.
move => *.
proc.
seq 8 : #pre; first by auto => />.
seq 1 : (#pre /\ signed_bound_cxq a0 0 256 2 /\ signed_bound_cxq a1 0 256 2 /\
        signed_bound_cxq a2 0 256 2 /\ (forall k, 0 <= k < 256 => a0.[k] = a.[k]) /\
        (forall k, 0 <= k < 256 => a1.[k] = a.[k+256]) /\ (forall k, 0 <= k < 256 => a2.[k] = a.[k+512]) /\
        (forall k, 0 <= k < 256 => inzmod (to_sint a0.[k]) = _a0.[k]) /\
        (forall k, 0 <= k < 256 => inzmod (to_sint a1.[k]) = _a1.[k]) /\
        (forall k, 0 <= k < 256 => inzmod (to_sint a2.[k]) = _a2.[k])).
ecall (polyvec_topolys_corr_h (lift_array768 a) 2 a).
skip.
move => &hr.
auto => /> *. 
by do split; smt(@Array256).

seq 1 : (#pre /\ signed_bound_cxq b0 0 256 2 /\ signed_bound_cxq b1 0 256 2 /\
        signed_bound_cxq b2 0 256 2 /\ (forall k, 0 <= k < 256 => b0.[k] = b.[k]) /\
        (forall k, 0 <= k < 256 => b1.[k] = b.[k+256]) /\ (forall k, 0 <= k < 256 => b2.[k] = b.[k+512]) /\
        (forall k, 0 <= k < 256 => inzmod (to_sint b0.[k]) = _b0.[k]) /\
        (forall k, 0 <= k < 256 => inzmod (to_sint b1.[k]) = _b1.[k]) /\
        (forall k, 0 <= k < 256 => inzmod (to_sint b2.[k]) = _b2.[k])).
ecall (polyvec_topolys_corr_h (lift_array768 b) 2 b).
skip.
move => &hr.
auto => /> *. 
by do split; smt(@Array256).

seq 1 : (#pre /\ 
   signed_bound_cxq r 0 256 3 /\ _p0 = lift_array256 r).

ecall (poly_basemul_corr _a0 _b0 zetas_const).
skip => &hr /> *. 
do split. 
rewrite /lift_polyvec /lift_array256 mapE. 
apply Array256.ext_eq=> x xb.
 smt(@Array256).
rewrite /lift_polyvec /lift_array256 mapE => /> *. 
apply Array256.ext_eq=> x xb.
 smt(@Array256).
by smt(basemul_scales).

seq 1 : (#pre /\ 
   signed_bound_cxq t 0 256 3 /\ _p1 = lift_array256 t).

ecall (poly_basemul_corr _a1 _b1 zetas_const).
skip => &hr /> *.
do split. 
rewrite /lift_polyvec /lift_array256 mapE => /> *. 
apply Array256.ext_eq=> x xb.
 smt(@Array256).
rewrite /lift_polyvec /lift_array256 mapE => /> *. 
apply Array256.ext_eq=> x xb.
 smt(@Array256).
by smt(basemul_scales).

seq 1 : (#{/~r}pre /\ 
   signed_bound_cxq r 0 256 6 /\ 
   (forall k, 0 <= k < 256 =>
     (lift_array256 r).[k] = _p0.[k] + _p1.[k])).
call (poly_add_corr _p0 _p1 3 3 _ _) => />.
by move => * /#.
skip => &hr /> *.
smt(@Array256).

seq 1 : (#{/~t}pre /\ 
   signed_bound_cxq t 0 256 3 /\ _p2 = lift_array256 t).

ecall (poly_basemul_corr _a2 _b2 zetas_const).
skip => &hr /> *.
do split. 
rewrite /lift_polyvec /lift_array256 mapE => /> *. 
apply Array256.ext_eq=> x xb.
 smt(@Array256).
rewrite /lift_polyvec /lift_array256 mapE => /> *. 
apply Array256.ext_eq=> x xb.
smt(@Array256).
by smt(basemul_scales).

seq 1 : (#{/~r}pre /\ 
   signed_bound_cxq r 0 256 9 /\ 
   (forall k, 0 <= k < 256 =>
     (lift_array256 r).[k] = _p0.[k] + _p1.[k] + _p2.[k])).
exists* (lift_array256 r). elim* => _rr.
call (poly_add_corr _rr _p2 6 3 _ _) => />.
by move => * /#.
skip => &hr />.
smt(@Array256).

ecall (poly_reduce_corr_h (lift_array256 r)).
skip => &hr /> *.
apply Array256.ext_eq.
move => x xb.
smt(@Array256).
qed.

end KyberPolyVec.

