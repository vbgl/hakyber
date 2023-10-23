require import AllCore Distr List Real SmtMap FSet DInterval FinType KEM_ROM.
require (****) PKE_ROM PlugAndPray Hybrid FelTactic. 

(* This will be the underlying scheme resulting 
   from the T transform, since we will need to
   assume some of the properties that it offers.. *)
require FO_TT.
clone import FO_TT as TT.
import PKE.

(* we inherit the following axioms 
dplaintext_ll: is_lossless dplaintext
 dplaintext_uni: is_uniform dplaintext
 dplaintext_fu: is_full dplaintext
 FinT.enum_spec: forall (x : plaintext), count (pred1 x) enum = 1
 kg_ll: is_lossless kg
 randd_ll: is_lossless randd
 ge0_qH: 0 <= qH
 ge0_qV: 0 <= qV
 ge0_qP: 0 <= qP
 ge0_qHC: 0 <= qHC *)

(* the type of KEM keys *)
type key.
op [lossless uniform full]dkey : key distr.

(*  A PRF *)

require PRF.
print PRF.
clone import PRF as J with
   type D <- ciphertext,
   type R <- key.
clone import RF with 
   op dR <- fun _ => dkey
   proof dR_ll by (move => *;apply dkey_ll)
   proof *.
(* we get the prf key type K from the next clone *)
clone import PseudoRF.
(**********)
clone import KEM_ROM.KEM_ROM_x2 as KEMROMx2 with
   type pkey <- pkey,
   type skey = (pkey * skey) * K,
   type ciphertext <- ciphertext,
   type key <- key,
   op dkey <- dkey,
   type RO1.in_t <- plaintext,
   type RO1.out_t <- randomness,
   op   RO1.dout <- fun _ => randd,
   type RO1.d_in_t <- unit, 
   type RO1.d_out_t <- bool,
   type RO2.in_t <- plaintext,
   type RO2.out_t <- key,
   op   RO2.dout <- fun _ => dkey,
   type RO2.d_in_t <- unit, 
   type RO2.d_out_t <- bool
   proof dkey_ll by apply dkey_ll
   proof dkey_uni by apply dkey_uni
   proof dkey_fu by apply dkey_fu
   proof *.

(******* Query Bounds ******)

(* Max number of calls to RO in attack on UU *)  
const qHU : { int | 0 <= qHU } as ge0_qHU. 
(* Maximum number of calls to Dec on TT *) 
const qD : { int | 0 <= qD } as ge0_qD.

(***************************************)

module (UU : KEMROMx2.Scheme) (H : POracle_x2) = {

  module HT : PKEROM.POracle = {
     proc get = H.get1
  }

  module HU = {
     proc get = H.get2
  }

  proc kg() : pkey * skey = {
     var pk, sk, k;
     (pk,sk) <$ kg;
     k <$ dK;
     return (pk, ((pk,sk),k));
  }
  
  proc enc(pk : pkey) : ciphertext * key = {
     var m, c, k;
     m <$ dplaintext;
     c <@TT(HT).enc(pk,m);
     k <@ HU.get(m);
     return (c,k);
  }
  
  proc dec(sk : skey, c : ciphertext) : key option = {
     var m', k;
     k <- witness;
     m' <@ TT(HT).dec(sk.`1,c);
     if (m' = None) {
        k <- F sk.`2 c;
     }
     else {
        k <@ HU.get(oget m');
     }
     return (Some k);
  }
}.


(* Correctness proof *)

module (B_UC : PKEROM.CORR_ADV)  (HT : PKEROM.POracle)= {
   proc find(pk : pkey, sk : PKEROM.skey) : plaintext = {
      var m;
      m <$ dplaintext;
      return m;
   }
}.

lemma correctness &m : 
   Pr [ KEMROMx2.Correctness(RO_x2(RO1.RO,RO2.RO),UU).main() @ &m : res ] <=
     Pr [ PKEROM.Correctness_Adv(PKEROM.RO.RO,TT,B_UC).main() @ &m : res ].
proof.
byequiv => //.
proc.
inline {1} 1; inline {1} 3; inline {1} 6. 
inline {2} 2;inline {2} 4.
seq 4 2 : ( KEMROMx2.RO1.RO.m{1} = PKEROM.RO.RO.m{2} /\ 
            pk0{1} = kpair{2}.`1 /\ 
            sk0{1} = kpair{2}.`2); 
      1: by inline *;rnd{1};rnd;auto;smt(dK_ll).
sp.
seq 1 1 : (#pre /\ m{1} = m0{2}); 1: by auto.
sp. 
seq 2 1 : (#pre /\ c0{1} = c{2} /\ m{1} \in KEMROMx2.RO2.RO.m{1} /\
         k1{1} = oget KEMROMx2.RO2.RO.m{1}.[m{1}]);1: 
   by inline *;wp;rnd{1};wp;auto;smt(mem_set).
inline {1} 2;sp.
seq 1 1 : (#pre /\ m'{1} = m'{2}); 
  1: by inline *;wp;conseq />;sim;auto => /#.
by inline *;if{1};inline *;auto => />;smt(get_setE).
qed.

(* Security proof *)

module CountCCAO (O : CCA_ORC) = {
  var c_cca : int
  var c_hu   : int
  var c_ht   : int
  proc init () = { c_ht <- 0; c_hu <- 0; c_cca <- 0;  }
 
  proc cca(c : ciphertext) : key option = {
    var k;    
    k <@ O.dec(c);
    c_cca <- c_cca + 1;
    return k;
  }
  
}.

module CountHx2(H : KEMROMx2.POracle_x2) = {
  proc get1(x:plaintext) = {
    var r;
    r <@ H.get1(x);
    CountCCAO.c_ht <- CountCCAO.c_ht + 1;
    return r;
  }  
  proc get2(x:plaintext) = {
    var r;
    r <@ H.get2(x);
    CountCCAO.c_hu <- CountCCAO.c_hu + 1;
    return r;
  }  
}.


(********************************************************)
(* We start with the PRF hop                        *)


module (UU1(PRFO : PRF_Oracles) : KEMROMx2.Scheme) (H : POracle_x2) = {
  include UU(H) [-kg,dec]

  proc kg() : pkey * skey = {
     var pk, sk;
     (pk,sk) <$ kg;
     return (pk, ((pk,sk),witness));
  }

  proc dec(sk : skey, c : ciphertext) : key option = {
     var m', k;
     k <- witness;
     m' <@ TT(UU(H).HT).dec(sk.`1,c);
     if (m' = None) {
        k <@ PRFO.f(c);
     }
     else {
        k <@ UU(H).HU.get(oget m');
     }
     return (Some k);
  }
}.


module Gm1P(H : Oracle_x2, A : CCA_ADV, PRFO : PRF_Oracles) = {
  
  proc main'() : bool = {
    var pk : pkey;
    var k1 : key;
    var ck0 : ciphertext * key;
    var b : bool;
    var b' : bool;
    
    H.init();
    CCA.cstar <- None;
    (pk, CCA.sk) <@ UU1(PRFO,H).kg();
    k1 <$ dkey;
    b <$ {0,1};
    ck0 <@ UU1(PRFO,H).enc(pk);
    CCA.cstar <- Some ck0.`1;
    b' <@ CCA(H, UU1(PRFO),A).A.guess(pk, ck0.`1, if b then k1 else ck0.`2);
    
    return b' = b;
  }
}.

module Gm1(H : Oracle_x2, A : CCA_ADV) = {
    proc main() : bool = {
       var b;
       RF.init();
       b <@ Gm1P(H,A,RF).main'();
       return b;
    }
}.

module D(A : CCA_ADV, PRFO : PRF_Oracles) = {
   proc distinguish = Gm1P(RO_x2(RO1.RO,RO2.RO),A,PRFO).main'
}.

(********************************************************)
(* Next step is to make the TT transform deterministic
   by eagerly sampling the whole random oracle. 
   Note that none of our reductions will need to simulate
   this step, since we are reducing to an assumption that
   already takes care of that. *)
(********************************************************)


clone import KEMROMx2.RO1.FinEager as RO1E
   with op FinFrom.enum = FinT.enum
   proof FinFrom.enum_spec by apply FinT.enum_spec
   proof *.

module RO_x2E = RO_x2(RO1E.FunRO,RO2.RO).
(* Now we proceed with the HHK proof.                         
   We simulate decryption without using SK and just keeping
   track of what happens in H *)


module (UU2 : KEMROMx2.Scheme) (H : POracle_x2) = {
  include UU1(RF,H) [-dec]

  var lD : (ciphertext * key) list

  proc dec(sk : skey, c : ciphertext) : key option = {
     var k, ko;
     ko <- None;
     if (assoc lD c <> None) {
        ko <- assoc lD c;
     }
     else {
        k <$ dkey;
        ko <- Some k;
        (* HHK SAYS INCONSISTENCY IF DEC C <> NONE && ENC (DEC C) <> C 
           HOWEVER, THIS CAN NEVER HAPPEN WHEN DEALING WITH THE FO_TT TRANSFORM *)
        lD <- (c,k) :: lD;
     }
     return ko;
  }
}.

(* For an up-to-bad argument we'll need to trigget bad in both
   Gm1 and Gm2, so we recast everything in the memory of Gm2. *)

  module H1 : POracle_x2 = {
     var bad : bool
     proc init() = {}
     proc get1 = RO_x2E.get1
     proc get2(m : plaintext) : key = {
       var k,cm;
       cm <- enc (RO1E.FunRO.f m) CCA.sk.`1.`1 m;
       bad <- if dec CCA.sk.`1.`2 cm <> Some m then true else bad;
       k <$ dkey;
       if (m \notin RO2.RO.m) {
         RO2.RO.m.[m] <- k;
       }
       return oget RO2.RO.m.[m];
     }
  }.

  module H2 : POracle_x2 = {
     proc init() = {}
     proc get1 = RO_x2E.get1
     proc get2(m : plaintext) : key = {
       var k,cm;
       cm <- enc (RO1E.FunRO.f m) CCA.sk.`1.`1 m;
       (* INCONSISTENCY TO GM1 IF DEC (ENC M) <> SOME M
          CAN BE REDUCED TO CORRECTNESS. *)
       H1.bad <- if dec CCA.sk.`1.`2 cm <> Some m then true else H1.bad;
       k <$ dkey;
       if (m \notin RO2.RO.m) {
         if (assoc UU2.lD cm <> None) {
             k <- oget (assoc UU2.lD cm);
         }
         else {
             UU2.lD <- (cm,k) :: UU2.lD;
         }
         RO2.RO.m.[m] <- k;
       }
       return oget RO2.RO.m.[m];
     }
  }.


module Gm2(H : Oracle_x2, S : KEMROMx2.Scheme, A : CCA_ADV) = {

  module O = {
    proc dec(c : ciphertext) : key option = {
      var k : key option;
      
      k <- None;
      if (Some c <> CCA.cstar) 
        k <@ S(H).dec(CCA.sk, c);
      
      return k;
    }
  }

  proc main() : bool = {
    var pk : pkey;
    var k1 : key;
    var ck0 : ciphertext * key;
    var cstar : ciphertext option;
    var b : bool;
    var b' : bool;
    
    H1.bad <- false;
    RF.init();
    RO_x2E.init();
    UU2.lD <- [];
    CCA.cstar <- None;
    (pk, CCA.sk) <@ S(H).kg();
    k1 <$ dkey;
    b <$ {0,1};
    ck0 <@ UU2(H).enc(pk);
    CCA.cstar <- Some ck0.`1;
    b' <@ CCA(H, S, A).A.guess(pk, ck0.`1, if b then k1 else ck0.`2);
    
    return b' = b;
  }
}.


section.

declare module A <: CCA_ADV  {-CCA, -RO1.RO, -RO1.FRO, -RO2.RO, -PRF, -RF, -UU2, 
                    -RO1E.FunRO, -Gm2} .


lemma Gm0_Gm1 &m : 
   Pr[ KEMROMx2.CCA(RO_x2(RO1.RO,RO2.RO), UU, A).main() @ &m : res ] -
     Pr [ Gm1(RO_x2(RO1.RO,RO2.RO),A).main() @ &m : res ] =
       Pr [ J.IND(PRF,D(A)).main() @ &m : res ] - 
         Pr [ J.IND(RF, D(A)).main() @ &m : res ].
proof. 
have -> : Pr[ KEMROMx2.CCA(RO_x2(RO1.RO,RO2.RO), UU, A).main() @ &m : res ] =
          Pr [ J.IND(PRF,D(A)).main() @ &m : res ].
+ byequiv => //.
  proc;inline {2} 2;inline {2} 1; inline {1} 3.
  swap {1} 4 -3.  
  wp;call(_: ={glob RO1.RO, glob RO2.RO, CCA.cstar} /\ 
              CCA.sk{1}.`1.`1 = CCA.sk{2}.`1.`1 /\
              CCA.sk{1}.`1.`2 = CCA.sk{2}.`1.`2 /\
              CCA.sk{1}.`2 = PRF.k{2} ).  
  + proc;sp; if; 1,3: by auto => />. 
    inline {1} 1;inline {2} 1. 
    inline {1} 4;inline {2} 4.
    sp;if;1:by auto => /> /#.
    + sp;seq 4 4 : (#{/~rv{1}}{~rv{2}}pre /\ ={m'}); 
        1: by inline *;auto => /> /#.
      sp;inline *;if;by auto => /> /#.
      by sp;inline *;if;by auto => /> /#.
    + by proc;inline *; auto => /> /#.
    + by proc;inline *; auto => /> /#.
  wp;call(_: ={glob RO1.RO, glob RO2.RO, CCA.cstar} /\ 
              CCA.sk{1}.`1.`1 = CCA.sk{2}.`1.`1 /\
              CCA.sk{1}.`1.`2 = CCA.sk{2}.`1.`2 /\
              CCA.sk{1}.`2 = PRF.k{2} ).  
  + by inline *;conseq/>;sim.
  by inline *;auto => />.

have -> : Pr[ Gm1(RO_x2(RO1.RO,RO2.RO),A).main() @ &m : res ] =
          Pr [ J.IND(RF,D(A)).main() @ &m : res ].
+ byequiv => //.
  proc;inline {2} 2;inline {2} 1;inline {1} 2; inline {1} 1.
    wp;call(_: ={glob RO1.RO, glob RO2.RO, CCA.cstar, glob RF} /\ 
              CCA.sk{1}.`1.`1 = CCA.sk{2}.`1.`1 /\
              CCA.sk{1}.`1.`2 = CCA.sk{2}.`1.`2).  
  + proc;sp; if; 1,3: by auto => />. 
    inline {1} 1;inline {2} 1. 
    inline {1} 4;inline {2} 4.
    sp;if;1:by auto => /> /#.
    + sp;seq 4 4 : (#{/~rv{1}}{~rv{2}}pre /\ ={m'});
       1: by inline *;auto => /> /#.
      sp;inline *;if; 1: by auto => /> /#.
      + by sp;inline *;if;auto => /> /#.
      by sp;inline *;auto => /> /#.
    by inline *;conseq/>;sim.
    + by proc;inline *; auto => /> /#.
    + by proc;inline *; auto => /> /#.
  by inline *;auto => />.
done.
qed.

local module (DG1  : RO1E.FinRO_Distinguisher) (G : RO1.RO) = {
    proc distinguish() = {
        var b;
        b <@ Gm1(RO_x2(G,RO2.RO),A).main();
        return b;
    }
}.

lemma uu_goal_eager &m: 
    Pr[Gm1(RO_x2(RO1.RO,RO2.RO),A).main() @ &m :res]  =
       Pr[Gm1(RO_x2E,A).main() @ &m : res].
proof.  
have -> : Pr[Gm1(RO_x2(RO1.RO,RO2.RO),A).main() @ &m : res] = 
          Pr[RO1.MainD(DG1,RO1.RO).distinguish() @ &m : res]
    by byequiv => //;proc;inline *;sim.
have -> : Pr[Gm1(RO_x2E,A).main() @ &m : res] = 
          Pr[RO1.MainD(DG1,RO1E.FunRO).distinguish() @ &m : idfun res]
   by rewrite /idfun /=;byequiv => //;proc;inline *;sim;
   auto => />; apply MUniFinFun.dfun_ll;smt(randd_ll).
have := RO1E.pr_FinRO_FunRO_D _ DG1 &m () idfun; 1: by smt(randd_ll).
have := RO1E.pr_RO_FinRO_D _ DG1 &m () idfun; 1: by smt(randd_ll).
by smt().
qed.

(*
REDUCTION TO CORRECTNESS SEEMS STRAIGHTFORWARD.
PROVING UP TO BAD REQUIRES DEALING WITH THE FACT THAT
DEC IS PRE-SAMPLING VALUES OF H2 AS FOLLOWS:

Assume not bad.

lD has three types of entries:
a) values added for invalid ciphertexts (implicit reject)
b) values added for Hash queries the preimage is already
   in H2 and the key is already defined.
   in both games there would be no sampling
c) values added for valid ciphertexts before H2 was
   called. This sets an implicit entry in the ROM.
Note that the game has no clue which case it is.

DEC:
In the proof we can check for the cases in new queries:

a) enc (dec c) <> c, then we are aligned with an RF sampling

b) does not occur, because Hash forced the entry and so it is 
   not a new query

c) we sample a value that is also sampled on the left, 
   but we will only consolidate it later.

*)

op c2m(c : ciphertext, sk : PKEROM.skey) : plaintext option = dec sk.`2 c.

op oc2m(c : ciphertext, sk : PKEROM.skey) : plaintext = oget (dec sk.`2 c).

op m2c(m : plaintext, sk : PKEROM.skey, f : plaintext -> randomness) : ciphertext = enc (f m) sk.`1 m.

op goodc(c : ciphertext, sk : PKEROM.skey, f : plaintext -> randomness) = 
          c2m c sk <> None /\ m2c (oc2m c sk) sk f = c.

local lemma G1_G2 &m :
  (forall (H0 <: POracle_x2{-A} ) (O <: CCA_ORC{ -A} ),
  islossless O.dec => islossless H0.get1 => islossless H0.get2 => islossless A(H0, O).guess) =>

  `| Pr[Gm1(RO_x2E,A).main() @ &m : res] -  Pr[ Gm2(H2,UU2,A).main() @ &m : res] |
     <= Pr[ Gm2(H2,UU2,A).main() @ &m : H1.bad ].
proof. 
move => A_ll.
have -> : Pr[Gm1(RO_x2E,A).main() @ &m : res]  =  Pr[ Gm2(H1,UU1(RF),A).main() @ &m : res].
+ byequiv => //.
  proc; inline {1} 2; sp; wp.
  call(_: ={glob RF, glob RO1E.FunRO, glob RO2.RO, glob CCA}).
  + by sim. 
  + by sim. 
  + by sim. 
  by conseq />;[by smt() | by sim].

byequiv : H1.bad => //.
proc.
seq 8 8 : (
    ={glob A,glob RO1E.FunRO, glob CCA,glob H1,k1,pk,b}  /\  uniq (unzip1 UU2.lD{2}) /\
    (* case a: all occuring badc accounted for *)
    (forall c, c \in UU2.lD{2} => !goodc c.`1 CCA.sk{2}.`1 RO1E.FunRO.f{2} => 
                                  c.`1 \in RF.m{1}) /\
    (* case a: all PRF inputs are occurring badcs *)
    (forall c, c \in RF.m{1} => assoc UU2.lD{2} c = RF.m{1}.[c]) /\
    (* case b: all occurring goodc accounted for *)
    (forall c, c \in UU2.lD{2} => goodc c.`1 CCA.sk{2}.`1 RO1E.FunRO.f{2} => 
                                  oc2m c.`1 CCA.sk{2}.`1 \in RO2.RO.m{1}) /\
    (* case b: all RO2 inputs with an occurrence  *)
    (forall m, m \in RO2.RO.m{2} => 
        (assoc UU2.lD{2} (m2c m CCA.sk{2}.`1 RO1E.FunRO.f{2}) <> None /\
            assoc UU2.lD{2} (m2c m CCA.sk{2}.`1 RO1E.FunRO.f{2}) = RO2.RO.m{2}.[m] /\ 
                 RO2.RO.m{1}.[m] = RO2.RO.m{2}.[m])) /\
    (* case c: RO2 inconsistency for entries not added by dec oracle *)
    (forall m, m \in RO2.RO.m{1} => m \notin RO2.RO.m{2} => 
               assoc UU2.lD{2} (m2c m CCA.sk{2}.`1 RO1E.FunRO.f{2}) = RO2.RO.m{1}.[m]) /\  
                 RO2.RO.m{2} = empty /\ 
                 UU2.lD{2} = [] /\
                 !H1.bad{2}); 1: by
      inline *; auto => />; smt(mem_empty).
seq 2 2 : (={H1.bad,b} /\
   (!H1.bad{2} => (
    ={glob A,glob RO1E.FunRO, glob CCA,k1,pk,ck0} /\  uniq (unzip1 UU2.lD{2}) /\
    (* case a: all occuring badc accounted for *)
    (forall c, c \in UU2.lD{2} => !goodc c.`1 CCA.sk{2}.`1 RO1E.FunRO.f{2} => 
                                  c.`1 \in RF.m{1}) /\
    (* case a: all PRF inputs are occurring badcs *)
    (forall c, c \in RF.m{1} => assoc UU2.lD{2} c = RF.m{1}.[c]) /\
    (* case b: all occurring goodc accounted for *)
    (forall c, c \in UU2.lD{2} => goodc c.`1 CCA.sk{2}.`1 RO1E.FunRO.f{2} => 
                                  oc2m c.`1 CCA.sk{2}.`1 \in RO2.RO.m{1}) /\
    (* case b: all RO2 inputs with an occurrence  *)
    (forall m, m \in RO2.RO.m{2} => 
        (assoc UU2.lD{2} (m2c m CCA.sk{2}.`1 RO1E.FunRO.f{2}) <> None /\
            assoc UU2.lD{2} (m2c m CCA.sk{2}.`1 RO1E.FunRO.f{2}) = RO2.RO.m{2}.[m] /\ 
                 RO2.RO.m{1}.[m] = RO2.RO.m{2}.[m])) /\
    (* case c: RO2 inconsistency for entries not added by dec oracle *)
    (forall m, m \in RO2.RO.m{1} => m \notin RO2.RO.m{2} => 
               assoc UU2.lD{2} (m2c m CCA.sk{2}.`1 RO1E.FunRO.f{2}) = RO2.RO.m{1}.[m]))
     ));1: by wp;conseq />;[smt() | inline *;auto => />;smt(mem_empty get_setE)].
call(:H1.bad,
     ={glob RO1E.FunRO, glob CCA, H1.bad} /\ uniq (unzip1 UU2.lD{2}) /\
    (* case a: all occuring badc accounted for *)
    (forall c, c \in UU2.lD{2} => !goodc c.`1 CCA.sk{2}.`1 RO1E.FunRO.f{2} => 
                                  c.`1 \in RF.m{1}) /\
    (* case a: all PRF inputs are occurring badcs *)
    (forall c, c \in RF.m{1} => assoc UU2.lD{2} c = RF.m{1}.[c]) /\
    (* case b: all occurring goodc accounted for *)
    (forall c, c \in UU2.lD{2} => goodc c.`1 CCA.sk{2}.`1 RO1E.FunRO.f{2} => 
                                  oc2m c.`1 CCA.sk{2}.`1 \in RO2.RO.m{1}) /\
    (* case b: all RO2 inputs with an occurrence  *)
    (forall m, m \in RO2.RO.m{2} => 
        (assoc UU2.lD{2} (m2c m CCA.sk{2}.`1 RO1E.FunRO.f{2}) <> None /\
            assoc UU2.lD{2} (m2c m CCA.sk{2}.`1 RO1E.FunRO.f{2}) = RO2.RO.m{2}.[m] /\ 
                 RO2.RO.m{1}.[m] = RO2.RO.m{2}.[m])) /\
    (* case c: RO2 inconsistency for entries not added by dec oracle *)
    (forall m, m \in RO2.RO.m{1} => m \notin RO2.RO.m{2} => 
               assoc UU2.lD{2} (m2c m CCA.sk{2}.`1 RO1E.FunRO.f{2}) = RO2.RO.m{1}.[m]),={H1.bad}).
+ proc;sp;if;1,3: by auto.
  inline *;sp;if{2}.
  (* repeat ciphertext *)
  + if{1}; last  by auto => />;smt(assoc_none).
    (* badc *) 
    rcondf {1} 2; 1: by auto => />; smt(assoc_none).
    by auto => />;smt(assoc_none).
  (* new ciphertext *)
  if{1}.
  (* badc *) 
  + rcondt {1} 2; 1: by auto => />; smt(assoc_none).
    by auto => />;smt(get_setE assoc_none assoc_cons mapP).
  (* good c *)
  + rcondt {1} 5; 1: by auto => />; smt(assoc_none).
    by auto => />;smt(get_setE assoc_none assoc_cons mapP).
+ move => *;proc;inline *;auto => />; 
  sp;if{1};2:by auto => /> /#.
  sp;if{1}; 2: by auto => />  *;smt(dkey_ll). 
  by sp;if{1};auto => />  *;smt(dkey_ll). 
+ by move => *;proc;inline *;conseq />;islossless.
+ by proc;inline*;auto => />.
+ by move => *;proc;inline *;conseq />;islossless.
+ by move => *;proc;inline *;conseq />;islossless.
+ proc;inline *. 
  swap {1} 3 -2; swap {2} 3 -2;seq 1 1 : (#pre /\ ={k}); 1: by auto.
  sp 2 2;if{2};last by auto => /#.
  by if{1}; auto => />;smt(get_setE assoc_none assoc_cons mapP).
+ by move => *;proc;inline *;auto => />;smt(dkey_ll). 
+ by move => *;proc;inline *;auto => />;smt(dkey_ll). 
+ by auto => /> /#. 
by smt().
qed.
  
end section.

section.

declare module A <: PKEROM.PCVA_ADV. 

lemma tt_conclusion_eager &m: 
  (*   (forall (H <: PKEROM.POracle{-A} ) (O <: PKEROM.VA_ORC{-A} ),
       islossless O.cvo => islossless O.pco => islossless H.get => islossless A(H, O).find) => *)
    Pr[PKEROM.OW_PCVA(PKEROM.RO.RO, TT, A).main() @ &m : res]  =
       Pr[PKEROM.OW_PCVA(RO1E.FunRO, TT, A).main() @ &m : res].
admitted. (* to do *)

end section.
