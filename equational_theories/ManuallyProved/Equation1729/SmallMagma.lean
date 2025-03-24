import Mathlib.Algebra.DirectSum.Basic
import Mathlib.GroupTheory.FreeGroup.Basic
import Mathlib.Data.ZMod.Defs
import Mathlib.Data.Countable.Defs
import Mathlib.Data.DFinsupp.Encodable

import equational_theories.Equations.All
import equational_theories.ManuallyProved.Equation1729.ExtensionTheorem

/- Constructs the small magma SM, basic properties of the additional set N, and sets out the axioms these objects need to satisfy -/

namespace Eq1729

/- SM is the abelian group generated by countably many generators E n of order 4 -/

abbrev SM := DirectSum ℕ (fun _ ↦ ZMod 4)

open AddToMagma -- makes SM a magma automatically

instance SM_countable : Countable SM := by
  convert instCountableDFinsupp
  . infer_instance
  infer_instance

abbrev E (n:ℕ) : SM := (DirectSum.of (fun _ ↦ ZMod 4) n) 1

/- The squaring map on SM -/
def S (a : SM) := a ◇ a

lemma SM_square_eq_double (a : SM) : S a = a + a := rfl

lemma SM_square_square_eq_zero (a : SM) : S (S a) = 0 := by
  change (a+a) + (a+a) = 0
-- when we update Mathlib, one can switch to DirectSum.ext_component, or use the new version of DirectSum.ext
  apply DirectSum.ext ℤ
  intro i
  simp only [map_add, map_zero]
  abel_nf
  exact ZModModule.char_nsmul_eq_zero 4 _

lemma SM_obeys_1729 : Equation1729 SM := by
  intro x y
  change x = (y + y) + ((y+x) + y)
  abel_nf
-- when we update Mathlib, one can switch to DirectSum.ext_component, or use the new version of DirectSum.ext
  apply DirectSum.ext ℤ
  intro i
  simp only [map_add, map_smul, zsmul_eq_mul, Int.cast_ofNat, self_eq_add_left]
  apply zero_mul


/- N is the free group generated by e_a for each a in SM -/

abbrev N := FreeGroup SM

instance N_countable : Countable N := by
  apply Quotient.countable

abbrev e (a:SM) := FreeGroup.of a

def adjacent (x y : N) := ∃ a, x = (e a) * y ∨ y = (e a) * x

/-- Impose an order on N: y ≤ x if y is a right subword of x  (or equivalently, y is on the unique simple path from
1 to x).  The spelling may not be optimal. -/
instance N_LE : LE N := {
  le := by
    intro x y
    exact ∃ z, x = z * y ∧ x.norm = z.norm + y.norm
}

instance N_order : PartialOrder N  := {
  le := N_LE.le
  lt := by
    intro x y
    exact x ≤ y ∧ x ≠ y
  le_refl := sorry
  le_trans := sorry
  le_antisymm := sorry
  lt_iff_le_not_le := sorry
}

/-- the parent of x is defined to be the unique element adjacent to x whose reduced word is shorter, with the junk convention that the parent of the identity is itself -/
def parent (x : N) : N := FreeGroup.mk x.toWord.dropLast

/- Right-multiplication by an element of SM on N is defined via the group action. -/

abbrev R' (a:SM) (x:N) := (e a) * x

abbrev R'_inv (a:SM) (x:N) := (e a)⁻¹ * x

lemma R'_R'_inv_left (a:SM) : Function.LeftInverse (R'_inv a) (R' a) := inv_mul_cancel_left (e a)

lemma R'_R'_inv_right (a:SM) : Function.RightInverse (R'_inv a) (R' a) := mul_inv_cancel_left (e a)

/-- The R' operators are bijective -/
lemma R'_bijective (a:SM) : Function.Bijective (R' a) := by
  rw [Function.bijective_iff_has_inverse]
  use R'_inv a
  exact ⟨ R'_R'_inv_left a, R'_R'_inv_right a ⟩

lemma R'_axiom_iia (a b : SM) (y:N) (h: a ≠ b): R' a y ≠ R' b y := by
  contrapose! h
  simp only [mul_left_inj] at h
  exact FreeGroup.of_injective h

lemma R'_axiom_iib (a : SM) (y:N) : R' a y ≠ y := by
  by_contra! h
  simp only [mul_left_eq_self, FreeGroup.of_ne_one] at h

/- Now we rewrite the axioms using a single transformation L₀' instead of many transformations L' -/

/- Not sure if this is the best spelling for this axiom -/
def axiom_i' (L₀' : N → N) : Prop := L₀' ∘ L₀' = R'_inv 0

def L' (L₀' : N → N) (a:SM) := (R'_inv a) ∘ L₀' ∘  (R' (S a))

def L'_inv (L₀' : N → N) (a:SM) := (R'_inv (S a)) ∘ L₀' ∘ (R' 0) ∘  (R' a)

lemma L'_0_eq_L₀' {L₀' : N → N} (h: axiom_i' L₀') : L' L₀' 0 = L₀' := by sorry

lemma L'_L'_inv_left {L₀' : N → N} (h1: axiom_i' L₀') (h2: Function.Bijective L₀') (a:SM) : Function.LeftInverse (L'_inv L₀' a) (L' L₀' a) := by sorry

lemma L'_L'_inv_right {L₀' : N → N} (h1: axiom_i' L₀') (h2: Function.Bijective L₀') (a:SM) : Function.RightInverse (L'_inv L₀' a) (L' L₀' a) := by sorry

lemma L'_bijective {L₀' : N → N} (h1: axiom_i' L₀') (h2: Function.Bijective L₀') (a:SM) : Function.Bijective (L' L₀' a) := by
  rw [Function.bijective_iff_has_inverse]
  use L'_inv L₀' a
  exact ⟨ L'_L'_inv_left h1 h2 a, L'_L'_inv_right h1 h2 a ⟩

def M := SM ⊕ N

variable (f g h : ℕ → ℕ)

example : ℕ := f $ g $ h 0

def axiom_iii' (S': N → SM) (L₀' : N → N)  : Prop := ∀ (a : SM) (x y : N), R' a x = y → (R'_inv (S' y) $ L₀' $ R' (S (S' y)) $ R'_inv (a - S' x) $ L₀' $ R' (S (a - S' x)) y) = x

def axiom_iv' (S': N → SM) (L₀' : N → N)  : Prop := ∀ x : N, (R'_inv (S' x) $ L₀' $ R' (S (S' x)) $ R'_inv (S' x) $ L₀' $ R' (S (S' x)) $ x) = x

def axiom_v (S': N → SM) (op: N → N → M) : Prop := ∀ x : N, op x x = Sum.inl (S' x)

def axiom_vi' (S': N → SM) (op: N → N → M) : Prop := ∀ (y : N) (a : SM), op (R' a y) y = Sum.inl (a - S' y)

def axiom_vii' (S': N → SM) (L₀' : N → N) (op: N → N → M) : Prop := ∀ x y : N, x ≠ y → (∀ a : SM, x ≠ R' a y) → ∃ z : N, op x y = Sum.inr z ∧ op z x = Sum.inr (R'_inv (S (S' x)) $ L₀' $ R' 0 $ R' (S' x) $ y)

lemma reduce_to_new_axioms {S': N → SM} {L₀' : N → N} {op: N → N → M} (hbij: Function.Bijective L₀') (h_i': axiom_i' L₀') (h_iii': axiom_iii' S' L₀') (h_iv': axiom_iv' S' L₀') (h_v: axiom_v S' op) (h_vi': axiom_vi' S' op) (h_vii': axiom_vii' S' L₀' op) : ∃ (G: Type) (_: Magma G), Equation1729 G ∧ ¬ Equation817 G := by sorry

end Eq1729
