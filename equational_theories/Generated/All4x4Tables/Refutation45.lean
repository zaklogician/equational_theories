
import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[0,1,1,3],[3,0,3,1],[2,2,2,2],[1,3,0,0]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[0,1,1,3],[3,0,3,1],[2,2,2,2],[1,3,0,0]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[0,1,1,3],[3,0,3,1],[2,2,2,2],[1,3,0,0]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[0,1,1,3],[3,0,3,1],[2,2,2,2],[1,3,0,0]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [23, 47, 2662, 2670, 3518, 3665, 3712, 4127] [99, 151, 203, 255, 258, 263, 307, 2035, 2051, 2053, 2060, 2238, 2653, 2663, 2672, 2847, 3253, 3331, 3334, 3459, 3462, 3509, 3511, 3662, 3714, 3721, 3725, 3862, 4120, 4131, 4270, 4283, 4358, 4380, 4598, 4656, 4673] :=
    ⟨Fin 4, «FinitePoly [[0,1,1,3],[3,0,3,1],[2,2,2,2],[1,3,0,0]]», by decideFin!⟩
