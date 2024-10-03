import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[0,1,2,3],[1,0,0,1],[1,0,3,2],[3,1,1,0]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[0,1,2,3],[1,0,0,1],[1,0,3,2],[3,1,1,0]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[0,1,2,3],[1,0,0,1],[1,0,3,2],[3,1,1,0]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[0,1,2,3],[1,0,0,1],[1,0,3,2],[3,1,1,0]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [2503,2543,2644,2669,2699,2746,2808,3050,3068,3152] [23,25,31,203,205,208,211,214,218,221,224,231,242,246,307,309,312,323,419,429,436,466,473,500,513,528,562,575,614,622,632,639,669,676,703,716,731,765,778,817,825,835,842,872,879,906,919,934,968,981,1028,1038,1045,1075,1082,1109,1122,1137,1171,1184,1223,1231,1241,1248,1278,1285,1312,1325,1340,1374,1387,1426,1434,1444,1451,1481,1488,1515,1528,1543,1577,1590,1629,1631,1637,1644,1647,1650,1654,1657,1672,1684,1691,1718,1721,1724,1731,1746,1780,1793,1840,1850,1857,1887,1894,1921,1934,1949,1983,1996,2035,2038,2041,2043,2051,2053,2060,2064,2068,2076,2079,2090,2097,2124,2137,2152,2186,2199,2238,2240,2243,2246,2249,2253,2256,2259,2263,2266,2269,2273,2277,2281,2285,2290,2293,2296,2300,2303,2306,2310,2314,2318,2322,2327,2330,2333,2340,2351,2355,2364,2368,2372,2376,2385,2389,2402,2406,2420,2425,2430,2443,2446,2449,2452,2456,2459,2462,2466,2469,2472,2476,2480,2484,2488,2496,2506,2517,2530,2533,2536,2554,2558,2571,2588,2592,2605,2623,2646,2647,2650,2652,2659,2660,2662,2665,2672,2673,2677,2685,2687,2688,2696,2702,2706,2709,2712,2724,2733,2736,2739,2761,2770,2774,2778,2782,2791,2795,2812,2836,2847,2850,2853,2855,2863,2865,2872,2876,2880,2888,2891,2902,2909,2936,2949,2964,2998,3011,3052,3058,3065,3071,3075,3078,3093,3105,3112,3115,3139,3142,3145,3167,3180,3197,3201,3214,3255,3256,3258,3259,3261,3264,3268,3271,3274,3278,3288,3308,3315,3323,3331,3456,3458,3459,3461,3462,3464,3467,3481,3509,3511,3518,3519,3522,3525,3526,3529,3534,3537,3659,3664,3674,3677,3684,3694,3712,3749,3759,3769,3786,3820,4065,4070,4090,4118,4128,4131,4138,4155,4165,4175,4226,4269,4270,4272,4283,4316,4320,4321,4327,4341,4343,4351,4358,4362,4380,4584,4585,4590,4598,4606,4611,4622,4631,4656,4658,4673] :=
    ⟨Fin 4, «FinitePoly [[0,1,2,3],[1,0,0,1],[1,0,3,2],[3,1,1,0]]», by decideFin!⟩
