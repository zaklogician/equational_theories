
import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[2,0,1,3],[3,1,0,2],[0,2,3,1],[1,3,2,0]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[2,0,1,3],[3,1,0,2],[0,2,3,1],[1,3,2,0]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[2,0,1,3],[3,1,0,2],[0,2,3,1],[1,3,2,0]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[2,0,1,3],[3,1,0,2],[0,2,3,1],[1,3,2,0]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [26, 56, 63, 75, 1692, 1694, 1719, 1721, 1888, 1897, 1922, 1931, 2497, 2504, 2533, 2540, 3482, 3484, 3546, 3548, 4143, 4293, 4321, 4343] [50, 53, 55, 65, 66, 72, 73, 99, 151, 203, 255, 359, 411, 614, 817, 1020, 1223, 1426, 1630, 1631, 1634, 1635, 1637, 1638, 1644, 1645, 1647, 1648, 1655, 1657, 1681, 1682, 1684, 1685, 1691, 1695, 1718, 1722, 1728, 1729, 1731, 1833, 1834, 1835, 1837, 1840, 1841, 1847, 1848, 1851, 1857, 1858, 1860, 1884, 1885, 1887, 1894, 1895, 1898, 1921, 1924, 1925, 1932, 1934, 2035, 2238, 2442, 2443, 2444, 2446, 2447, 2450, 2456, 2459, 2460, 2466, 2467, 2469, 2493, 2494, 2496, 2503, 2506, 2507, 2530, 2531, 2534, 2541, 2543, 2644, 2847, 3051, 3052, 3055, 3059, 3065, 3069, 3076, 3078, 3102, 3103, 3105, 3106, 3112, 3113, 3115, 3116, 3139, 3140, 3142, 3143, 3149, 3150, 3152, 3253, 3457, 3458, 3461, 3462, 3464, 3465, 3472, 3474, 3475, 3481, 3509, 3511, 3512, 3519, 3521, 3545, 3549, 3555, 3556, 3558, 3659, 3862, 4066, 4067, 4070, 4074, 4080, 4083, 4084, 4090, 4091, 4093, 4121, 4128, 4130, 4155, 4157, 4158, 4164, 4165, 4167, 4268, 4269, 4270, 4272, 4273, 4275, 4283, 4284, 4290, 4291, 4314, 4320, 4380, 4583, 4584, 4587, 4588, 4590, 4591, 4599, 4605, 4606, 4608, 4629, 4635, 4636, 4658] :=
    ⟨Fin 4, «FinitePoly [[2,0,1,3],[3,1,0,2],[0,2,3,1],[1,3,2,0]]», by decideFin!⟩
