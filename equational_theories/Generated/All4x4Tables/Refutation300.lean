
import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[2,1,1,3],[3,3,3,1],[0,1,2,3],[0,1,2,3]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[2,1,1,3],[3,3,3,1],[0,1,2,3],[0,1,2,3]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[2,1,1,3],[3,3,3,1],[0,1,2,3],[0,1,2,3]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[2,1,1,3],[3,3,3,1],[0,1,2,3],[0,1,2,3]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [2964] [2238, 2246, 2263, 2293, 2300, 2327, 2340, 2402, 2459, 2872, 2902, 3011] :=
    ⟨Fin 4, «FinitePoly [[2,1,1,3],[3,3,3,1],[0,1,2,3],[0,1,2,3]]», by decideFin!⟩
