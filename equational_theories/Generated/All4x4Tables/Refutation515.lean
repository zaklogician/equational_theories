
import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[0,2,1,4,3,6,5,8,7],[3,1,5,0,7,2,8,4,6],[4,6,8,3,0,7,1,5,2],[7,5,3,2,6,1,4,0,8],[8,7,6,5,4,3,2,1,0],[6,8,4,7,2,5,0,3,1],[5,3,7,1,8,0,6,2,4],[2,4,0,6,1,8,3,7,5],[1,0,2,8,5,4,7,6,3]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[0,2,1,4,3,6,5,8,7],[3,1,5,0,7,2,8,4,6],[4,6,8,3,0,7,1,5,2],[7,5,3,2,6,1,4,0,8],[8,7,6,5,4,3,2,1,0],[6,8,4,7,2,5,0,3,1],[5,3,7,1,8,0,6,2,4],[2,4,0,6,1,8,3,7,5],[1,0,2,8,5,4,7,6,3]]» : Magma (Fin 9) where
  op := memoFinOp fun x y => [[0,2,1,4,3,6,5,8,7],[3,1,5,0,7,2,8,4,6],[4,6,8,3,0,7,1,5,2],[7,5,3,2,6,1,4,0,8],[8,7,6,5,4,3,2,1,0],[6,8,4,7,2,5,0,3,1],[5,3,7,1,8,0,6,2,4],[2,4,0,6,1,8,3,7,5],[1,0,2,8,5,4,7,6,3]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[0,2,1,4,3,6,5,8,7],[3,1,5,0,7,2,8,4,6],[4,6,8,3,0,7,1,5,2],[7,5,3,2,6,1,4,0,8],[8,7,6,5,4,3,2,1,0],[6,8,4,7,2,5,0,3,1],[5,3,7,1,8,0,6,2,4],[2,4,0,6,1,8,3,7,5],[1,0,2,8,5,4,7,6,3]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [2913] [440, 477, 504, 511, 643, 680, 707, 817, 1049, 1086, 1113, 2338, 2534, 2940, 3079, 4283, 4398, 4405, 4442, 4482, 4635] :=
    ⟨Fin 9, «FinitePoly [[0,2,1,4,3,6,5,8,7],[3,1,5,0,7,2,8,4,6],[4,6,8,3,0,7,1,5,2],[7,5,3,2,6,1,4,0,8],[8,7,6,5,4,3,2,1,0],[6,8,4,7,2,5,0,3,1],[5,3,7,1,8,0,6,2,4],[2,4,0,6,1,8,3,7,5],[1,0,2,8,5,4,7,6,3]]», by decideFin!⟩
