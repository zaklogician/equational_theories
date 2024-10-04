
import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[0,1,2,3,4],[1,0,3,4,2],[2,4,0,1,3],[3,2,4,0,1],[4,3,1,2,0]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[0,1,2,3,4],[1,0,3,4,2],[2,4,0,1,3],[3,2,4,0,1],[4,3,1,2,0]]» : Magma (Fin 5) where
  op := memoFinOp fun x y => [[0,1,2,3,4],[1,0,3,4,2],[2,4,0,1,3],[3,2,4,0,1],[4,3,1,2,0]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[0,1,2,3,4],[1,0,3,4,2],[2,4,0,1,3],[3,2,4,0,1],[4,3,1,2,0]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [481, 695, 887, 978, 1101, 1384, 1496, 1537, 1710, 1740, 1902, 1993, 2105, 2146, 2319, 2602, 2725, 2755, 3008, 3161] [16, 26, 43, 419, 427, 464, 500, 504, 511, 513, 617, 639, 676, 703, 714, 716, 749, 825, 833, 872, 906, 910, 919, 1023, 1045, 1082, 1098, 1109, 1120, 1122, 1231, 1239, 1278, 1285, 1289, 1312, 1325, 1434, 1444, 1451, 1455, 1479, 1528, 1632, 1645, 1647, 1654, 1658, 1691, 1722, 1838, 1840, 1850, 1887, 1921, 1925, 1934, 2043, 2053, 2060, 2064, 2088, 2113, 2137, 2241, 2244, 2254, 2263, 2267, 2293, 2338, 2444, 2447, 2449, 2470, 2507, 2530, 2586, 2647, 2660, 2669, 2673, 2699, 2737, 2850, 2853, 2855, 2876, 2913, 2936, 2982, 3053, 3075, 3079, 3103, 3105, 3116, 3143, 3261, 3269, 3306, 3342, 3346, 3353, 3355, 3459, 3481, 3518, 3545, 3556, 3558, 3591, 3667, 3675, 3714, 3748, 3752, 3761, 3865, 3887, 3924, 3940, 3951, 3962, 3964, 4073, 4081, 4109, 4120, 4127, 4131, 4154, 4167, 4275, 4283, 4290, 4362, 4383, 4396, 4398, 4405, 4442, 4473, 4585, 4605, 4635, 4673] :=
    ⟨Fin 5, «FinitePoly [[0,1,2,3,4],[1,0,3,4,2],[2,4,0,1,3],[3,2,4,0,1],[4,3,1,2,0]]», by decideFin!⟩
