require import Core Int IntDiv IntExtra Ring StdOrder. 
import Ring.IntID IntOrder.


theory SignedReductions.
(* [`R] is a power of 2 *)
op k: int.
axiom k_pos: 2 < k.

op R = 2^k.
lemma Reven : 2 %| R by smt.

lemma R_gt0: 0 < R by smt(powPos).

(* [q] is the modulus *)
op q: int.
axiom q_bnd: 0 < q /\ q < R %/2.
axiom q_odd1: 2 %| (q + 1).
axiom q_odd2: 2 %| (q - 1). 

op qinv : int.
axiom qqinv: (qinv * q) %% R = 1 %% R.
axiom qinv_bnd: 0 <= qinv < R.

op Rinv : int.
axiom Rinv_gt0 : 0 < Rinv.
axiom RRinv: (R * Rinv) %% q = 1 %% q.

(* EasyCrypt defines division for negative numbers
   as needed: remainder is always positive. 
   We need a special mod to get the balanced 
   representative. *)

op ( %%+- ) (a b : int) =
    if (b %/ 2 <= a %% b) then a %% b - b else a %% b axiomatized by bal_modE.

lemma bal_mod_bnd a b :
   0< b =>  2 %| b =>
  - b %/ 2 <=  a %%+- b < b %/ 2 by smt(bal_modE).

lemma bal_mod_congr a b :
  (a %%+- b) %% b = a %% b.
proof.
rewrite bal_modE /=.
case (b %/ 2 <= a %% b).
move => *.
rewrite (_: a%%b - b = a %%b + (-1)*b); first by ring.
by rewrite modzMDr modz_mod.
by rewrite modz_mod.
qed.

lemma bal_mod_sq t: 
   (t %/ R %% (R ^ 2)) %%+- R = (t %/ R) %%+- R.
proof. 
rewrite bal_modE.
rewrite bal_modE.
rewrite (_: t %/ R %% (R ^ 2) %% R = t %/ R  %% R).
have ? : R %| R^2.
rewrite (_: R^2 = R * R). smt.
apply (dvdz_mulr _). smt. 
apply (modz_dvd _). apply H. done.
qed.


lemma wd_bnd x :
   0 <= x  %% (R*R) %/ R < `| R | by rewrite (_: `| R| = R);smt.

lemma pow_div1 b k :
    0 < k => 0 < b => 
    b^k %/ b = b^(k - 1).
proof.
progress.
have stronger : (b^k %/ b * b = b^(k - 1) * b); last by smt.
rewrite divzE.
rewrite (_: b ^ k %% b = 0). 
   rewrite -dvdzE -{1}(pow1 b). 
   apply dvdz_exp2l => /#.
by rewrite -Ring.IntID.mulrC -powS => /#.
qed.

lemma pow_div2 b k :
    1 < k => 0 < b => 
    b^k %/ b^2 = b^(k - 2).
proof.
progress.
have stronger : ((b^k %/ b^2) * b^2 = b^(k - 2) * b^2).
rewrite divzE.
rewrite (_: b ^ k %% b^2 = 0). 
   rewrite -dvdzE -{1}(pow1 b) pow_mul; first 2 by smt(). 
   apply dvdz_exp2l => /#.
rewrite -Ring.IntID.mulrC pow_add; first 2 by smt()=> /#. smt.
move : stronger.
pose x := b ^ k %/ b ^ 2. 
pose y := b ^ (k- 2). 
pose z := b ^2. 
have zn0 : z <> 0. smt.
smt(). 
qed.

lemma bal_mod_small x y:
   1 < y =>
   -y %/ 2 <= x < y %/2 =>
   x %%+- y = x.
proof.
move => ypos [#] xlb yub.
rewrite bal_modE.
case (0 <= x < y %/ 2); smt(@IntDiv).
qed.

lemma b0 :  R * R %/ 2 = R*(R %/ 2).
proof. 
rewrite /R pow_add; first 2 by smt(k_pos). 
rewrite !pow_div1; first 4 by smt(k_pos). 
by rewrite pow_add; smt(k_pos). 
qed.

lemma b1 : R*R %/4 = R %/2 * R %/2.
rewrite pow_add; first 2 by smt(k_pos).
rewrite /R !pow_div1; first 2 by smt(k_pos). 
rewrite pow_add; first 2 by smt(k_pos).
rewrite pow_div1;first 2 by smt(k_pos).
rewrite (_: k-1+k-1 = 2*k - 2); first by ring.
smt.
qed.

lemma b2 : R * R %/2 = R * R %/4 + R * R %/4.
rewrite pow_add; first 2 by smt(k_pos).
rewrite /R !pow_div1; first 2 by smt(k_pos). 
rewrite (_: 2 ^ (k + k) %/ 4 + 2 ^ (k + k) %/ 4 = 2^1 * (2^(k + k) %/ 4)); first by smt(pow1 k_pos).
rewrite (_: 4 = 2^2); first by smt.
rewrite pow_div2;first 2 by smt(k_pos).
rewrite pow_add; first 2 by smt(k_pos).
smt.
qed.

lemma b3 : R = R  %/2 + R  %/2.
rewrite /R !pow_div1; first 2 by smt(k_pos). 
rewrite (_: 2 ^ (k - 1) + 2 ^ (k - 1) = 2^1 * (2^(k - 1) )); first by smt(pow1 k_pos).
rewrite pow_add; first 2 by smt(k_pos).
smt.
qed.

lemma bal_mod_div x :
   x * R %%+- (R ^ 2) %/R = x  %%+- R.
proof.
rewrite !bal_modE.
rewrite (_: R^2 = R*R); first by smt.
rewrite b0.
rewrite -!mulz_modl. smt. 
case (R * (R %/ 2) <= x %% R * R ).
move => *.
by have -> : (R %/ 2 <= x %% R); smt.
move => *. 
by have -> : (! R %/ 2 <= x %% R); smt.
qed.

lemma bal_mod_exists x y :
   exists k,
   x %%+- y = x + k * y.
proof.
rewrite bal_modE.
case (y %/ 2 <= x %%y).
move => *. 
exists (- (x %/ y + 1)). 
rewrite modzE. smt. 
move => *.
exists (- x %/ y).
rewrite modzE. smt. 
qed.

lemma inrange a :
  0 <= a < R %/ 2 => a %% R = a by smt.


lemma outrange a :
  - R%/2 <= a < 0 => a %% R = R + a by smt.


(* Signed Barrett reduction as used in Kyber 2.0 *)
    
op BREDC(a bits : int) = 
   let t = a * (2^bits %/ q + 1) %%+- R^2 %/ 2^bits * q in
      (a %% R + (-t) %% R) %%+- R.

lemma barrett_overZ a kk:
      1 < kk =>
      q < 2^kk =>
      2^kk %/ q * q < 2^kk =>
      0 <= a - a*(2^kk %/ q + 1) %/ 2^kk * q < 2*q.      
admitted.

lemma sign_comp  a b :
 (a %% R + b %% R) %%+- R = (a + b) %%+- R.
proof.
rewrite bal_modE modzDm. smt.
qed.


lemma nosmt BREDCp_corr a bits:
 0 < 2 * q < R %/2 => 
 R < 2^bits =>
 2 ^ bits %/ q * q < 2 ^ bits =>
 2^bits %/ q + 1 < R =>
 -R %/ 2 < a < R %/2 =>
  0  <= BREDC a bits < 2 * q /\ 
 BREDC a bits %% q = a %% q.
proof.
move => [#] ?? ??? [#] ??.

rewrite /BREDC /=.

have extra : (0 <= 2^bits %/ q + 1); first by smt.
have tubnd : (a * (2^bits %/ q + 1) < R %/2 * R). smt. 
have tlbnd : (- R %/2 * R<= a * (2^bits %/ q + 1)). smt.
rewrite (bal_mod_small (a * (2 ^ bits %/ q + 1))). smt.
rewrite (_: R^2 = R*R). smt. smt.

(*******)
rewrite sign_comp.  

move : (barrett_overZ a bits _ _ _). smt. smt. smt.
move => *.
rewrite bal_mod_small. smt. smt.

split.
(* Bound proof *)
smt.

(* Congruence proof *)
rewrite (_: - a * (2 ^ bits %/ q + 1) %/ 2 ^ bits * q = (- a * (2 ^ bits %/ q + 1) %/ 2 ^ bits) * q). smt.
by rewrite modzMDr.
qed.

(* Signed Montgomery reduction as used in Kyber v2.0 *)

op SREDC (a: int) : int =
  let u = (a * qinv * R) %%+- (R^2) in
  let t = (a - u %/ R * q) %%+- (R^2)in
      (t %/ R %% (R^2)) %%+- R.


lemma nosmt SREDCp_corr a:
 0 < q < R %/2 =>
 -R %/ 2 * q <= a < R %/2 * q =>
  -q   <= SREDC a <= q /\
 SREDC a %% q = (a * Rinv) %% q.
proof.
move => [#] ?? [#] ??.
have albnd : (- R * R %/4 <= a); first by  smt(b1).
have aubnd : (a < R* R %/4); first by smt(b1).
rewrite /SREDC /=. 
rewrite (bal_mod_div (a * qinv)). 

move : (bal_mod_bnd (a * qinv) R _ _); first 2 by smt. 
move => inner_bnd.
have ulbnd : (-R*R %/4 <= a * qinv %%+- R * q). 
    have ? : (- R*R %/4 <= -R %/2 * q). smt(b0 b1 b2). smt.
have uubnd : (a * qinv %%+- R * q < R*R %/4). smt(b0 b1 b2).

rewrite (bal_mod_small ((a - a * qinv %%+- R * q))); first 2 by smt. 
rewrite (bal_mod_sq ((a - a * qinv %%+- R * q))).  
rewrite (bal_mod_small ((a - a * qinv %%+- R * q) %/R)); first by smt. smt(b0 b1 b2).

split.

(* Bound proof *)
have aux : (-  a * qinv %%+- R * q <= R %/2 * q); first by smt(b0 b1 b2).
by split; smt(b0 b1 b2). 

(* Congruence proof *)
move : (bal_mod_exists (a * qinv) R) => kk0_exists.
elim kk0_exists => kk0 kk0_val.
rewrite kk0_val.

rewrite (_: a - (a * qinv + kk0 * R) * q = 
      a %/ R * R - ((a * qinv  + kk0 * R) * q) %/ R * R).
rewrite (divzE a).  
rewrite (divzE ((a * qinv  + kk0 * R) * q)).  
rewrite (_ : (a * qinv + kk0 * R) * q %% R = a %% R).
rewrite mulrDl.
rewrite (_:kk0 * R * q = (kk0 * q) * R); first by smt(). 
by rewrite modzMDr -Ring.IntID.mulrA -modzMm qqinv modzMm => /#.
by ring.

have scalar1 : (a %/ R * R - (a * qinv +kk0 * R) * q %/ R * R = 
             a + (- a * qinv - kk0 * R)*q).
    rewrite !divzE.  ring.
    rewrite  -modzMm -modzDm modzMl /= modz_mod modzMm.
    rewrite (_: a * qinv * q = a * (qinv * q)); first by smt(). 
    by rewrite -modzMm qqinv modzMmr /= modz_mod; ring. 

pose xx := (a %/ R * R - (a * qinv + kk0 * R) * q %/ R * R) %/ R.
rewrite (_: xx %% q = xx * (R * Rinv) %% q). 
  by rewrite -(modzMmr _ (R * Rinv) q) RRinv (modzMmr _ (1) q) //=.
rewrite /xx. clear xx.

rewrite Ring.IntID.mulrA.
rewrite (_: (a %/ R * R - (a * qinv + kk0 * R) * q %/ R * R) %/R * R = (a %/ R * R - (a * qinv + kk0 * R) * q %/ R * R)). 
apply dvdz_eq.
rewrite (_: (a %/ R * R - (a * qinv + kk0 * R) * q %/ R * R) = (a %/ R  - (a * qinv + kk0 * R) * q %/ R )*R). smt().
apply dvdz_mull. apply dvdzz.
move : scalar1 => /= *.
by rewrite H3 -modzMml modzMDr modzMml.

qed.


(* This is an alternative reduction in the IBM Research paper 
op SREDC (a: int) : int =
 let a1 = a %/ R in
 let a0 = a %% R in
 let  m = (a0 * qinv) %%+- R in
 let t1 = (m * q) %/ R in 
     a1 - t1.

lemma nosmt SREDC_corr a:
 0 < q < R %/2 =>
 -R %/ 2 * q <= a < R %/2 * q =>
 -q <= SREDC a <= q /\ (* Paper claims -q < SREDC a < q *)
 SREDC a %% q = (a * Rinv) %% q.
proof.
move => *.
pose a1 := a %/ R.
pose a0 := a %% R.
pose m  := (a0 * qinv) %%+- R.
pose t1 := (m * q) %/ R.
pose t0 := (m * q) %% R.
have a0bounds : 0 <= a0 < R; first by smt().
have a1bounds : -R %/4 <= - (q+1) %/2 <= a1 <= (q-1) %/2 < R %/4.
move : H0 => [#] alb aup.
split; last by smt().
split; last first.
move => *. 
rewrite /a1.
smt(@IntDiv q_odd1 Reven).
split; first by smt().
move => *. 
rewrite /a1.
smt(@IntDiv q_odd1 Reven).

have t1bounds : -R %/4 <= -(q+1) %/2 <= t1 <= (q-1) %/2 < R %/4.
move : H0 => [#] alb aup.
split; last by smt().
split; last first.
rewrite /t1 /m /a0 /=.
move : (bal_mod_bnd (a %% R * qinv) R R_gt0 _); first by smt.
pose x := (a %% R * qinv) %%+- R.
move => *.
have ? : ( R%/2 * q %/R = q %/2).  
rewrite (_: R %/ 2 * q %/ R = R * q %/2 %/ R ); first by smt(Reven dvdz_mull dvdz_mulr).
rewrite (_: R * q  %/ 2 %/ R = q * R  %/ 2 %/ R); first by smt().
rewrite (_: q * R  %/ 2 %/ R = q %/ 2 * R %/ R); first by smt(). smt.
rewrite -(_: q %/2 = (q-1) %/ 2).  smt(q_odd2). smt.
split; first by smt().
move => *.
rewrite /t1 /m /a0 /=.
move : (bal_mod_bnd (a %% R * qinv) R R_gt0 _); first by smt.
pose x := (a %% R * qinv) %%+- R.
move => *.
rewrite (_: -(q+1) %/ 2 = (-R%/2) * (q+1) %/R). 
rewrite (_: (-R %/ 2) * (q+1) %/ R = (-R * (q+1) %/2) %/ R ); first by smt(Reven dvdz_mull dvdz_mulr). 
rewrite (_: (- R * (q + 1) %/ 2) = (- (q + 1) * R %/ 2)); first by smt(). 
rewrite (_: (- (q + 1) * R %/ 2) = (- (q + 1) %/ 2 * R)); first by smt(q_odd1). 
rewrite -(_: -q %/2 - 1 = - (q + 1) %/ 2).  smt(q_odd1). smt. smt.
have nooverflow: -q <= a1 - t1 <= q; first by smt().
split; first by rewrite /SREDC -/a1 -/a0 /= -/m -/t1; apply nooverflow.
rewrite /SREDC  -/a0 -/a1 /= -/m -/t1. 
pose t := m*q.
have subeq : (a-t = (a1 - t1)*R + (a0 - t0)). smt.
have a0t0cancel : (a0 = t0). 
rewrite /a0 /t0 /m bal_modE /a0 //=.
case (R %/ 2 <= a %% R * qinv %% R); last first.
progress.  
rewrite (_: a %% R * qinv %% R * q %% R = a %% R * (qinv * q) %% R). 
rewrite modzMml. smt().  rewrite modzMml -modzMml -modzMm. smt.
progress.
rewrite (_: (a %% R * qinv %% R -R) * q %% R = a %% R * (qinv * q) %% R). 
rewrite mulrDl -modzDmr.
rewrite (_: (-R) * q = R * (-q)); first by smt().  
rewrite modzMr => />.
rewrite modzMml. smt.
rewrite modzMml -modzMml -modzMm. smt.
move : subeq; rewrite (_: a0 - t0 = 0) => />; first by smt().
move => *.
rewrite (_: (a1 - t1) %% q = (a1 - t1) * (R * Rinv) %% q). 
rewrite -modzMm. smt. rewrite mulrA -H1 /t. 
search ( +).
rewrite Ring.IntID.mulrDl.
rewrite (_:(-m * q) * Rinv = (-m*Rinv)*q). smt.
rewrite Ring.IntID.addrC -modzDm modzMl => />. 
by rewrite modz_mod.
qed.
*)


end SignedReductions.


abstract theory Montgomery'.

(* [`R] is a power of 2 *)
op k: int.
axiom k_pos: 0 < k.

op R = 2^k.

lemma R_gt0: 0 < R by smt(powPos).

(* [N] is the modulus *)
op N: int.
axiom N_bnd: 0 < N.

op N' : int.
axiom NN': (N * N') %% R = (-1) %% R.
op Rinv : int.
axiom RRinv: (R * Rinv) %% N = 1 %% N.


op REDC' (T: int) : int =
 let m = ((T %% R)*N') %% R
 in (T + m*N) %/ R.

lemma nosmt aux_divR T:
 let m = ((T %% R)*N') %% R
 in (T + m*N) %% R = 0.
proof.
rewrite /= -modzDmr modzMml mulzA -modzMml (mulzC N') modz_mod.
rewrite modzMml -modzMmr NN' modzMmr modzDmr.
have ->: T + T * (-1) = 0 by ring.
smt().
qed.


lemma nosmt REDC'_congr T:
 REDC' T %% N = T * Rinv %% N.
proof.
pose m := ((T %% R)*N') %% R.
pose t := (T + m*N) %/ R.
have tE: t*R = T + m*N.
 have:= (divz_eq (T + m * N) R).
 by rewrite aux_divR /= -/t => <-.
have t_modN: t %% N = T*Rinv %% N.
 rewrite -(mulz1 t) -modzMmr -RRinv modzMmr -mulzA tE mulzDl.
 by rewrite mulzA (mulzC N) -mulzA -modzDml modzMDr modz_mod.
by rewrite /REDC'.
qed.

lemma nosmt REDC'_bnds T n:
 0 <= n =>
 0 <= T < N + N * R^(n+1) =>
 0 <= REDC' T < N + N*R^n.
proof.
pose m := ((T %% R)*N') %% R.
pose t := (T + m*N) %/ R.
move=> Hn; rewrite powS //; move=> [HT1 HT2].
have [Hm1 Hm2]: 0 <= m < R.
 split => *; first smt. (*modz_ge0*)
 move: (ltz_mod ((T %% R)*N') R _); first smt.
 rewrite -/m. 
 have ->//: `|R| = R.
 rewrite -IntOrder.ger0_def.
 by apply ltzW; apply R_gt0.
have Ht: 0 <= t < N + N*R^n.
 split => *; first by smt.
 rewrite /t ltz_divLR 1:/#.
 have ?: m * N <= N*R - N.
  rewrite mulzC.
  have ->: N*R-N = N*(R-1) by ring.
  apply ler_pmul2l.
  smt.
  smt.
 smt.
rewrite /REDC /= -/t; case: (N <= t); smt().
qed.

end Montgomery'.

theory Montgomery.

clone import Montgomery'.

op REDC T = let t = REDC' T in if N <= t then t-N else t.

lemma REDC_corr T:
 0 <= T < N + N*R =>
 0 <= REDC T < N  /\  REDC T %% N = T * Rinv %% N.
proof.
move=> *; rewrite /REDC /=; split.
 move: (REDC'_bnds T 0 _) => />.
 rewrite pow1 pow0 H /= /#.
rewrite -(REDC'_congr T).
case: (N <= REDC' T) => // ?.
by rewrite (_:REDC' T - N = REDC' T + (-1) * N) 1:/# modzMDr.
qed.

end Montgomery.

theory MontgomeryLimbs.

(* number of limbs *)
op r: int.
axiom r_ge0 : 0 < r.

(* w is the word size *)
op w : int.
axiom w_ge0 : 0 <= w.

(* [N] is the modulus *)
op N: int.

clone import Montgomery' with
  op k <- w,
  op N <- N.


op REDCk : int -> int -> int.  
axiom REDCk0 k T :
   k <= 0 => REDCk k T = T.
axiom REDCkS k T:
   0 <= k => REDCk (k+1) T = REDCk k (REDC' T).

lemma REDCk_corr r T:
 0 < r =>
 0 <= T < N + N * R^r =>
 (0 <= REDCk r T < 2*N) /\ REDCk r T %% N = T * Rinv^r %% N.
proof.
elim/natind: r T => /= /> *.
 have ->: n=0 by smt().
 rewrite REDCk0 // /#.
rewrite REDCkS 1:/#. 
move: H3; case: (n=0) => E.
 rewrite E !REDCk0 //= => ?.
 move: (REDC'_bnds T 0 _ _) => //=; rewrite pow0 => ?. 
 split.
  split => *; smt().
 by rewrite pow1; apply REDC'_congr.
move=> *.
move: (H0 (REDC' T) _ _). smt().
 by move: (REDC'_bnds T n _ _) => //=. 
move=> [??].
split; first smt().
rewrite H5.
move: (REDC'_congr T) => ?.
by rewrite -modzMml H6 modzMml powS /#.
qed.

op REDC T = let t = REDCk r T in if N <= t then t-N else t.

lemma REDC_corr T:
 0 <= T < N + N*R^r =>
 0 <= REDC T < N  /\  REDC T %% N = T * Rinv^r %% N.
proof.
move=> *; rewrite /REDC /=.
move: (REDCk_corr r T _ _) => //. smt.
move=> [??].
case: (N <= REDCk r T); smt.
qed.


end MontgomeryLimbs.
