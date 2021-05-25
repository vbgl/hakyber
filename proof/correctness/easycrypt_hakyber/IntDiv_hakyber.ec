require import AllCore StdOrder List Ring.
require import IntDiv.
(*---*) import IntOrder.
require import Logic_extra Ring_extra Int_extra IntDiv_extra.


(*-----------------------------------------------------------------------------*)

op vp (b x : int) = argmax ((^) b) (transpose (%|) x).

abbrev vp_rem b x = x %/ (b ^ (vp b x)).

lemma vp_bound b x : 1 < b => x <> 0 => forall n, `|x| <= n => ! b ^ n %| x.
proof.
move => lt1b neqx0 n le_n; apply/negP => dvd_x; move: (dvdz_le _ _ neqx0 dvd_x); apply/negP/ltrNge.
apply (ler_lt_trans n) => //; rewrite normrX_nat; first by apply/(lez_trans _ _ _ _ le_n)/normr_ge0.
by apply/lt_exp_pow; [apply/ltr_normr; left|apply/(lez_trans _ _ _ _ le_n)/normr_ge0].
qed.

lemma ge0_vp b x : 0 <= vp b x.
proof. by rewrite /vp; apply/ge0_argmax. qed.

lemma vp_pow_dvd b x : 1 < b => x <> 0 => (b ^ (vp b x)) %| x.
proof.
by move => lt1b neqx0; rewrite /vp; apply/(argmaxP ((^) b) (transpose (%|) x) 0 `|x| _ _ _ _) => //=;
[apply/normr_ge0|rewrite expr0 dvd1z|apply vp_bound].
qed.

lemma vp_rem_powK b x : 1 < b => x <> 0 => (vp_rem b x) * (b ^ (vp b x)) = x.
proof. by move => lt1b neqx0; rewrite divzK; move: (vp_pow_dvd b _ lt1b neqx0). qed.

lemma vp_rem_ndvd b x :  1 < b => x <> 0 => !(b %| vp_rem b x).
proof.
move => lt1b neqx0; apply/negP => dvdb_; move: (dvdz_mul _ (b ^ (vp b x)) _ (b ^ (vp b x)) dvdb_).
rewrite dvdzz /= vp_rem_powK // -IntID.exprS 1:ge0_vp.
move: (argmax_max ((^) b) (transpose (%|) x) `|x|).
by move=> /= -> //=; [apply normr_ge0|apply vp_bound|rewrite /vp ltzE].
qed.

lemma mulz_pow b x n : 1 < b => x <> 0 => 0 <= n => x * b ^ n = vp_rem b x * b ^ (vp b x + n).
proof. by move => lt1b neqx0 le0n; rewrite exprD_nneg // ?ge0_vp mulrA vp_rem_powK. qed.

lemma divz_pow b x n : 1 < b => x <> 0 => 0 <= n <= vp b x => x %/ (b ^ n) = vp_rem b x * b ^ (vp b x - n).
proof.
move => lt1b neqx0 [le0n len_]; rewrite exprD_subz // ?divzpMr ?dvdz_exp2l // ?vp_rem_powK //.
by apply gtr_eqF; move: (ler_lt_add (-1) 0 _ _ _ lt1b).
qed.

lemma vp0 b x : 1 < b => x <> 0 => x %% b <> 0 => vp b x = 0.
proof.
rewrite -dvdzE /vp => lt1b neqx0 Ndvdbx; apply argmax_eq => //=; first by rewrite expr0 dvd1z.
by move=> j /ltzE /= le1j; move: Ndvdbx; apply/implybNN/dvdz_trans; move: (dvdz_exp2l b 1 j); rewrite expr1 le1j.
qed.

lemma vp_dvd b x : 1 < b => x <> 0 => x %% b = 0 => vp b x = vp b (x %/ b) + 1.
proof.
rewrite -dvdzE /vp => lt1b neqx0 /dvdz_eq eq_x; rewrite -{1}eq_x; apply argmax_eq => //=.
+ by apply addz_ge0; rewrite // ge0_argmax.
+ rewrite exprSr ?ge0_argmax /=; apply dvdz_mul; last by rewrite dvdzz.
  by apply vp_pow_dvd => //; move: neqx0; rewrite-{1} eq_x; apply implybNN => ->.
move=> j /ltr_subr_addr ltvp_; move: (argmax_max _ _ `|x %/ b| _ _ _ ltvp_); first by apply normr_ge0.
+ move => n /=; apply vp_bound => //; first by move: neqx0; rewrite-{1} eq_x; apply implybNN => ->.
apply implybNN => /= /dvdzP [q eq__]; apply/dvdzP; exists q; move: eq__.
rewrite -{1}(IntID.subrK j 1) exprSr; first by apply (lez_trans _ _ _ (ge0_argmax _ _) (ltzW _ _ ltvp_)).
by rewrite mulrA; apply/IntID.mulIf/neq_ltz; right; apply/(ltz_trans 1).
qed.

hint simplify vp0, vp_dvd.
