import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[1,0,0,1],[3,1,1,3],[3,2,2,0],[1,3,3,2]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[1,0,0,1],[3,1,1,3],[3,2,2,0],[1,3,3,2]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[1,0,0,1],[3,1,1,3],[3,2,2,0],[1,3,3,2]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[1,0,0,1],[3,1,1,3],[3,2,2,0],[1,3,3,2]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [452,455,617,630,647,655,658,825,861,1061,1226,1231,1256,1264,1267] [23,26,1426,1429,1432,1434,1442,1444,1451,1455,1459,1467,1470,1629,1632,1635,1637,1645,1647,1654,1658,1662,1670,1673,1838,1840,1848,1850,1873,1876,2035,2038,2041,2043,2051,2053,2060,2064,2068,2076,2079,2238,2241,2244,2246,2254,2256,2263,2267,2271,2279,2282,2441,2444,2447,2449,2457,2459,2466,2470,2474,2482,2485,2644,2647,2650,2652,2660,2662,2669,2673,2677,2685,2688,2847,2850,2853,2855,2863,2865,2872,2876,2880,2888,2891,3050,3053,3056,3058,3066,3068,3075,3079,3083,3091,3094,3259,3261,3306,3308,3331,3334,3456,3459,3462,3464,3509,3511,3518,3522,3526,3534,3537,3665,3667,3712,3714,3737,3740,3865,3868,3917,3924,3932,3940,4065,4068,4071,4073,4118,4120,4127,4131,4135,4143,4146,4283,4358,4380,4383,4396,4398,4433,4435,4469,4473,4477,4512,4515,4585,4656,4673] :=
    ⟨Fin 4, «FinitePoly [[1,0,0,1],[3,1,1,3],[3,2,2,0],[1,3,3,2]]», by decideFin!⟩
