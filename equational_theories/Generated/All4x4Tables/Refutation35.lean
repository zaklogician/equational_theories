
import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[2,3,0,1],[3,0,1,2],[0,1,2,3],[1,2,3,0]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[2,3,0,1],[3,0,1,2],[0,1,2,3],[1,2,3,0]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[2,3,0,1],[3,0,1,2],[0,1,2,3],[1,2,3,0]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[2,3,0,1],[3,0,1,2],[0,1,2,3],[1,2,3,0]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [440, 477, 504, 511, 513, 643, 680, 707, 714, 716, 846, 883, 910, 917, 919, 1049, 1086, 1113, 1120, 1122, 1252, 1289, 1316, 1323, 1325, 1455, 1492, 1519, 1526, 1528, 1658, 1695, 1722, 1729, 1731, 1861, 1898, 1925, 1932, 1934, 2064, 2101, 2128, 2135, 2137, 2267, 2304, 2331, 2338, 2340, 2470, 2507, 2534, 2541, 2543, 2673, 2710, 2737, 2744, 2746, 2876, 2913, 2940, 2947, 2949, 3079, 3116, 3143, 3150] [8, 40, 99, 203, 307, 359, 414, 417, 419, 427, 429, 436, 464, 466, 473, 500, 617, 620, 622, 630, 632, 639, 667, 669, 676, 703, 818, 820, 823, 825, 833, 835, 836, 842, 870, 872, 879, 906, 1022, 1023, 1026, 1028, 1035, 1036, 1038, 1039, 1045, 1046, 1048, 1073, 1075, 1082, 1109, 1224, 1225, 1226, 1228, 1229, 1231, 1239, 1241, 1242, 1248, 1249, 1251, 1276, 1278, 1285, 1312, 1429, 1432, 1434, 1442, 1444, 1451, 1479, 1481, 1488, 1515, 1631, 1632, 1635, 1637, 1644, 1645, 1647, 1654, 1657, 1682, 1684, 1691, 1718, 1721, 1834, 1835, 1838, 1840, 1848, 1850, 1851, 1857, 1885, 1887, 1894, 1921, 2038, 2041, 2043, 2051, 2053, 2060, 2088, 2090, 2097, 2124, 2241, 2243, 2244, 2246, 2253, 2254, 2256, 2263, 2266, 2290, 2291, 2293, 2300, 2327, 2330, 2444, 2447, 2449, 2457, 2459, 2466, 2469, 2494, 2496, 2503, 2506, 2530, 2533, 2647, 2650, 2652, 2660, 2662, 2669, 2697, 2699, 2706, 2733, 2736, 2791, 2812, 2850, 2853, 2855, 2863, 2865, 2872, 2900, 2902, 2909, 2936, 3052, 3053, 3056, 3058, 3066, 3068, 3075, 3078, 3103, 3105, 3112, 3115, 3139, 3253, 3288, 3456, 3659, 3862, 4065, 4098, 4118, 4120, 4127, 4128, 4131, 4154, 4155, 4158, 4165, 4167, 4269, 4270, 4272, 4273, 4275, 4293, 4314, 4321, 4343, 4383, 4386, 4388, 4583, 4584, 4585, 4588, 4590, 4606, 4608, 4636, 4658] :=
    ⟨Fin 4, «FinitePoly [[2,3,0,1],[3,0,1,2],[0,1,2,3],[1,2,3,0]]», by decideFin!⟩
