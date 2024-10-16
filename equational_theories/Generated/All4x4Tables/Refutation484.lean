
import equational_theories.Equations.All
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[0,2,3,1,5,6,4],[4,1,6,0,3,2,5],[5,0,2,4,6,1,3],[6,5,0,3,1,4,2],[1,6,5,2,4,3,0],[2,3,4,6,0,5,1],[3,4,1,5,2,0,6]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[0,2,3,1,5,6,4],[4,1,6,0,3,2,5],[5,0,2,4,6,1,3],[6,5,0,3,1,4,2],[1,6,5,2,4,3,0],[2,3,4,6,0,5,1],[3,4,1,5,2,0,6]]» : Magma (Fin 7) where
  op := memoFinOp fun x y => [[0,2,3,1,5,6,4],[4,1,6,0,3,2,5],[5,0,2,4,6,1,3],[6,5,0,3,1,4,2],[1,6,5,2,4,3,0],[2,3,4,6,0,5,1],[3,4,1,5,2,0,6]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[0,2,3,1,5,6,4],[4,1,6,0,3,2,5],[5,0,2,4,6,1,3],[6,5,0,3,1,4,2],[1,6,5,2,4,3,0],[2,3,4,6,0,5,1],[3,4,1,5,2,0,6]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [63, 467, 667, 1112, 1286, 1692, 2301, 2504] [55, 127, 264, 419, 429, 436, 466, 473, 513, 642, 669, 845, 1025, 1035, 1045, 1075, 1085, 1122, 1232, 1239, 1434, 1444, 1525, 1634, 1657, 1681, 1685, 1691, 1721, 1731, 1840, 1847, 1860, 1884, 1895, 1897, 1921, 2064, 2091, 2098, 2137, 2257, 2263, 2327, 2460, 2540, 2697, 2743, 2900, 2936, 3056, 3068, 3078, 3105, 3140, 3261, 3271, 3278, 3306, 3346, 3353, 3484, 3556, 3687, 3867, 3877, 3887, 3925, 3952, 3954, 3962, 4071, 4074, 4081, 4157, 4275, 4320, 4343, 4482, 4606, 4658, 4666] :=
    ⟨Fin 7, «FinitePoly [[0,2,3,1,5,6,4],[4,1,6,0,3,2,5],[5,0,2,4,6,1,3],[6,5,0,3,1,4,2],[1,6,5,2,4,3,0],[2,3,4,6,0,5,1],[3,4,1,5,2,0,6]]», by decideFin!⟩
