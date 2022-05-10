require import AllCore ZModP IntDiv Distr List DList PKE_Ext.
from Jasmin require import JWord.
require import Array32 Array64 Array128 Array168 Array256 Array384.
require import Array768 Array960 Array1024 Array1152.
require import Kyber.
import NTT_Properties.
(* Aux *)
import KMatrix.
import Zq.
lemma ofipolyvecK_small (x : ipolyvec) :
    (forall k, 0 <= k < 768 => 0 <= x.[k] < q) =>  toipolyvec (ofipolyvec x) = x.
move => bnd.
rewrite /ofipolyvec /toipolyvec /fromarray256 /subarray256.
apply Array768.ext_eq => k kb.
rewrite mapiE //= initiE //=.
case (0 <= k && k < 256). 
+ move => *. rewrite offunvE //= mapiE //= initiE //= inFqK; smt(modz_small).
move => *;case (256 <= k && k < 512). 
+ move => *; rewrite offunvE //= mapiE 1:/# initiE 1:/# inFqK; smt(modz_small).
move => *; rewrite offunvE //= mapiE 1:/# initiE 1:/# inFqK; smt(modz_small).
qed.

lemma toipolyvecK (x : vector) :
   ofipolyvec (toipolyvec x) = x.
rewrite /ofipolyvec /toipolyvec /fromarray256 /subarray256.
apply eq_vectorP => i ib.
rewrite offunvE //=.
apply Array256.tP => k kb.
by rewrite mapiE //= initiE //= mapiE 1:/# initiE 1:/# /= asintK /#.
qed.

(**********************************)
(**********************************)
(**********************************)
(* The following lifts are needed
   to connect spec with security
   and correctness proofs         *)
(**********************************)
(**********************************)
(**********************************)

op sem_decode12(a : W8.t Array384.t) : ipoly.
op sem_decode4(a : W8.t Array128.t) : ipoly.
op sem_decode1(a : W8.t Array32.t) : ipoly.
op sem_encode12(a : ipoly) : W8.t Array384.t.
op sem_encode4(p : ipoly) : W8.t Array128.t.
op sem_encode1(a : ipoly) : W8.t Array32.t.
op sem_encode10_vec(u : ipolyvec) : W8.t Array960.t.
op sem_encode12_vec(a : ipolyvec) : W8.t Array1152.t.
op sem_decode10_vec(u : W8.t Array960.t) : ipolyvec.
op sem_decode12_vec(a : W8.t Array1152.t) : ipolyvec.

lemma sem_decode12K : cancel sem_decode12 sem_encode12 by admit. (* to do *)
lemma sem_encode12K : cancel sem_encode12 sem_decode12 by admit. (* to do *)
lemma sem_decode4K  : cancel sem_decode4  sem_encode4  by admit. (* to do *)
lemma sem_encode4K  : cancel sem_encode4  sem_decode4  by admit. (* to do *)
lemma sem_decode1K  : cancel sem_decode1  sem_encode1  by admit. (* to do *)
lemma sem_encode1K  : cancel sem_encode1  sem_decode1  by admit. (* to do *)
lemma sem_decode12_vecK  : cancel sem_decode12_vec  sem_encode12_vec  by admit. (* to do *)
lemma sem_encode12_vecK  : cancel sem_encode12_vec  sem_decode12_vec  by admit. (* to do *)
lemma sem_decode10_vecK  : cancel sem_decode10_vec  sem_encode10_vec  by admit. (* to do *)
lemma sem_encode10_vecK  : cancel sem_encode10_vec  sem_decode10_vec  by admit. (* to do *)

lemma sem_decode1_bnd a k : 0<=k<256 => 0<= (sem_decode1 a).[k] < 2 by admit. (* to do *)


phoare sem_decode12 a : [ EncDec.decode12 : arg = a ==>  res = sem_decode12 a ] = 1%r by admit. (* reify *)
phoare sem_decode4  a : [ EncDec.decode4  : arg = a ==>  res = sem_decode4  a ] = 1%r by admit. (* reify *)
phoare sem_decode1  a : [ EncDec.decode1  : arg = a ==>  res = sem_decode1  a ] = 1%r by admit. (* reify *)
phoare sem_encode12 a : [ EncDec.encode12 : arg = a ==>  res = sem_encode12 a ] = 1%r by admit. (* reify *)
phoare sem_encode4  a : [ EncDec.encode4  : arg = a ==>  res = sem_encode4  a ] = 1%r by admit. (* reify *)
phoare sem_encode1  a : [ EncDec.encode1  : arg = a ==>  res = sem_encode1  a ] = 1%r by admit. (* reify *)

phoare sem_decode12_vec a : [ EncDec.decode12_vec : arg = a ==> res = sem_decode12_vec a ] = 1%r by admit. (* reify *)
phoare sem_decode10_vec a : [ EncDec.decode10_vec : arg = a ==> res = sem_decode10_vec a ] = 1%r by admit. (* reify *)
phoare sem_encode12_vec a : [ EncDec.encode12_vec : arg = a ==> res = sem_encode12_vec a ] = 1%r by admit. (* reify *)
phoare sem_encode10_vec a : [ EncDec.encode10_vec : arg = a ==> res = sem_encode10_vec a ] = 1%r by admit. (* reify *)

(**************************************************************************
   MLWE_PKE is the theory where we prove an abstract PKE construction
   that matches the algebraic basis of Kyber. This theory clones MLWE
   to get the hard problem definitions, and so it gets a bunch of 
   theories and RO clones. The relevant one is RO_SMP.

   It also independently clones PKE_Ext as PKE_, but it already fixes
   the underlying RO to MLWE_.RO_SMP, so all we need to fix is RO_SMP in 
   the MWLW_.RO_SMP. 

   This clone gives us the security proofs for the algebraic version
   of KyberPKE. To get proofs for Kyber spec, we just need to explain
   how the Kyber spec functionally maps to this algebraic version
   and then derive the properties as corollaries.
***************************************************************************)
require import MLWE_PKE.

theory SpecProperties.

import KMatrix.

clone import KyberSpec. (* We get a generic RO that we can later refine *)

import KyberPKE.

type pkey = W8.t Array1152.t * W8.t Array32.t.
type skey = W8.t Array1152.t.  

op pk_encode(pk : vector * W8.t Array32.t) : pkey = 
                                  (sem_encode12_vec (toipolyvec (nttv pk.`1)) ,pk.`2).
op pk_decode(pk : pkey) = (invnttv (ofipolyvec (sem_decode12_vec (pk.`1))),pk.`2).
op sk_encode(sk : vector) : skey = sem_encode12_vec (toipolyvec (nttv sk)).
op sk_decode(sk : skey) =  invnttv (ofipolyvec (sem_decode12_vec sk)).
op m_encode(m : plaintext) : poly = decompress_poly 1 (sem_decode1 m).
op m_decode(p : poly) : plaintext = sem_encode1 (compress_poly 1 p). 
op c_encode(c :  vector * poly) : ciphertext = 
      (sem_encode10_vec (compress_polyvec 10 c.`1), sem_encode4 (compress_poly 4 c.`2)).
op c_decode(c : ciphertext) =
      (decompress_polyvec 10 (sem_decode10_vec c.`1), decompress_poly 4 (sem_decode4 c.`2)).
op rnd_err_v = compress_poly_err 4. 
op rnd_err_u = mapv (compress_poly_err 10). 

op max_noise = q %/ 4.

op pe_R = pe^256.
op pv = pe_R^(kvec).
op pm = pe_R^(kvec^2).

op under_noise_bound (p : poly) (b : int) =
     all (fun cc => `| as_sint cc| < b) p.

op cv_bound : int = 104. (* this is the compress error bound for d = 4 *)

clone import MLWE_PKE as MLWEPKE with 
  theory MLWE_.MLWE_SMP.RO_SMP <- RO,
  type MLWE_.Matrix_.R = poly,
  type MLWE_.Matrix_.Matrix.matrix <- matrix,
  type MLWE_.Matrix_.vector <- vector,
  type MLWE_.Matrix_.ZR.t <- poly,
  pred MLWE_.Matrix_.ZR.unit <- KMatrix.ZR.unit,
  op MLWE_.Matrix_.ZR.(+) <- KPoly.(&+),
  op MLWE_.Matrix_.ZR.([-]) <- KPoly.(&-),
  op MLWE_.Matrix_.ZR.zeror <- KPoly.zero,
  op MLWE_.Matrix_.ZR.oner <- KPoly.one,
  op MLWE_.Matrix_.ZR.( * ) <- KPoly.(&*),
  op MLWE_.Matrix_.ZR.invr <- KPoly.invr,
  op MLWE_.Matrix_.size <- kvec,
  op MLWE_.Matrix_.Vector.(+) <- KMatrix.Vector.(+),
  op MLWE_.Matrix_.Vector.dotp <- dotp,
  op MLWE_.Matrix_.Vector.prevector <- prevector,
  op MLWE_.Matrix_.Vector.vclamp <- vclamp,
  op MLWE_.Matrix_.Vector.tofunv <- tofunv,
  op MLWE_.Matrix_.Vector.offunv <- offunv,
  op MLWE_.Matrix_.Matrix.prematrix <- prematrix,
  op MLWE_.Matrix_.Matrix.mclamp <- mclamp,
  op MLWE_.Matrix_.Matrix.tofunm <- tofunm,
  op MLWE_.Matrix_.Matrix.offunm <- offunm,
  op MLWE_.duni_R <- duni_R,
  op MLWE_.dshort_R <- dshort_R,
  type MLWE_.seed <- W8.t Array32.t ,
  op MLWE_.dseed <- srand,
  type pkey <- pkey,
  type skey <- skey,
  op pk_encode <- pk_encode,
  op sk_encode <- sk_encode,
  op pk_decode <- pk_decode,
  op sk_decode <- sk_decode,
  type plaintext <- plaintext,
  type ciphertext <- ciphertext,
  op m_encode <- m_encode,
  op m_decode <- m_decode,
  op c_encode <- c_encode,
  op c_decode <- c_decode,  
  op rnd_err_v <- rnd_err_v,
  op rnd_err_u <- rnd_err_u,
  op under_noise_bound <- under_noise_bound,
  op max_noise <- max_noise,
  op cv_bound <- cv_bound
  proof MLWE_.dseed_ll by (apply srand_ll)
  proof MLWE_.dshort_R_ll  by apply dshort_R_ll
  proof MLWE_.duni_R_ll by apply duni_R_ll
  proof MLWE_.duni_R_fu by apply duni_R_fu
  proof MLWE_.Matrix_.ge0_size by smt()
  proof MLWE_.Matrix_.ZR.addrA by apply KMatrix.ZR.addrA
  proof MLWE_.Matrix_.ZR.addrC by apply KMatrix.ZR.addrC
  proof MLWE_.Matrix_.ZR.add0r by apply KMatrix.ZR.add0r
  proof MLWE_.Matrix_.ZR.addNr by apply KMatrix.ZR.addNr
  proof MLWE_.Matrix_.ZR.oner_neq0 by apply KMatrix.ZR.oner_neq0
  proof MLWE_.Matrix_.ZR.mulrA by apply KMatrix.ZR.mulrA
  proof MLWE_.Matrix_.ZR.mulrC by apply KMatrix.ZR.mulrC
  proof MLWE_.Matrix_.ZR.mul1r by apply KMatrix.ZR.mul1r
  proof MLWE_.Matrix_.ZR.mulrDl by apply KMatrix.ZR.mulrDl
  proof MLWE_.Matrix_.ZR.mulVr by apply KMatrix.ZR.mulVr
  proof MLWE_.Matrix_.ZR.unitP by apply KMatrix.ZR.unitP
  proof MLWE_.Matrix_.ZR.unitout by apply KMatrix.ZR.unitout
  proof MLWE_.Matrix_.ZR.mulf_eq0 by apply KMatrix.ZR.mulf_eq0
  proof MLWE_.Matrix_.Vector.tofunv_prevector by apply tofunv_prevector
  proof MLWE_.Matrix_.Vector.tofunvK by apply tofunvK
  proof MLWE_.Matrix_.Vector.offunvK by apply offunvK
  proof MLWE_.Matrix_.Matrix.tofunm_prematrix by apply tofunm_prematrix
  proof MLWE_.Matrix_.Matrix.tofunmK by apply tofunmK
  proof MLWE_.Matrix_.Matrix.offunmK by apply offunmK
  proof MLWE_.duni_R_uni by apply duni_R_uni
  proof pk_encodeK
  proof sk_encodeK
  proof encode_noise
  proof good_decode
  proof cv_bound_valid
  proof noise_commutes.


realize pk_encodeK.
rewrite /pk_decode /pk_encode /cancel /= => x.
by rewrite sem_encode12_vecK toipolyvecK invnttvK /#.
qed.

realize sk_encodeK.
rewrite /sk_decode /sk_encode /cancel /= => x.
rewrite sem_encode12_vecK toipolyvecK invnttvK /#.
qed.

realize encode_noise.
move => /> u v.
rewrite /c_decode /c_encode /rnd_err_u /rnd_err_v /= sem_encode10_vecK sem_encode4K => />.
split; last  by rewrite round_poly_errE.
rewrite /(+) /mapv /=.
apply eq_vectorP => /> i il ih; rewrite !offunvE 1,2:/# /=.
rewrite Vector.offunvE 1:/# /= /compress_poly_err /=.
apply Array256.tP => k kb.
rewrite /compress_polyvec /= /fromarray256 /= /KPoly.(&+) /=.
rewrite mapiE // map2E //= initiE //= initiE //= mapiE //= 1:/# initiE 1:/# /=. 
rewrite decompress_errE //; 1: smt(qE).
by rewrite mapiE /#.
qed.

realize good_decode. 
rewrite /under_noise_bound /m_encode /m_decode /compress_poly 
        /decompress_poly /max_noise /as_sint qE  /= => m n.
rewrite allP  => /=  hgood.
have : sem_decode1 (sem_encode1 (map (compress 1) (map (decompress 1) (sem_decode1 m) &+ n))) = 
       (sem_decode1 m); last by smt(sem_decode1K).
apply Array256.ext_eq => /> x h0x hx256. 
rewrite sem_encode1K /(&+) mapiE 1:/# map2E /= initiE /= 1:/# mapiE 1:/#.
rewrite b_decode_sem /b_decode /= -decompress_alt_decompress // /decompress_alt /= qE /=.
rewrite /as_sint  Zq.addE  qE Zq.inFqK qE => />.
move : (hgood x _) => //; rewrite /(`|_|)%Int /= => hgoodx.
by rewrite /(`|_|)%Int; smt(sem_decode1_bnd).
qed.

realize cv_bound_valid.
admitted. (* Rounding upper bound for one coefficient: compute in EC? *)

realize noise_commutes.
move => n n' b H H0.
move : H H0; rewrite /under_noise_bound.
rewrite !allP.
move => Hn Hnp i ib.
move : (Hn i ib). 
move : (Hnp i ib) => /=. 
rewrite /as_sint /KPoly.(&+) /= map2E !initiE //= Zq.addE qE /=  !StdOrder.IntOrder.ltr_norml /= => Hni Hnpi.
by smt().
qed.

(* We now specify the various components used by Kyber spec so that 
   we can relate it to the abstract construction. The differences
   are only in the sampling procedures. *)
import MLWE_.MLWE_SMP.

module (KSampler(XOF : XOF_t) : Sampler) (O : RO.POracle)  = {
    proc sampleA(sd : W8.t Array32.t) : matrix = { 
     var i,j,c;
     var a : matrix;
     a <- witness;
     i <- 0;
     while (i < kvec) {
        j <- 0;
        while (j < kvec) {
           XOF(O).init(sd,W8.of_int j,W8.of_int i);
           c <@ Parse(XOF,O).sample();
           a.[(i,j)] <- c;
           j <- j + 1;
        }
        i <- i + 1;
     }
     return a;      
    }

    proc sampleAT(sd : W8.t Array32.t) : matrix = { 
     var i,j,c;
     var a : matrix;
     a <- witness;
     i <- 0;
     while (i < kvec) {
        j <- 0;
        while (j < kvec) {
           XOF(O).init(sd,W8.of_int i,W8.of_int j);
           c <@ Parse(XOF,O).sample();
           a.[(i,j)] <- c;
           j <- j + 1;
        }
        i <- i + 1;
     }
     return a;      
    }

}.

lemma KSamplerA_ll (XOF <: XOF_t) (O <: RO.POracle) :
   (islossless O.o) =>
   (forall (O0 <: RO.POracle), islossless O0.o => islossless XOF(O0).init) =>
   (forall (O0 <: RO.POracle), islossless O0.o => islossless XOF(O0).next_bytes) =>
   (forall (O0 <: RO.POracle) (XOF0 <: XOF_t), 
         islossless O0.o => 
         islossless XOF0(O0).next_bytes => 
         islossless Parse(XOF0,O0).sample) =>
   islossless KSampler(XOF,O).sampleA.
proof. 
move => O_ll XOF_init_ll XOF_next_ll Parse_ll.
proc.
while(0 <= i <= kvec) (kvec-i); last by move => *;auto => /> /#.
move => *; wp.
while(#post /\ 0 <= j <= kvec) (kvec-j); last by move => *;auto => /> /#.
move => *; wp.
call (Parse_ll O XOF).
+ apply (XOF_next_ll O).
apply (O_ll).
conseq (_: ==> true); 1: by smt().
call (XOF_init_ll O).
by auto => />.
qed.

lemma KSamplerAT_ll (XOF <: XOF_t) (O <: RO.POracle) :
   (islossless O.o) =>
   (forall (O0 <: RO.POracle), islossless O0.o => islossless XOF(O0).init) =>
   (forall (O0 <: RO.POracle), islossless O0.o => islossless XOF(O0).next_bytes) =>
   (forall (O0 <: RO.POracle) (XOF0 <: XOF_t), 
         islossless O0.o => islossless XOF0(O0).next_bytes => 
         islossless Parse(XOF0,O0).sample) =>
         islossless KSampler(XOF,O).sampleAT.
proof. 
move => O_ll XOF_init_ll XOF_next_ll Parse_ll.
proc.
while(0 <= i <= kvec) (kvec-i); last by move => *;auto => /> /#.
move => *; wp.
while(#post /\ 0 <= j <= kvec) (kvec-j); last by move => *;auto => /> /#.
move => *; wp.
call (Parse_ll O XOF).
+ apply (XOF_next_ll O).
apply (O_ll).
conseq (_: ==> true); 1: by smt().
call (XOF_init_ll O).
by auto => />.
qed.


(*************************************
We define a version of Kyber spec that
uses external samplers. This is useful for 
syntactic reasons in the following proof
steps.
*************************************)

module type NoiseSampler(PRF1 : PRF_.PseudoRF, PRF2 : PRF_.PseudoRF) = {
  proc sample2(noiseseed:W8.t Array32.t) : vector * vector
  proc sample3(noiseseed:W8.t Array32.t) : vector * vector * poly
}.


module (KNS : NoiseSampler) (PRF1 : PRF_.PseudoRF, PRF2 : PRF_.PseudoRF) = {
  proc sample2(noiseseed:W8.t Array32.t) : vector * vector = {
    var noise1, noise2, _N,i,c;
    noise1 <- witness;                     
    noise2 <- witness;                      
    _N <- 0;                      
    i <- 0;                             
    while (i < kvec) {                 
      c <@ CBD2(PRF1).sample(noiseseed,_N);
      noise1 <- set noise1 i c;                   
      _N <- _N + 1;                     
     i <- i + 1;                       
    }                                  
    i <- 0;                             
    while (i < kvec) {                 
      c <@ CBD2(PRF1).sample(noiseseed,_N);
      noise2 <- set noise2 i c;                   
      _N <- _N + 1;                     
      i <- i + 1;                       
    }                                  

    return (noise1,noise2);
  }

   proc sample3(noiseseed:W8.t Array32.t) : vector * vector * poly = {
     var e2,noise1, noise2, _N,i,c;
     noise1 <- witness;                     
     noise2 <- witness;                      
     _N <- 0;                      
     i <- 0;                             
     while (i < kvec) {                 
       c <@ CBD2(PRF2).sample(noiseseed,_N);
       noise1 <- set noise1 i c;                   
       _N <- _N + 1;                     
      i <- i + 1;                       
     }                                  
     i <- 0;                             
     while (i < kvec) {                 
       c <@ CBD2(PRF2).sample(noiseseed,_N);
      noise2 <- set noise2 i c;                   
      _N <- _N + 1;                     
      i <- i + 1;                       
     }                                  
     e2 <@ CBD2(PRF2).sample(noiseseed,_N);
     return (noise1,noise2, e2);
  }
}.

module KyberS(HS : HSF.PseudoRF, S : Sampler, NS : NoiseSampler, PRF1 : PRF_.PseudoRF, PRF2 : PRF_.PseudoRF, O : RO.POracle) : Scheme = {

  (* Spec gives a derandomized enc that matches this code *)
  proc kg_derand(rho sig: W8.t Array32.t) : pkey * skey = {
     var t;
     var tv,sv : W8.t Array1152.t;
     var a : matrix;
     var s,e : vector;
     e <- witness;
     s <- witness;
     sv <- witness;
     tv <- witness;
     a <@ S(O).sampleA(rho);     
     (s,e) <@ NS(PRF1,PRF2).sample2(sig);
     s <- nttv s;
     e <- nttv e; 
     t <- ntt_mmul a s + e;
     tv <@ EncDec.encode12_vec(toipolyvec t); (* minimum residues *)
     sv <@ EncDec.encode12_vec(toipolyvec s); (* minimum residues *)
     return ((tv,rho),sv);
  }

  proc kg() : pkey * skey = {
     var s,rho,sig,kp;
     s <@ HS.keygen();
     (rho,sig) <@ G(HS).sample(s);
     kp <@ kg_derand(rho,sig);
     return kp;
  }

  (* Spec gives a derandomized enc that matches this code *)
  proc enc_derand(pk : pkey, m : plaintext, r : W8.t Array32.t) : ciphertext = {
      var tv,rho,rv,e1,e2,rhat,u,v,mp,c2,thati;
      var that : vector;
      var aT : matrix;
      var c1 : W8.t Array960.t;
      aT <- witness;
      c1 <- witness;
      e1 <- witness;
      rv <- witness;
      that <- witness;
      (tv,rho) <- pk;
      thati <@ EncDec.decode12_vec(tv); 
      that <- ofipolyvec thati;
      aT <@ S(O).sampleAT(rho);    
      (rv,e1,e2) <@ NS(PRF1,PRF2).sample3(r);
      rhat <- nttv rv;
      u <- invnttv (ntt_mmul aT rhat) + e1;
      mp <@ EncDec.decode1(m);
      v <- invntt (ntt_dotp that rhat) &+ e2 &+ decompress_poly 1 mp; 
      c1 <@ EncDec.encode10_vec(compress_polyvec 10 u); 
      c2 <@ EncDec.encode4(compress_poly 4 v);
      return (c1,c2);
  }

  proc enc(pk : pkey, m : plaintext) : ciphertext = {
     var r,c;
     r <@ PRF2.keygen();
     c <@ enc_derand(pk,m,r);
     return c;
  }

  proc dec(sk : skey, cph : ciphertext) : plaintext option = {
      var m,mp,ui,v,vi,si, c1, c2;
      var u,s : vector;
      u <- witness;
      s <- witness;
      (c1,c2) <- cph;
      ui <@ EncDec.decode10_vec(c1);
      u <- decompress_polyvec 10 ui;
      vi <@ EncDec.decode4(c2);
      v <- decompress_poly 4 vi;
      si <@ EncDec.decode12_vec(sk);
      s <- ofipolyvec si;
      mp <- v &+ ((&-) (invntt (ntt_dotp s (nttv u))));
      m <@ EncDec.encode1(compress_poly 1 mp);
      return Some m;
  }

}.

(* We have that instantiating S with KSampler we get the Spec *)
lemma kg_sampler_kg (O <: RO.POracle) (XOF <: XOF_t {-O}) :
  equiv [   KyberS(KHS,KSampler(XOF),KNS,KPRF,KPRF,O).kg ~ Kyber(KHS,XOF,KPRF,O).kg : 
     ={arg} /\ ={glob O, glob XOF} ==> ={res, glob O, glob XOF}].
proc;inline*. swap{1} 24 -8. swap{2} [4..5] 12.
seq 18 13: (#pre /\ sig1{1} = sig{2} /\ rho1{1} = rho{2}  /\ 
            a0{1} = a{2} /\ _N{1} = _N{2} /\ sd{1} = rho{2}); 1: by  auto.
by sim => />; wp; sim />.
qed.

lemma enc_sampler_enc (O <: RO.POracle)  (XOF <: XOF_t {-O}):
 equiv [
   KyberS(KHS,KSampler(XOF),KNS,KPRF,KPRF,O).enc ~ Kyber(KHS,XOF,KPRF,O).enc : 
    ={arg} /\ ={glob O, glob XOF} ==> ={res, glob O, glob XOF}].
proc. 
inline {1} 2; inline {2} 2. 
swap {2} 11 4. swap {2} [7..8] 6. swap{2} 5 5.
seq 12 9: (#pre /\ ={that, r0, m, m0, rho}); 1: by inline *; sim.
by inline *;sim />; wp; sim =>/> /#.
qed.

lemma enc_sampler_dec (O <: RO.POracle)  (XOF <: XOF_t) :
  equiv [ KyberS(KHS,KSampler(XOF),KNS,KPRF,KPRF,O).dec ~ Kyber(KHS,XOF,KPRF,O).dec : 
     ={arg} /\ ={glob O} ==> ={res} ] by proc;inline *;sim => /#.

(*******************************************************************)
(*    Entropy Smoothing and PRF hops  for Security                 *)
(*******************************************************************)


op [lossless funiform] dsmooth : W8.t Array64.t distr.
clone import HS_DEFS.RF as IdealHSF with
   op dR = fun (_: unit) => dsmooth
   proof dR_ll by smt(dsmooth_ll).

op [lossless funiform] dnbytes : W8.t Array128.t distr.
clone import PRF_DEFS.RF as IdealPRF1 with
   op dR = fun (_: W8.t) => dnbytes
   proof dR_ll by smt(dnbytes_ll).

clone import PRF_DEFS.RF as IdealPRF2 with
   op dR = fun (_: W8.t) => dnbytes
   proof dR_ll by smt(dnbytes_ll).

module DummyHS_D(F : HS_DEFS.PRF_Oracles) = {
   proc keygen() : W8.t Array32.t = { return witness;}
   proc f(inp : W8.t Array32.t * unit) : W8.t Array64.t = { var out; out <@ F.f(); return out; }
}.

module DummyHS(F : HS_DEFS.PRF_Oracles) = {
   proc keygen() : W8.t Array32.t = { IdealHSF.RF.m <- SmtMap.empty; return witness;}
   proc f(inp : W8.t Array32.t * unit) : W8.t Array64.t = { var out; out <@ F.f(); return out; }
}.

module (D_ES(S : Sampler, O : RO.Oracle, As : KyberPKE.AdversaryRO) : HS_DEFS.Distinguisher) (F : HS_DEFS.PRF_Oracles)  = {

    proc distinguish() : bool = {
       var b;
       b <@ KyberPKE.CPAGameROM(KyberPKE.CPA,KyberS(DummyHS_D(F),S,KNS,KPRF,KPRF),As,O).main();
       return b;
    } 
}.

module KyberSIdeal(HS : HSF.PseudoRF, S : Sampler, NS : NoiseSampler, PRF1 : PRF_.PseudoRF, PRF2 : PRF_.PseudoRF, O : RO.POracle) : Scheme = {

  include KyberS(HS,S,NS,PRF1,PRF2,O) [-kg]

  proc kg() : pkey * skey = {
     var s,rho,sig,kp;
     s <@ HS.keygen();
     rho <$ srand;
     sig <@ PRF1.keygen();
     kp <@ kg_derand(rho,sig);
     return kp;
  }

}.

module DummyPRF1D(F : PRF_DEFS.PRF_Oracles) = {
   proc keygen() : W8.t Array32.t = { return witness;}
   proc f(inp : W8.t Array32.t * W8.t) : W8.t Array128.t = { var out; out <@ F.f(inp.`2); return out; }
}.

module DummyPRF1(F : PRF_DEFS.PRF_Oracles) = {
   proc keygen() : W8.t Array32.t = { IdealPRF1.RF.m <- SmtMap.empty; return witness;}
   proc f(inp : W8.t Array32.t * W8.t) : W8.t Array128.t = { var out; out <@ F.f(inp.`2); return out; }
}.

module (D_PRF1(S : Sampler, O : RO.Oracle, As : KyberPKE.AdversaryRO) : PRF_DEFS.Distinguisher) (F : PRF_DEFS.PRF_Oracles)  = {

    proc distinguish() : bool = {
       var b;
       b <@ KyberPKE.CPAGameROM(KyberPKE.CPA,KyberSIdeal(DummyHS(IdealHSF.RF),S,KNS,DummyPRF1(F),KPRF),As,O).main();
       return b;
    } 
}.

module DummyPRF2D(F : PRF_DEFS.PRF_Oracles) = {
   proc keygen() : W8.t Array32.t = { return witness;}
   proc f(inp : W8.t Array32.t * W8.t) : W8.t Array128.t = { var out; out <@ F.f(inp.`2); return out; }
}.

module DummyPRF2(F : PRF_DEFS.PRF_Oracles) = {
   proc keygen() : W8.t Array32.t = { IdealPRF2.RF.m <- SmtMap.empty; return witness;}
   proc f(inp : W8.t Array32.t * W8.t) : W8.t Array128.t = { var out; out <@ F.f(inp.`2); return out; }
}.

module (D_PRF2(S : Sampler, O : RO.Oracle, As : KyberPKE.AdversaryRO) : PRF_DEFS.Distinguisher) (F : PRF_DEFS.PRF_Oracles)  = {

    proc distinguish() : bool = {
       var b;
       b <@ KyberPKE.CPAGameROM(KyberPKE.CPA,KyberSIdeal(DummyHS(IdealHSF.RF),S,KNS,DummyPRF1(IdealPRF1.RF),DummyPRF2D(F)),As,O).main();
       return b;
    } 
}.

section.

declare module O <: RO.Oracle {-IdealPRF2.RF, -IdealPRF1.RF, -PRF_.PRF, -IdealHSF.RF, -KPRF, -B1ROM, -B2ROM, -HSF.PRF}.
declare module S <: Sampler {-IdealPRF2.RF, -IdealPRF1.RF, -PRF_.PRF, -IdealHSF.RF, -KPRF, -O, -B1ROM, -B2ROM}.
declare module As <: KyberPKE.AdversaryRO {-IdealPRF2.RF, -IdealPRF1.RF, -PRF_.PRF, -IdealHSF.RF, -HSF.PRF, -O, -S, -KPRF, -B1ROM, -B2ROM}.

lemma ESHop &m :
  Pr [ KyberPKE.CPAGameROM(KyberPKE.CPA,KyberS(KHS,S,KNS,KPRF,KPRF),As,O).main() @ &m : res] -
  Pr [ KyberPKE.CPAGameROM(KyberPKE.CPA,KyberS(DummyHS(IdealHSF.RF),S,KNS,KPRF,KPRF),As,O).main() @ &m : res] = 
  Pr [ HS_DEFS.IND(HSF.PRF,D_ES(S,O,As)).main() @ &m : res ] - 
  Pr [ HS_DEFS.IND(IdealHSF.RF,D_ES(S,O,As)).main() @ &m : res ].
proof.
have -> : Pr[CPAGameROM(CPA, KyberS(KHS, S, KNS, KPRF,KPRF), As, O).main() @ &m : res]  = 
          Pr[HS_DEFS.IND(HSF.PRF, D_ES(S, O, As)).main() @ &m : res] .
+ byequiv => //.
  proc. 
  inline {1} 2; inline {2} 2. inline {2} 2. inline {2} 3.
  wp; call(_: ={glob O}); 1: by sim.
  wp; call(_: ={glob O, glob S}); 1: by sim.
  rnd.
  wp; call(_: ={glob O}); 1: by sim.
  conseq (_: _ ==> ={pk, glob O,glob S}); 1: smt().
  swap {2} 2 -1.
  seq 1 1 : (={glob As, glob S, glob O}); 1: by sim.
  inline {1} 1. inline {1} 1. inline {2} 2. inline {2} 1.
  seq 3 3 : (#pre /\ ={rho,sig}); 1: by inline *; sim.
  by sim.

+ have -> : 
    Pr[CPAGameROM(CPA, KyberS(DummyHS(IdealHSF.RF), S, KNS, KPRF, KPRF), As, O).main() @ &m : res] = 
    Pr[HS_DEFS.IND(IdealHSF.RF, D_ES(S, O, As)).main() @ &m : res].
+ byequiv => //.
  proc. 
  inline {1} 2; inline {2} 2. inline {2} 2. inline {2} 3.
  wp; call(_: ={glob O}); 1: by sim.
  wp; call(_: ={glob O, glob S}); 1: by sim.
  rnd.
  wp; call(_: ={glob O}); 1: by sim.
  conseq (_: _ ==> ={pk, glob O,glob S}); 1: smt().
  swap {2} 2 -1.
  seq 1 1 : (={glob As, glob S, glob O}); 1: by sim.
  inline {1} 1. inline {1} 1. inline {2} 2. inline {2} 1.
  seq 3 3 : (#pre /\ ={rho,sig}). 
  + inline *; sim.
  by sim.
done.
qed.

module ArraySample = {
   proc sL() = { 
       var r,rho,k;
       r <$ IdealHSF.dR (); 
       rho <- Array32.init (fun (i : int) => r.[i]); 
       k <- Array32.init (fun (i : int) => r.[i+32]); 
       return (rho,k);
  }

   proc sR() = { 
       var rho,k;
       rho <$ srand; 
       k <$ srand; 
       return (rho,k);
  }
}.

require import DProd.
clone  ProdSampling with
  type t1 <- W8.t Array32.t,
  type t2 <- W8.t Array32.t.
  
lemma KyberS_KyberIdeal &m :
  Pr [ KyberPKE.CPAGameROM(KyberPKE.CPA,KyberS(DummyHS(IdealHSF.RF),S,KNS,KPRF,KPRF),As,O).main() @ &m : res] =
  Pr [ KyberPKE.CPAGameROM(KyberPKE.CPA,KyberSIdeal(DummyHS(IdealHSF.RF),S,KNS,KPRF,KPRF),As,O).main() @ &m : res].
proof.
byequiv => //.
proc. 
  inline {1} 2; inline {2} 2. 
  wp; call(_: ={glob O}); 1: by sim.
  wp; call(_: ={glob O, glob S}); 1: by sim.
  rnd.
  wp; call(_: ={glob O}); 1: by sim.
  conseq (_: _ ==> ={pk, glob O,glob S}); 1: smt().
  seq 1 1 : (={glob As, glob S, glob O}); 1: by sim.
  inline {1} 1. inline {2} 1. 
  wp; call(_: ={glob O, glob S}); 1: by sim.
  conseq => />.
  inline *.
  rcondt{1} 6; 1: by move => *; auto => />;smt(@SmtMap).
  seq {1} 5 2 : (true); 1: by auto.
  wp.
  conseq (_: _ ==> rho{2} = Array32.init (fun i => r{1}.[i]) /\ 
                   k{2} = Array32.init (fun i => r{1}.[i+32]));
  admit. (* Product of distributions *)
  (*
  transitivity {2} { (rho,k) <@ ProdSampling.S.sample2(srand,srand); }
                   (true ==> rho{2} = Array32.init (fun i =>  r{1}.[i]) /\
                             k{2} = Array32.init (fun i =>  r{1}.[i+32]))
                   (true ==> ={rho,k}) => //; last first.
  + by inline *;wp;rnd;rnd;auto => />.
  transitivity {2} { (rho,k) <@ ProdSampling.S.sample(srand,srand); }
                   (true ==> rho{2} = Array32.init (fun i =>  r{1}.[i]) /\
                             k{2} = Array32.init (fun i =>  r{1}.[i+32]))
                   (true ==> ={rho,k}) => //; last first.
  + by call ProdSampling.sample_sample2 => />.
  inline *; wp; rnd (fun r => (Array32.init (fun i => r.[i]), Array32.init (fun i => r.[i+32])))%Array64
      (fun (rhok : (W8.t Array32.t) * (W8.t Array32.t)) => 
            (Array64.init (fun i => if 0<=i<32 then rhok.`1.[i] else rhok.`2.[i-32])))%Array32.
  auto => /> &1; split. 
  + move => rhok ?; have -> /= : rhok = (rhok.`1,rhok.`2) by smt().
    rewrite !Array32.tP; split.
    + by move => i ib; rewrite initiE //= initiE; smt().
    move => i ib; rewrite initiE //= initiE //=; by smt(). 
  move => H; split.   + ad mit. (* commented out *)
  move => H1 r ?; split.
  + ad mit. (* commented out *)
  move => ?; rewrite tP => i ib.
  rewrite initiE //=.
  case (0<=i<32).
  + by move => ibb; rewrite !initiE //=.
  by move => ibb; rewrite !initiE /#.
  *)
qed.


lemma PRFHop1 &m :
  Pr [ KyberPKE.CPAGameROM(KyberPKE.CPA,KyberSIdeal(DummyHS(IdealHSF.RF),S,KNS,KPRF,KPRF),As,O).main() @ &m : res] -
  Pr [ KyberPKE.CPAGameROM(KyberPKE.CPA,KyberSIdeal(DummyHS(IdealHSF.RF),S,KNS,DummyPRF1(IdealPRF1.RF),KPRF),As,O).main() @ &m : res] = 
  Pr [ PRF_DEFS.IND(PRF_.PRF,D_PRF1(S,O,As)).main() @ &m : res ] - 
  Pr [ PRF_DEFS.IND(IdealPRF1.RF,D_PRF1(S,O,As)).main() @ &m : res ].
proof.
have -> : Pr[CPAGameROM(CPA, KyberSIdeal(DummyHS(IdealHSF.RF), S, KNS, KPRF, KPRF), As, O).main() @ &m : res] = 
          Pr[PRF_DEFS.IND(PRF_.PRF, D_PRF1(S, O, As)).main() @ &m : res].
+ byequiv => //.
  proc. 
  inline {1} 2; inline {2} 2. inline {2} 2. inline {2} 3.
  wp; call(_: ={glob O}); 1: by sim.
  wp; call(_: ={glob O, glob S}); 1: by sim.
  rnd.
  wp; call(_: ={glob O}); 1: by sim.
  conseq (_: _ ==> ={pk, glob O,glob S}); 1: smt().
  swap {2} 2 -1.
  seq 1 1 : (={glob As, glob S, glob O}); 1: by sim.
  inline {1} 1. inline {2} 2. 
  swap {2} [2..3] -1.
  seq 2 2 : (#pre /\ ={glob IdealHSF.RF, rho}). 
  + by inline *; sim.
  seq 1 2 : (#pre /\ sig{1} = PRF_.PRF.k{2});1: by inline *; auto => />.
  inline {1} 1; inline {2} 1.
  sim 8 8.
  seq 7 7 : (#pre /\ ={a,rho0} /\ sig0{1} = PRF_.PRF.k{2}); 1: by  sim. 
  conseq => />.
  inline {1} 1; inline {2} 1. 
  inline *. 
  unroll for {1} 8.
  unroll for {2} 8.
  do 3!( wp; conseq => />; sim).
  wp;auto => />;sim.
  unroll for {1} 6.
  unroll for {2} 6.
  do 3!( wp; conseq => />; sim).
  by wp;auto => />;sim.

have -> : Pr[CPAGameROM(CPA, KyberSIdeal(DummyHS(IdealHSF.RF), S, KNS, DummyPRF1(IdealPRF1.RF), KPRF), As, O).main() @ &m : res] = 
          Pr[PRF_DEFS.IND(IdealPRF1.RF, D_PRF1(S, O, As)).main() @ &m : res].
+ byequiv => //.
  proc. 
  inline {1} 2; inline {2} 2. inline {2} 2. inline {2} 3.
  wp; call(_: ={glob O}); 1: by sim.
  wp; call(_: ={glob O, glob S}); 1: by sim.
  rnd.
  wp; call(_: ={glob O}); 1: by sim.
  conseq (_: _ ==> ={pk, glob O,glob S}); 1: smt().
  swap {2} 2 -1.
  seq 1 1 : (={glob As, glob S, glob O}); 1: by sim.
  inline {1} 1. inline {2} 2. 
  swap {2} [2..3] -1.
  seq 2 2 : (#pre /\ ={glob IdealHSF.RF, rho}). 
  + by inline *; sim.
  seq 1 2 : (#pre /\ ={glob IdealPRF1.RF,sig});1: by inline *; auto => />.
  by inline *;sim.
done.
qed.

lemma PRFHop2 &m :
  Pr [ KyberPKE.CPAGameROM(KyberPKE.CPA,KyberSIdeal(DummyHS(IdealHSF.RF),S,KNS,DummyPRF1(IdealPRF1.RF),KPRF),As,O).main() @ &m : res] -
  Pr [ KyberPKE.CPAGameROM(KyberPKE.CPA,KyberSIdeal(DummyHS(IdealHSF.RF),S,KNS,DummyPRF1(IdealPRF1.RF),DummyPRF2(IdealPRF2.RF)),As,O).main() @ &m : res] = 
  Pr [ PRF_DEFS.IND(PRF_.PRF,D_PRF2(S,O,As)).main() @ &m : res ] - 
  Pr [ PRF_DEFS.IND(IdealPRF2.RF,D_PRF2(S,O,As)).main() @ &m : res ].
proof.
have -> : Pr[CPAGameROM(CPA, KyberSIdeal(DummyHS(IdealHSF.RF), S, KNS, DummyPRF1(IdealPRF1.RF), KPRF), As, O).main() @ &m : res] = 
          Pr[PRF_DEFS.IND(PRF_.PRF, D_PRF2(S, O, As)).main() @ &m : res].
+ byequiv => //.
  proc. 
  inline {1} 2; inline {2} 2. inline {2} 2. inline {2} 3.
  wp; call(_: ={glob O}); 1: by sim.
  swap {2} 1 4.
  seq 4 4 : (={glob S, glob As, glob O,pk,sk,m0,m1} /\ b0{1} = b2{2}).
  rnd.
  wp; call(_: ={glob O}); 1: by sim.
  wp; call(_: ={glob O, glob S}); 1: by sim.
  by inline *; auto => />; sim. 
  conseq (_: _ ==> ={c, glob O,glob S}); 1: smt().
  inline {1} 1. inline {2} 2. 
  swap {2} [2..3] -1; sp 2 2.
  seq 1 2 : (#pre /\ r{1} = PRF_.PRF.k{2});1: by inline *; auto => />.
  inline {1} 1; inline {2} 1.
  sim 13 13.
  seq 12 12 : (={that, m2, aT, glob S, glob O}  /\ r0{1} = PRF_.PRF.k{2}); 1: by  sim. 
  conseq => />.
  inline {1} 1; inline {2} 1. 
  inline *. 
  wp;auto => />;sim.
  unroll for {1} 8.
  unroll for {2} 8.
  do 3!( wp; conseq => />; sim).
  wp;auto => />;sim.
  unroll for {1} 6.
  unroll for {2} 6.
  do 3!( wp; conseq => />; sim).
  by wp;auto => />;sim.

have -> : Pr[CPAGameROM(CPA, KyberSIdeal(DummyHS(IdealHSF.RF), S, KNS, DummyPRF1(IdealPRF1.RF), DummyPRF2(RF)), As, O).main
   () @ &m : res] = 
          Pr[PRF_DEFS.IND(RF, D_PRF2(S, O, As)).main() @ &m : res].
+ byequiv => //.
  proc. 
  inline {1} 2; inline {2} 2. inline {2} 2. inline {2} 3.
  wp; call(_: ={glob O}); 1: by sim.
  swap {2} 1 4.
  seq 4 4 : (={glob S, glob As, glob O,pk,sk,m0,m1} /\ b0{1} = b2{2}).
  rnd.
  wp; call(_: ={glob O}); 1: by sim.
  wp; call(_: ={glob O, glob S}); 1: by sim.
  by inline *; auto => />; sim. 
  conseq (_: _ ==> ={c, glob O,glob S}); 1: smt().
  inline {1} 1. inline {2} 2. 
  swap {2} [2..3] -1; sp 2 2.
  seq 1 2 : (#pre /\ ={glob IdealPRF2.RF,r});1: by inline *; auto => />.
  by inline *;sim => /> /#.
done.
qed.


end section.

(*******************************************************************)
(* At this point we get some nice equivalences                     *)
(*******************************************************************)

module KyberSI(S : Sampler, O : RO.POracle) = KyberSIdeal(DummyHS(IdealHSF.RF),S,KNS,DummyPRF1(IdealPRF1.RF),DummyPRF2(IdealPRF2.RF), O).

module (NTTSampler(S : Sampler) : Sampler) (O : RO.POracle) = {
    proc sampleA(sd : W8.t Array32.t) : matrix = { 
        var a;
        a <@ S(O).sampleA(sd);
        return invnttm a;
    }

    proc sampleAT(sd : W8.t Array32.t) : matrix = { 
        var a;
        a <@ S(O).sampleAT(sd);
        return invnttm a;
    }

}.

section.

declare module O <: RO.Oracle {-IdealHSF.RF,-RF,-IdealPRF1.RF}.
declare module S <: Sampler {-IdealHSF.RF,-RF, -O, -IdealPRF1.RF}.

equiv keygen_eq : 
  MLWE_PKE(NTTSampler(S,O), O).kg ~ KyberSI(S,O).kg :
   ={glob S, glob O} ==> ={res,glob S, glob O}.
proof.
proc.
inline {2} 4.
wp;ecall{2}(sem_encode12_vec (toipolyvec s0{2})).
wp;ecall{2}(sem_encode12_vec (toipolyvec t{2})).
swap {1} 4 -2.
swap {2} 2 -1. swap {2} 4 -2. swap {2} 10 -7.
seq 2 3 : (#pre /\ nttm _A{1} = a{2} /\ sd{1} = rho0{2}).
+ inline {1} 2; wp; call(_: ={glob O}); 1: by sim.
  by auto => />; smt(nttmK).
swap {2} [2..3] 4.
seq 0 5 : #pre; 1: by inline *;auto.
wp; conseq (_: _ ==> ={e} /\ s{1} = s0{2} /\ sd{1} = rho0{2} /\ nttm _A{1} = a{2}); 
  last first.
+ conseq (_: true ==> ={e} /\ s{1} = s0{2}); 1: smt(). 
  inline {2} 3.
  admit. (* randomness product *)
auto => /> &1 &2 e s; rewrite /pk_encode /sk_encode /=.
by rewrite comm_nttv_add comm_nttv_mmul.
qed.

equiv enc_eq : 
  MLWE_PKE(NTTSampler(S,O), O).enc ~ KyberSI(S,O).enc :
   ={arg,glob S, glob O} ==> ={res,glob S, glob O}.
proof.
  proc.
  inline {2} 2.
  wp;ecall{2}(sem_encode4 (compress_poly 4 v{2})).
  wp;ecall{2}(sem_encode10_vec (compress_polyvec 10 u{2})).
  wp;ecall{2}(sem_decode1 (m0{2})).
  swap {1} [2..4] -1.
  swap {2} [7..8] -6.
  swap {2} 14 -7.
  swap {2} [6..7] -2.
  seq 3 5 : (#pre /\ ={e1,e2} /\ r{1} = rv{2}).
  admit. (* product of randomness *)
  conseq />; 1: smt().
  inline {1} 2.
  swap {2} 3 -2. swap {2} 6 -3. swap {2} 9 -5.
  seq 4 4 : (#pre /\ tv{2} = pk{1}.`1 /\ t{1} = (pk_decode pk{2}).`1 /\ nttm _A{1} = aT{2}).
  +  wp; call(_: ={glob O}); 1: by sim.
     by auto => />; smt(nttmK).
  wp;ecall{2}(sem_decode12_vec (tv{2})).
  auto => /> &1 &2; rewrite /pk_decode /c_encode /m_encode /=.  
  split; 1: by rewrite -comm_nttv_mmul invnttvK.
  congr. congr. congr. congr.
  by rewrite comm_ntt_dotp.
qed.
 
equiv dec_eq : 
  MLWE_PKE(NTTSampler(S,O), O).dec ~ KyberSI(S,O).dec :
   ={arg,glob S, glob O} ==> ={res,glob S, glob O}.
proof.
  proc.
  ecall{2} (sem_encode1 (compress_poly 1 mp{2})).
  wp;ecall{2} (sem_decode12_vec (sk{2})).
  wp;ecall{2} (sem_decode4 (c2{2})).
  wp;ecall{2} (sem_decode10_vec (c1{2})).
  auto => /> &2.
  rewrite /m_decode /sk_decode /c_decode /=.
  congr. congr. congr. 
  by rewrite comm_ntt_dotp.
qed.

end section.

(***************************************)

section.

declare module O <: RO.Oracle {-IdealHSF.RF,-IdealPRF1.RF,-RF,-KPRF, -B1ROM, -B2ROM}.
declare module S <: Sampler {-IdealHSF.RF,-IdealPRF1.RF, -RF, -KPRF, -O, -B1ROM, -B2ROM}.
declare module As <: KyberPKE.AdversaryRO {-IdealPRF1.RF,-IdealHSF.RF,-RF,-O, -S, -KPRF, -B1ROM, -B2ROM}.

lemma security_any_sampler &m :  
  islossless O.init =>
  islossless O.o =>
  (forall (O0 <: RO.Oracle), islossless O0.o => islossless S(O0).sampleA) =>
  (forall (O0 <: RO.Oracle), islossless O0.o => islossless S(O0).sampleAT) =>
  (forall (O0 <: RO.Oracle), islossless O0.o => islossless As(O0).guess) =>
  (forall (O0 <: RO.Oracle), islossless O0.o => islossless As(O0).choose) =>
  Pr[ KyberPKE.CPAGameROM(KyberPKE.CPA,KyberSI(S),As,O).main() @ &m : res] - 1%r/2%r = 
  Pr[MLWE_SMP(B1ROM(As, NTTSampler(S)), NTTSampler(S), O).main(false, false) @ &m : res] -
 Pr[MLWE_SMP(B1ROM(As, NTTSampler(S)), NTTSampler(S), O).main(false, true) @ &m : res] +
 Pr[MLWE_SMP(B2ROM(As, NTTSampler(S)), NTTSampler(S), O).main(true, false) @ &m : res] -
 Pr[MLWE_SMP(B2ROM(As, NTTSampler(S)), NTTSampler(S), O).main(true, true) @ &m : res].
move => H H0 H1 H2 H3 H4.
have  <- : 
    Pr[ PKE_.CPAGameROM(PKE_.CPA,MLWE_PKE(NTTSampler(S,O)),As,O).main() @ &m : res] =
    Pr[ KyberPKE.CPAGameROM(KyberPKE.CPA,KyberSI(S),As,O).main() @ &m : res]; last first.
+ apply (main_theorem_s O (NTTSampler(S)) As &m  H H0 _ _ H3 H4).
  + by move => O0 HH; islossless; apply (H1 O0 HH).
  by move => O0 HH; islossless; apply (H2 O0 HH). 
byequiv => //.
proc.
inline {1} 2.
inline {2} 2.
wp;call(_: ={glob O}); 1: by sim.
call (enc_eq O S).
rnd.
call(_: ={glob O}); 1: by sim.
call (keygen_eq O S).
by conseq />; sim.
qed.

end section.

section.



declare module O <: RO.Oracle {-IdealPRF2.RF,-PRF_.PRF,-HSF.PRF,-IdealHSF.RF,-IdealPRF1.RF,-RF,-KPRF, -B1ROM, -B2ROM}.
declare module XOF <: XOF_t {-IdealPRF2.RF,-PRF_.PRF,-HSF.PRF,-IdealHSF.RF,-IdealPRF1.RF,-RF,-KPRF, -O, -B1ROM, -B2ROM}.
declare module As <: KyberPKE.AdversaryRO {-IdealPRF2.RF,-PRF_.PRF,-HSF.PRF,-IdealHSF.RF,-IdealPRF1.RF,-RF,-O, -XOF, -KPRF, -B1ROM, -B2ROM}.

(* This theorem yields security for any sampler and we can use
   it to obtain security for the implementation in the standard 
   model under the assumption that MLWE is secure when the matrix
   is sampled how the implementation does it. 
   We can't get any formal correctness bounds though, since
   the distribution of the matrix is not well defined. *)
lemma security_spec &m :  
  islossless O.init =>
  islossless O.o =>
  (forall (O0 <: RO.POracle), islossless O0.o => islossless XOF(O0).init) =>
  (forall (O0 <: RO.POracle), islossless O0.o => islossless XOF(O0).next_bytes) =>

   (forall (O0 <: RO.POracle) (XOF0 <: XOF_t), 
         islossless O0.o => 
         islossless XOF0(O0).next_bytes => 
         islossless Parse(XOF0,O0).sample) =>

  (forall (O0 <: RO.Oracle), islossless O0.o => islossless As(O0).guess) =>
  (forall (O0 <: RO.Oracle), islossless O0.o => islossless As(O0).choose) =>

  Pr[ KyberPKE.CPAGameROM(KyberPKE.CPA,Kyber(KHS,XOF,KPRF),As,O).main() @ &m : res] - 1%r/2%r = 
  (Pr [ HS_DEFS.IND(HSF.PRF,D_ES(KSampler(XOF),O,As)).main() @ &m : res ] - 
  Pr [ HS_DEFS.IND(IdealHSF.RF,D_ES(KSampler(XOF),O,As)).main() @ &m : res ]) +
  (Pr [ PRF_DEFS.IND(PRF_.PRF,D_PRF1(KSampler(XOF),O,As)).main() @ &m : res ] - 
  Pr [ PRF_DEFS.IND(IdealPRF1.RF,D_PRF1(KSampler(XOF),O,As)).main() @ &m : res ]) +
  (Pr [ PRF_DEFS.IND(PRF_.PRF,D_PRF2(KSampler(XOF),O,As)).main() @ &m : res ] - 
  Pr [ PRF_DEFS.IND(IdealPRF2.RF,D_PRF2(KSampler(XOF),O,As)).main() @ &m : res ]) +
  (Pr[MLWE_SMP(B1ROM(As, NTTSampler(KSampler(XOF))),  NTTSampler(KSampler(XOF)), O).main(false, false) @ &m : res] -
 Pr[MLWE_SMP(B1ROM(As,  NTTSampler(KSampler(XOF))),  NTTSampler(KSampler(XOF)), O).main(false, true) @ &m : res] +
 Pr[MLWE_SMP(B2ROM(As,  NTTSampler(KSampler(XOF))),  NTTSampler(KSampler(XOF)), O).main(true, false) @ &m : res] -
 Pr[MLWE_SMP(B2ROM(As,  NTTSampler(KSampler(XOF))),  NTTSampler(KSampler(XOF)), O).main(true, true) @ &m : res]).
move => Oill Ooll XOF_init_ll XOF_next_ll Parse_ll Asgll Ascll.
have <- : Pr[ KyberPKE.CPAGameROM(KyberPKE.CPA,KyberS(KHS,KSampler(XOF),KNS,KPRF,KPRF),As,O).main() @ &m : res]= 
          Pr[ KyberPKE.CPAGameROM(KyberPKE.CPA,Kyber(KHS,XOF,KPRF),As,O).main() @ &m : res].
+ byequiv => //.
  proc; inline {1} 2; inline {2} 2.
  wp; call(_: ={glob O, glob XOF}); 1: by sim.
  call (enc_sampler_enc O XOF).
  rnd.
  wp; call(_: ={glob O, glob XOF}); 1: by sim.
  call (kg_sampler_kg O XOF).
  by call(_: true); auto => />. 

have <- := (security_any_sampler O (KSampler(XOF)) As &m Oill Ooll  _ _ Asgll Ascll).
  + by move => O O_ll; apply (KSamplerA_ll XOF O O_ll XOF_init_ll XOF_next_ll Parse_ll).
  by move => O O_ll; apply (KSamplerAT_ll XOF O O_ll XOF_init_ll XOF_next_ll Parse_ll).

have <- := (ESHop O (KSampler(XOF)) As).
have <- := (PRFHop1 O (KSampler(XOF)) As).
have <- := (PRFHop2 O (KSampler(XOF)) As).
have <- := (KyberS_KyberIdeal O (KSampler(XOF)) As).
have <-: Pr[CPAGameROM(CPA, KyberSI(KSampler(XOF)), As, O).main() @ &m : res] = 
         Pr[CPAGameROM(CPA, KyberSIdeal(DummyHS(IdealHSF.RF), KSampler(XOF), KNS, DummyPRF1(IdealPRF1.RF), DummyPRF2(RF)), As, O).main
   () @ &m : res] by byequiv => //=; proc; sim.
by ring.
qed.

end section.

import MLWE_.SMP_vs_ROM_IND.

import MLWE_.MLWE_ROM.MLWE_vs_MLWE_ROM.
import MLWE_.MLWE_ROM.
import MLWE_.

(* This theorem yields security for any sampler that can be
   proved indifferentiable from the RO that samples uniform 
   matrices down to standard MLWE. *)

section.

module O = MLWE_.MLWE_ROM.RO_H.Lazy.LRO.
module OS =RO.Lazy.LRO.

declare module As <: KyberPKE.AdversaryRO {-IdealPRF1.RF,-IdealHSF.RF,-RF,-O, -OS, -KPRF, -B1ROM, -B2ROM, -B,-Bt, -BS, -D, -LazyEager.ERO}.
declare module S <: Sampler {-IdealPRF1.RF,-IdealHSF.RF,-RF,-As, -B1ROM, -B2ROM, -OS, -O, -B,-Bt, -BS, -D, -LazyEager.ERO}.
declare module Sim <: Simulator_t {-IdealPRF1.RF,-IdealHSF.RF,-S,-As,-B1ROM, -B2ROM, -OS, -O, -B,-Bt, -BS, -D, -LazyEager.ERO}.

lemma security_any_sampler_indiff &m :  
  (forall (x : RO.in_t), is_lossless (RO.dout x)) => 
  (forall (O <: RO.Oracle), islossless O.o => islossless S(O).sampleA) =>
  (forall (O <: RO.Oracle), islossless O.o => islossless S(O).sampleAT) =>
  (forall (O <: RO.Oracle), islossless O.o => islossless As(O).guess) =>
  (forall (O <: RO.Oracle), islossless O.o => islossless As(O).choose) =>

  (forall tr b (D0 <: Distinguisher_t {-S,-Sim,-O,-OS}),
     Pr[ WIndfReal(D0,NTTSampler(S),OS).main(tr,b) @ &m : res] = 
     Pr[ WIndfIdeal(D0,Sim,O).main(tr,b) @ &m : res]) =>

  Pr[ KyberPKE.CPAGameROM(KyberPKE.CPA,KyberSI(S),As,OS).main() @ &m : res] - 1%r/2%r = 
    Pr[MLWE(B(BS(B1ROM(As,NTTSampler(S)),Sim),RO_H.Lazy.LRO)).main(false) @ &m : res] -
       Pr[MLWE(B(BS(B1ROM(As,NTTSampler(S)),Sim),RO_H.Lazy.LRO)).main(true) @ &m : res] + 
    Pr[MLWE(Bt(BS(B2ROM(As,NTTSampler(S)),Sim),RO_H.Lazy.LRO)).main(false) @ &m : res]-
       Pr[MLWE(Bt(BS(B2ROM(As,NTTSampler(S)),Sim),RO_H.Lazy.LRO)).main(true) @ &m : res].
move => H H0 H1 H2 H3 H4.
have  <- : 
    Pr[ PKE_.CPAGameROM(PKE_.CPA,MLWE_PKE(NTTSampler(S,OS)),As,OS).main() @ &m : res] =
    Pr[ KyberPKE.CPAGameROM(KyberPKE.CPA,KyberSI(S),As,OS).main() @ &m : res].
+ byequiv => //.
  proc.
  inline {1} 2.
  inline {2} 2.
  wp;call(_: ={glob OS}); 1: by sim.
  call (enc_eq OS S).
  rnd.
  call(_: ={glob OS}); 1: by sim.
  call (keygen_eq OS S).
  by conseq />; sim.

apply (main_theorem_ref As (NTTSampler(S)) Sim &m  H _ _ H2 H3 H4).
+ by move => O0 HH; islossless; apply (H0 O0 HH).
by move => O0 HH; islossless; apply (H1 O0 HH).
qed.

end section.

(* The following theorem is the strongest claim we can make
   about the Kyber Spec. It comes with two assumptions on the
   matrix sampling procedure:
   1) that it converges (losslessness of Parse)
      there is some hope of proving this when XOF is a ROM.
   2) that it is indifferentiable (explainable) wrt to the
      random oracle that simply samples uniform matrices.
      this basically means that there must exist a simulator
      that can produce a plausible XOF output for any 
      given Matrix. Easy to claim in paper when XOF is a ROM: 
      just rejection-sample a different matrix and program 
      the coefficients with the ones you want to explain. 
      No clue how to prove this in EC though.
      But note that, in this case we get security down
      to MLWE. *)

section.

declare module As <: KyberPKE.AdversaryRO {-IdealPRF2.RF,-PRF_.PRF,-HSF.PRF,-IdealHSF.RF,-IdealPRF1.RF,-O, -OS, -KPRF, -B1ROM, -B2ROM, -B,-Bt, -BS, -D, -LazyEager.ERO}.
declare module XOF <: XOF_t {-IdealPRF2.RF,-PRF_.PRF,-HSF.PRF,-IdealHSF.RF,-IdealPRF1.RF,-As, -B1ROM, -B2ROM, -OS, -O, -B,-Bt, -BS, -D, -LazyEager.ERO}.
declare module Sim <: Simulator_t {-IdealPRF2.RF,-PRF_.PRF,-HSF.PRF,-IdealHSF.RF,-IdealPRF1.RF,-XOF,-As,-B1ROM, -B2ROM, -OS, -O, -B,-Bt, -BS, -D, -LazyEager.ERO}.

lemma security_spec_indiff &m :  
  (forall (x : RO.in_t), is_lossless (RO.dout x)) => 

  (forall (O0 <: RO.POracle), islossless O0.o => islossless XOF(O0).init) =>
  (forall (O0 <: RO.POracle), islossless O0.o => islossless XOF(O0).next_bytes) =>

   (forall (O0 <: RO.POracle) (XOF0 <: XOF_t), 
         islossless O0.o => 
         islossless XOF0(O0).next_bytes => 
         islossless Parse(XOF0,O0).sample) =>

  (forall (O0 <: RO.Oracle), islossless O0.o => islossless As(O0).guess) =>
  (forall (O0 <: RO.Oracle), islossless O0.o => islossless As(O0).choose) =>

  (forall tr b (D0 <: Distinguisher_t {-KSampler(XOF),-Sim,-O,-OS}),
     Pr[ WIndfReal(D0,NTTSampler(KSampler(XOF)),OS).main(tr,b) @ &m : res] = 
     Pr[ WIndfIdeal(D0,Sim,O).main(tr,b) @ &m : res]) =>


  Pr[ KyberPKE.CPAGameROM(KyberPKE.CPA,Kyber(KHS,XOF,KPRF),As,OS).main() @ &m : res] - 1%r/2%r = 
  (Pr [ HS_DEFS.IND(HSF.PRF,D_ES(KSampler(XOF),OS,As)).main() @ &m : res ] - 
  Pr [ HS_DEFS.IND(IdealHSF.RF,D_ES(KSampler(XOF),OS,As)).main() @ &m : res ]) +
  (Pr [ PRF_DEFS.IND(PRF_.PRF,D_PRF1(KSampler(XOF),OS,As)).main() @ &m : res ] - 
  Pr [ PRF_DEFS.IND(IdealPRF1.RF,D_PRF1(KSampler(XOF),OS,As)).main() @ &m : res ]) +
  (Pr [ PRF_DEFS.IND(PRF_.PRF,D_PRF2(KSampler(XOF),OS,As)).main() @ &m : res ] - 
  Pr [ PRF_DEFS.IND(IdealPRF2.RF,D_PRF2(KSampler(XOF),OS,As)).main() @ &m : res ]) +
  (Pr[MLWE(B(BS(B1ROM(As,NTTSampler(KSampler(XOF))),Sim),RO_H.Lazy.LRO)).main(false) @ &m : res] -
       Pr[MLWE(B(BS(B1ROM(As,NTTSampler(KSampler(XOF))),Sim),RO_H.Lazy.LRO)).main(true) @ &m : res] + 
    Pr[MLWE(Bt(BS(B2ROM(As,NTTSampler(KSampler(XOF))),Sim),RO_H.Lazy.LRO)).main(false) @ &m : res]-
       Pr[MLWE(Bt(BS(B2ROM(As,NTTSampler(KSampler(XOF))),Sim),RO_H.Lazy.LRO)).main(true) @ &m : res]).

move => Oill XOF_init_ll XOF_next_ll Parse_ll Asgll Ascll ind.
have <- : Pr[ KyberPKE.CPAGameROM(KyberPKE.CPA,KyberS(KHS,KSampler(XOF),KNS,KPRF,KPRF),As,OS).main() @ &m : res]= 
          Pr[ KyberPKE.CPAGameROM(KyberPKE.CPA,Kyber(KHS,XOF,KPRF),As,OS).main() @ &m : res].
+ byequiv => //.
  proc; inline {1} 2; inline {2} 2.
  wp; call(_: ={glob OS, glob XOF}); 1: by sim.
  call (enc_sampler_enc OS XOF).
  rnd.
  wp; call(_: ={glob OS, glob XOF}); 1: by sim.
  call (kg_sampler_kg OS XOF).
  by inline *; auto.

+ have <- := (security_any_sampler_indiff  As (KSampler(XOF)) Sim  &m Oill _ _ Asgll Ascll ind).
  + by move => O O_ll; apply (KSamplerA_ll XOF O O_ll XOF_init_ll XOF_next_ll Parse_ll).
  by move => O O_ll; apply (KSamplerAT_ll XOF O O_ll XOF_init_ll XOF_next_ll Parse_ll).

have <- := (ESHop OS (KSampler(XOF)) As).
have <- := (PRFHop1 OS (KSampler(XOF)) As).
have <- := (PRFHop2 OS (KSampler(XOF)) As).
have <- := (KyberS_KyberIdeal OS (KSampler(XOF)) As).
have <-: Pr[CPAGameROM(CPA, KyberSI(KSampler(XOF)), As, OS).main() @ &m : res] = 
         Pr[CPAGameROM(CPA, KyberSIdeal(DummyHS(IdealHSF.RF), KSampler(XOF), KNS, DummyPRF1(IdealPRF1.RF), DummyPRF2(RF)), As, OS).main
   () @ &m : res] by byequiv => //=; proc; sim.
by ring.
qed.


end section.

(* The correctness bounds can only be computed when matrices are
   uniform, so we jump directly to results where one can assume
   that the sampler is indifferentiable from the nice RO.
   Note here we are working with the scheme with ideal HS and
   PRFs. *)

section.

declare module A <: CAdversaryRO {-IdealPRF1.RF,-IdealHSF.RF,-O,-OS}.
declare module S <: Sampler {-IdealPRF1.RF,-IdealHSF.RF,-A,-O,-OS}.
declare module Sim <: Simulator_t {-IdealPRF1.RF,-IdealHSF.RF,-S, -A,-O,-OS}.


lemma correctness_any_sampler &m epsilon_hack fail_prob :
  (forall (O <: RO_H.POracle), islossless O.o => islossless Sim(O).o) =>
  (forall (O <: RO.POracle), islossless O.o => islossless A(O).find) =>

  (forall trb (D0 <: Distinguisher_t {-S,-Sim,-SMP_vs_ROM_IND.O,-SMP_vs_ROM_IND.OS}),
     Pr[ WIndfReal(D0,NTTSampler(S),OS).main(trb) @ &m : res] = 
     Pr[ WIndfIdeal(D0,Sim,O).main(trb) @ &m : res]) =>

(* This jump is assumed to introduce no slack in the
   Kyber proposal. 
   We need to figure out how to bound it. *)
  `| Pr[CorrectnessNoiseApprox.main() @ &m : res] - 
     Pr[CorrectnessBound.main() @ &m : res] | <= epsilon_hack =>
(* The following failure probability can be bounded as
in the Python script for Kyber *)   
  Pr[ CorrectnessBound.main() @ &m : res] <= fail_prob =>
  Pr[ KyberPKE.CorrectnessAdvROM(KyberSI(S),A,OS).main() @ &m : res]  >=
  1%r - fail_prob - epsilon_hack.
move => Sim_ll A_ll ind eh nb.
have <- : 
Pr[PKE_.CGameROM(PKE_.CorrectnessAdv, MLWE_PKE(NTTSampler(S,RO.Lazy.LRO)), A, RO.Lazy.LRO).main() @ &m : res] = 
Pr[CorrectnessAdvROM(KyberSI(S), A, OS).main() @ &m : res]; 
   last by apply (correctness_bound A (NTTSampler(S)) Sim &m epsilon_hack fail_prob Sim_ll A_ll ind eh nb).
byequiv => //.
proc.
inline {1} 2; inline {2} 2.
wp;call (dec_eq (RO.Lazy.LRO) S).
wp;call (enc_eq (RO.Lazy.LRO) S).
call(_: ={glob S, glob OS}); 1: by sim.
wp;call (keygen_eq (RO.Lazy.LRO) S).
by conseq => />; sim.
qed. 

end section.

(* For the full spec we get the following result, which does 
   not require losslessness, but does require indifferentiability. 
   However we must first game hop to the ideal scheme. *)

module (DC_ES(S : Sampler, O : RO.Oracle, Ac : KyberPKE.CAdversaryRO) : HS_DEFS.Distinguisher) (F : HS_DEFS.PRF_Oracles)  = {

    proc distinguish() : bool = {
       var b;
       b <@ KyberPKE.CorrectnessAdvROM(KyberS(DummyHS_D(F),S,KNS,KPRF,KPRF),Ac,O).main();
       return b;
    } 
}.

module (DC_PRF1(S : Sampler, O : RO.Oracle, Ac : KyberPKE.CAdversaryRO) : PRF_DEFS.Distinguisher) (F : PRF_DEFS.PRF_Oracles)  = {

    proc distinguish() : bool = {
       var b;
       b <@ KyberPKE.CorrectnessAdvROM(KyberSIdeal(DummyHS(IdealHSF.RF),S,KNS,DummyPRF1(F),KPRF),Ac,O).main();
       return b;
    } 
}.

module (DC_PRF2(S : Sampler, O : RO.Oracle, Ac : KyberPKE.CAdversaryRO) : PRF_DEFS.Distinguisher) (F : PRF_DEFS.PRF_Oracles)  = {

    proc distinguish() : bool = {
       var b;
       b <@ KyberPKE.CorrectnessAdvROM(KyberSIdeal(DummyHS(IdealHSF.RF),S,KNS,DummyPRF1(IdealPRF1.RF),DummyPRF2D(F)),Ac,O).main();
       return b;
    } 
}.

section.

declare module O <: RO.Oracle {-IdealPRF2.RF, -IdealPRF1.RF, -PRF_.PRF, -IdealHSF.RF, -KPRF, -B1ROM, -B2ROM, -HSF.PRF}.
declare module S <: Sampler {-IdealPRF2.RF, -IdealPRF1.RF, -PRF_.PRF, -IdealHSF.RF, -KPRF, -O, -B1ROM, -B2ROM}.
declare module Ac <: KyberPKE.CAdversaryRO {-IdealPRF2.RF, -IdealPRF1.RF, -PRF_.PRF, -IdealHSF.RF, -HSF.PRF, -O, -S, -KPRF, -B1ROM, -B2ROM}.

lemma ESHopC &m :
  Pr [ KyberPKE.CorrectnessAdvROM(KyberS(KHS,S,KNS,KPRF,KPRF),Ac,O).main() @ &m : res] -
  Pr [ KyberPKE.CorrectnessAdvROM(KyberS(DummyHS(IdealHSF.RF),S,KNS,KPRF,KPRF),Ac,O).main() @ &m : res] = 
  Pr [ HS_DEFS.IND(HSF.PRF,DC_ES(S,O,Ac)).main() @ &m : res ] - 
  Pr [ HS_DEFS.IND(IdealHSF.RF,DC_ES(S,O,Ac)).main() @ &m : res ].
proof.
have -> : Pr[CorrectnessAdvROM(KyberS(KHS, S, KNS, KPRF,KPRF), Ac, O).main() @ &m : res]  = 
          Pr[HS_DEFS.IND(HSF.PRF, DC_ES(S, O, Ac)).main() @ &m : res] .
+ byequiv => //.
  proc. 
  inline {1} 2; inline {2} 2. inline {2} 2. inline {2} 3.
  wp; call(_: ={glob O, glob S}); 1: by sim.
  wp; call(_: ={glob O, glob S}); 1: by sim.
  wp; call(_: ={glob O}); 1: by sim.
  conseq (_: _ ==> ={pk,sk, glob O,glob S}); 1: smt().
  swap {2} 2 -1.
  seq 1 1 : (={glob Ac, glob S, glob O}); 1: by sim.
  inline {1} 1. inline {1} 1. inline {2} 2. inline {2} 1.
  seq 3 3 : (#pre /\ ={rho,sig}); 1: by inline *; sim.
  by sim.

+ have -> : 
    Pr[CorrectnessAdvROM(KyberS(DummyHS(IdealHSF.RF), S, KNS, KPRF, KPRF), Ac, O).main() @ &m : res] = 
    Pr[HS_DEFS.IND(IdealHSF.RF, DC_ES(S, O, Ac)).main() @ &m : res].
+ byequiv => //.
  proc. 
  inline {1} 2; inline {2} 2. inline {2} 2. inline {2} 3.
  wp; call(_: ={glob O, glob S}); 1: by sim.
  wp; call(_: ={glob O, glob S}); 1: by sim.
  wp; call(_: ={glob O}); 1: by sim.
  conseq (_: _ ==> ={pk,sk, glob O,glob S}); 1: smt().
  swap {2} 2 -1.
  seq 1 1 : (={glob Ac, glob S, glob O}); 1: by sim.
  inline {1} 1. inline {1} 1. inline {2} 2. inline {2} 1.
  seq 3 3 : (#pre /\ ={rho,sig}); 1: by inline *; sim.
  by sim.
done.
qed.

lemma KyberS_KyberIdeal_C &m :
  Pr [ CorrectnessAdvROM(KyberS(DummyHS(IdealHSF.RF),S,KNS,KPRF,KPRF),Ac,O).main() @ &m : res] =
  Pr [ CorrectnessAdvROM(KyberSIdeal(DummyHS(IdealHSF.RF),S,KNS,KPRF,KPRF),Ac,O).main() @ &m : res].
proof.
byequiv => //.
proc. 
  inline {1} 2; inline {2} 2. 
  wp; call(_: ={glob O, glob S}); 1: by sim.
  wp; call(_: ={glob O, glob S}); 1: by sim.
  wp; call(_: ={glob O}); 1: by sim.
  conseq (_: _ ==> ={pk,sk, glob O,glob S}); 1: smt().
  seq 1 1 : (={glob Ac, glob S, glob O}); 1: by sim.
  inline {1} 1. inline {2} 1. 
  wp; call(_: ={glob O, glob S}); 1: by sim.
  conseq => />.
  inline *.
  rcondt{1} 6; 1: by move => *; auto => />;smt(@SmtMap).
  seq {1} 5 2 : (true); 1: by auto.
  wp.
  conseq (_: _ ==> rho{2} = Array32.init (fun i => r{1}.[i]) /\ 
                   k{2} = Array32.init (fun i => r{1}.[i+32]));
  1: by move => /> [#] &1 r; 
       rewrite !SmtMap.get_set_sameE !oget_some.
  admit. (* Product of distributions *)
  (*
  transitivity {2} { (rho,k) <@ ProdSampling.S.sample2(srand,srand); }
                   (true ==> rho{2} = Array32.init (fun i =>  r{1}.[i]) /\
                             k{2} = Array32.init (fun i =>  r{1}.[i+32]))
                   (true ==> ={rho,k}) => //; last first.
  + by inline *;wp;rnd;rnd;auto => />.
  transitivity {2} { (rho,k) <@ ProdSampling.S.sample(srand,srand); }
                   (true ==> rho{2} = Array32.init (fun i =>  r{1}.[i]) /\
                             k{2} = Array32.init (fun i =>  r{1}.[i+32]))
                   (true ==> ={rho,k}) => //; last first.
  + by call ProdSampling.sample_sample2 => />.
  inline *; wp; rnd (fun r => (Array32.init (fun i => r.[i]), Array32.init (fun i => r.[i+32])))%Array64
      (fun (rhok : (W8.t Array32.t) * (W8.t Array32.t)) => 
            (Array64.init (fun i => if 0<=i<32 then rhok.`1.[i] else rhok.`2.[i-32])))%Array32.
  auto => /> &1; split. 
  + move => rhok ?; have -> /= : rhok = (rhok.`1,rhok.`2) by smt().
    rewrite !Array32.tP; split.
    + by move => i ib; rewrite initiE //= initiE; smt().
    move => i ib; rewrite initiE //= initiE //=; by smt(). 
  move => H; split.   + ad mit. (* commented out *)
  move => H1 r ?; split.
  + ad mit. (* commented out *)
  move => ?; rewrite tP => i ib.
  rewrite initiE //=.
  case (0<=i<32).
  + by move => ibb; rewrite !initiE //=.
  by move => ibb; rewrite !initiE /#.
  *)
qed.

lemma PRFHop1C &m :
  Pr [ CorrectnessAdvROM(KyberSIdeal(DummyHS(IdealHSF.RF),S,KNS,KPRF,KPRF),Ac,O).main() @ &m : res] -
  Pr [ CorrectnessAdvROM(KyberSIdeal(DummyHS(IdealHSF.RF),S,KNS,DummyPRF1(IdealPRF1.RF),KPRF),Ac,O).main() @ &m : res] = 
  Pr [ PRF_DEFS.IND(PRF_.PRF,DC_PRF1(S,O,Ac)).main() @ &m : res ] - 
  Pr [ PRF_DEFS.IND(IdealPRF1.RF,DC_PRF1(S,O,Ac)).main() @ &m : res ].
proof.
have -> : Pr[CorrectnessAdvROM(KyberSIdeal(DummyHS(IdealHSF.RF), S, KNS, KPRF, KPRF), Ac, O).main() @ &m : res] = 
          Pr[PRF_DEFS.IND(PRF_.PRF, DC_PRF1(S, O, Ac)).main() @ &m : res].
+ byequiv => //.
  proc. 
  inline {1} 2; inline {2} 2. inline {2} 2. inline {2} 3.
  wp; call(_: ={glob O, glob S}); 1: by sim.
  wp; call(_: ={glob O, glob S}); 1: by sim.
  wp; call(_: ={glob O}); 1: by sim.
  conseq (_: _ ==> ={pk, sk,glob O,glob S}); 1: smt().
  swap {2} 2 -1.
  seq 1 1 : (={glob Ac, glob S, glob O}); 1: by sim.
  inline {1} 1. inline {2} 2. 
  swap {2} [2..3] -1.
  seq 2 2 : (#pre /\ ={glob IdealHSF.RF, rho}). 
  + by inline *; sim.
  seq 1 2 : (#pre /\ sig{1} = PRF_.PRF.k{2});1: by inline *; auto => />.
  inline {1} 1; inline {2} 1.
  sim 8 8.
  seq 7 7 : (#pre /\ ={a,rho0} /\ sig0{1} = PRF_.PRF.k{2}); 1: by  sim. 
  conseq => />.
  inline {1} 1; inline {2} 1. 
  inline *. 
  unroll for {1} 8.
  unroll for {2} 8.
  do 3!( wp; conseq => />; sim).
  wp;auto => />;sim.
  unroll for {1} 6.
  unroll for {2} 6.
  do 3!( wp; conseq => />; sim).
  by wp;auto => />;sim.

have -> : Pr[CorrectnessAdvROM(KyberSIdeal(DummyHS(IdealHSF.RF), S, KNS, DummyPRF1(IdealPRF1.RF), KPRF), Ac, O).main() @ &m : res] = 
          Pr[PRF_DEFS.IND(IdealPRF1.RF, DC_PRF1(S, O, Ac)).main() @ &m : res].
+ byequiv => //.
  proc. 
  inline {1} 2; inline {2} 2. inline {2} 2. inline {2} 3.
  wp; call(_: ={glob O, glob S}); 1: by sim.
  wp; call(_: ={glob O, glob S}); 1: by sim.
  wp; call(_: ={glob O}); 1: by sim.
  conseq (_: _ ==> ={pk, sk, glob O,glob S}); 1: smt().
  swap {2} 2 -1.
  seq 1 1 : (={glob Ac, glob S, glob O}); 1: by sim.
  inline {1} 1. inline {2} 2. 
  swap {2} [2..3] -1.
  seq 2 2 : (#pre /\ ={glob IdealHSF.RF, rho}). 
  + by inline *; sim.
  seq 1 2 : (#pre /\ ={glob IdealPRF1.RF,sig});1: by inline *; auto => />.
  by inline *;sim.
done.
qed.

lemma PRFHop2C &m :
  Pr [ CorrectnessAdvROM(KyberSIdeal(DummyHS(IdealHSF.RF),S,KNS,DummyPRF1(IdealPRF1.RF),KPRF),Ac,O).main() @ &m : res] -
  Pr [ CorrectnessAdvROM(KyberSIdeal(DummyHS(IdealHSF.RF),S,KNS,DummyPRF1(IdealPRF1.RF),DummyPRF2(IdealPRF2.RF)),Ac,O).main() @ &m : res] = 
  Pr [ PRF_DEFS.IND(PRF_.PRF,DC_PRF2(S,O,Ac)).main() @ &m : res ] - 
  Pr [ PRF_DEFS.IND(IdealPRF2.RF,DC_PRF2(S,O,Ac)).main() @ &m : res ].
proof.
have -> : Pr[CorrectnessAdvROM(KyberSIdeal(DummyHS(IdealHSF.RF), S, KNS, DummyPRF1(IdealPRF1.RF), KPRF), Ac, O).main() @ &m : res] = 
          Pr[PRF_DEFS.IND(PRF_.PRF, DC_PRF2(S, O, Ac)).main() @ &m : res].
+ byequiv => //.
  proc. 
  inline {1} 2; inline {2} 2. inline {2} 2. inline {2} 3.
  wp; call(_: ={glob O, glob S}); 1: by sim.
  swap {2} 1 3.
  seq 3 3 : (={glob S, glob Ac, glob O,pk,sk,m}).
  + wp; call(_: ={glob O}); 1: by sim.
    wp; call(_: ={glob O, glob S}); 1: by sim.
    by inline *; auto => />; sim. 
  conseq (_: _ ==> ={c, glob O,glob S}); 1: smt().
  inline {1} 1. inline {2} 2. 
  swap {2} [2..3] -1; sp 2 2.
  seq 1 2 : (#pre /\ r{1} = PRF_.PRF.k{2});1: by inline *; auto => />.
  inline {1} 1; inline {2} 1.
  sim 13 13.
  seq 12 12 : (={that, m1, aT, glob S, glob O}  /\ r0{1} = PRF_.PRF.k{2}); 1: by  sim. 
  conseq => />.
  inline {1} 1; inline {2} 1. 
  inline *. 
  wp;auto => />;sim.
  unroll for {1} 8.
  unroll for {2} 8.
  do 3!( wp; conseq => />; sim).
  wp;auto => />;sim.
  unroll for {1} 6.
  unroll for {2} 6.
  do 3!( wp; conseq => />; sim).
  by wp;auto => />;sim.

have -> : Pr[CorrectnessAdvROM(KyberSIdeal(DummyHS(IdealHSF.RF), S, KNS, DummyPRF1(IdealPRF1.RF), DummyPRF2(RF)), Ac, O).main
   () @ &m : res] = 
          Pr[PRF_DEFS.IND(RF, DC_PRF2(S, O, Ac)).main() @ &m : res].
+ byequiv => //.
  proc. 
  inline {1} 2; inline {2} 2. inline {2} 2. inline {2} 3.
  wp; call(_: ={glob O, glob S}); 1: by sim.
  swap {2} 1 3.
  seq 3 3 : (={glob S, glob Ac, glob O,pk,sk,m}).
  + wp; call(_: ={glob O}); 1: by sim.
    wp; call(_: ={glob O, glob S}); 1: by sim.
    by inline *; auto => />; sim. 
  conseq (_: _ ==> ={c, glob O,glob S}); 1: smt().
  inline {1} 1. inline {2} 2. 
  swap {2} [2..3] -1; sp 2 2.
  seq 1 2 : (#pre /\ ={glob IdealPRF2.RF,r});1: by inline *; auto => />.
  by inline *;sim => /> /#.
done.
qed.


end section.


section.



declare module A <: CAdversaryRO {-HSF.PRF, -PRF_.PRF, -B1ROM, -B2ROM, -KPRF, -RF,-IdealHSF.RF, -IdealPRF1.RF, -O,-OS}.
declare module XOF <: XOF_t {-HSF.PRF, -PRF_.PRF, -B1ROM, -B2ROM, -KPRF, -RF,-IdealHSF.RF, -IdealPRF1.RF, -A,-O,-OS}.
declare module Sim <: Simulator_t {-HSF.PRF, -PRF_.PRF, -B1ROM, -B2ROM, -KPRF, -RF,-IdealHSF.RF, -IdealPRF1.RF, -XOF, -A,-O,-OS}.


lemma correctness_spec &m epsilon_hack fail_prob :
  (forall (O <: RO_H.POracle), islossless O.o => islossless Sim(O).o) =>
  (forall (O <: RO.POracle), islossless O.o => islossless A(O).find) =>

  (forall trb (D0 <: Distinguisher_t {-KSampler(XOF),-Sim,-SMP_vs_ROM_IND.O,-SMP_vs_ROM_IND.OS}),
     Pr[ WIndfReal(D0,NTTSampler(KSampler(XOF)),OS).main(trb) @ &m : res] = 
     Pr[ WIndfIdeal(D0,Sim,O).main(trb) @ &m : res]) =>

(* This jump is assumed to introduce no slack in the
   Kyber proposal. 
   We need to figure out how to bound it. *)
  `| Pr[CorrectnessNoiseApprox.main() @ &m : res] - 
     Pr[CorrectnessBound.main() @ &m : res] | <= epsilon_hack =>
(* The following failure probability can be bounded as
in the Python script for Kyber *)   
  Pr[ CorrectnessBound.main() @ &m : res] <= fail_prob =>
  Pr[ KyberPKE.CorrectnessAdvROM(Kyber(KHS,XOF,KPRF),A,OS).main() @ &m : res]  >=
  1%r - fail_prob - epsilon_hack -
  (`|Pr [ HS_DEFS.IND(HSF.PRF,DC_ES(KSampler(XOF),OS,A)).main() @ &m : res ] - 
  Pr [ HS_DEFS.IND(IdealHSF.RF,DC_ES(KSampler(XOF),OS,A)).main() @ &m : res ]|) -
  (`|Pr [ PRF_DEFS.IND(PRF_.PRF,DC_PRF1(KSampler(XOF),OS,A)).main() @ &m : res ] - 
  Pr [ PRF_DEFS.IND(IdealPRF1.RF,DC_PRF1(KSampler(XOF),OS,A)).main() @ &m : res ]|) -
  (`|Pr [ PRF_DEFS.IND(PRF_.PRF,DC_PRF2(KSampler(XOF),OS,A)).main() @ &m : res ] - 
  Pr [ PRF_DEFS.IND(IdealPRF2.RF,DC_PRF2(KSampler(XOF),OS,A)).main() @ &m : res ]|).
move => Sim_ll A_ll ind eh fp.
have <-: Pr[CorrectnessAdvROM(KyberS(KHS, KSampler(XOF), KNS,KPRF,KPRF), A, OS).main() @ &m : res] = 
         Pr[CorrectnessAdvROM(Kyber(KHS, XOF, KPRF), A, OS).main() @ &m : res].
+ byequiv => //.
  proc. 
  inline {1} 2; inline {2} 2.
  wp; call(_: ={glob OS, glob XOF}); 1: by sim.
  call (enc_sampler_enc OS XOF).
  wp; call(_: ={glob OS}); 1: by sim.
  call (kg_sampler_kg OS XOF).
  by inline *; auto.

move : (correctness_any_sampler A (KSampler(XOF)) Sim &m epsilon_hack fail_prob Sim_ll A_ll ind eh fp).

have <- := (ESHopC OS (KSampler(XOF)) A).
have <- := (PRFHop1C OS (KSampler(XOF)) A).
have <- := (PRFHop2C OS (KSampler(XOF)) A).
have <- := (KyberS_KyberIdeal_C OS (KSampler(XOF)) A).
have <-: Pr[CorrectnessAdvROM(KyberSI(KSampler(XOF)), A, OS).main() @ &m : res] = 
         Pr[CorrectnessAdvROM(KyberSIdeal(DummyHS(IdealHSF.RF), KSampler(XOF), KNS, DummyPRF1(IdealPRF1.RF), DummyPRF2(RF)), A, OS).main
   () @ &m : res] by byequiv => //=; proc; sim.


by smt().
qed.

end section.

end SpecProperties.