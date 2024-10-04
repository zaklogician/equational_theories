
import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[0,2,3,4,5,6,7,1],[6,1,5,7,3,0,4,2],[7,3,2,6,1,4,0,5],[1,6,4,3,7,2,5,0],[2,0,7,5,4,1,3,6],[3,7,0,1,6,5,2,4],[4,5,1,0,2,7,6,3],[5,4,6,2,0,3,1,7]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[0,2,3,4,5,6,7,1],[6,1,5,7,3,0,4,2],[7,3,2,6,1,4,0,5],[1,6,4,3,7,2,5,0],[2,0,7,5,4,1,3,6],[3,7,0,1,6,5,2,4],[4,5,1,0,2,7,6,3],[5,4,6,2,0,3,1,7]]» : Magma (Fin 8) where
  op := memoFinOp fun x y => [[0,2,3,4,5,6,7,1],[6,1,5,7,3,0,4,2],[7,3,2,6,1,4,0,5],[1,6,4,3,7,2,5,0],[2,0,7,5,4,1,3,6],[3,7,0,1,6,5,2,4],[4,5,1,0,2,7,6,3],[5,4,6,2,0,3,1,7]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[0,2,3,4,5,6,7,1],[6,1,5,7,3,0,4,2],[7,3,2,6,1,4,0,5],[1,6,4,3,7,2,5,0],[2,0,7,5,4,1,3,6],[3,7,0,1,6,5,2,4],[4,5,1,0,2,7,6,3],[5,4,6,2,0,3,1,7]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [271, 476, 504, 676, 704, 910, 917, 1082, 1110, 1729, 1895, 1925, 2241, 2328, 2541, 2866, 3069, 4154] [264, 439, 503, 510, 513, 826, 833, 1429, 1432, 1434, 1442, 1444, 1455, 1481, 1482, 1491, 1518, 1632, 1635, 1647, 1654, 1658, 1682, 1721, 1838, 1840, 1848, 1850, 1861, 1885, 1897, 2036, 2044, 2053, 2060, 2063, 2064, 2100, 2125, 2244, 2256, 2263, 2267, 2294, 2300, 2447, 2449, 2457, 2459, 2470, 2503, 2646, 2653, 2663, 2670, 2672, 2673, 2699, 2850, 2852, 2863, 2875, 2876, 2910, 3053, 3058, 3059, 3066, 3075, 3076, 3078, 3079, 3113, 3254, 3255, 3256, 3259, 3261, 3271, 3306, 3308, 3315, 3316, 3318, 3343, 3352, 3457, 3458, 3459, 3474, 3511, 3518, 3519, 3521, 3558, 3668, 3675, 3761, 3867, 3871, 3877, 3887, 3924, 3925, 3952, 3954, 3955, 3962, 4068, 4070, 4073, 4080, 4090, 4127, 4128, 4131, 4155, 4157, 4165, 4268, 4290, 4314, 4320, 4321, 4408, 4443, 4598, 4606, 4636, 4656, 4666] :=
    ⟨Fin 8, «FinitePoly [[0,2,3,4,5,6,7,1],[6,1,5,7,3,0,4,2],[7,3,2,6,1,4,0,5],[1,6,4,3,7,2,5,0],[2,0,7,5,4,1,3,6],[3,7,0,1,6,5,2,4],[4,5,1,0,2,7,6,3],[5,4,6,2,0,3,1,7]]», by decideFin!⟩
