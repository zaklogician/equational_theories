import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[3,1,0,1],[3,2,1,0],[3,2,1,0],[3,2,1,0]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[3,1,0,1],[3,2,1,0],[3,2,1,0],[3,2,1,0]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[3,1,0,1],[3,2,1,0],[3,2,1,0],[3,2,1,0]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[3,1,0,1],[3,2,1,0],[3,2,1,0],[3,2,1,0]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [1894,1931,1975,2035,3890,3901,3952,3962,3972] [8,10,13,16,19,39,45,99,101,104,107,110,114,117,120,124,127,130,134,138,142,146,153,156,159,162,166,169,172,176,179,182,186,190,194,198,359,361,364,367,370,375,378,381,385,388,391,395,399,403,407,411,413,416,419,422,426,429,432,436,439,442,446,450,454,458,463,466,469,473,476,479,483,487,491,495,500,503,506,510,513,516,520,524,528,532,537,541,545,549,554,558,562,566,571,575,579,583,588,593,598,603,608,622,632,639,716,731,765,778,825,835,842,872,879,906,919,934,968,981,1020,1022,1025,1028,1031,1035,1038,1041,1045,1048,1051,1055,1059,1063,1067,1072,1075,1078,1082,1085,1088,1092,1096,1100,1104,1109,1112,1115,1119,1122,1125,1129,1133,1137,1141,1146,1150,1154,1158,1163,1167,1171,1175,1180,1184,1188,1192,1197,1202,1207,1212,1217,1223,1225,1228,1231,1234,1238,1241,1244,1248,1251,1254,1258,1262,1266,1270,1275,1278,1281,1285,1288,1291,1295,1299,1303,1307,1312,1315,1318,1322,1325,1328,1332,1336,1340,1344,1349,1353,1357,1361,1366,1370,1374,1378,1383,1387,1391,1395,1400,1405,1410,1415,1420,1426,1434,1444,1451,1481,1488,1515,1528,1543,1577,1590,1629,1631,1634,1637,1640,1644,1647,1650,1654,1657,1660,1664,1668,1672,1676,1681,1684,1687,1691,1694,1697,1701,1705,1709,1713,1718,1721,1724,1728,1731,1734,1738,1742,1746,1750,1755,1759,1763,1767,1772,1776,1780,1784,1789,1793,1797,1801,1806,1811,1816,1821,1826,1834,1837,1840,1843,1850,1853,1857,1860,1863,1867,1871,1875,1879,1884,1887,1890,1897,1900,1904,1908,1912,1916,1921,1924,1927,1934,1937,1941,1945,1949,1953,1958,1962,1966,1970,1979,1983,1987,1992,1996,2000,2004,2009,2014,2019,2024,2029,2037,2040,2043,2046,2050,2053,2056,2060,2063,2066,2070,2074,2078,2082,2087,2090,2093,2097,2100,2103,2107,2111,2115,2119,2124,2127,2130,2137,2140,2144,2148,2152,2156,2161,2165,2169,2173,2178,2182,2186,2190,2195,2199,2203,2207,2212,2217,2222,2227,2232,2238,2246,2256,2263,2293,2300,2327,2340,2355,2389,2402,2459,2466,2503,2530,2543,2558,2592,2605,2652,2662,2669,2699,2706,2733,2746,2761,2795,2808,2847,2855,2865,2872,2902,2909,2936,2949,2964,2998,3011,3068,3105,3112,3139,3152,3167,3201,3214,3253,3255,3258,3261,3264,3268,3271,3274,3278,3281,3284,3288,3292,3296,3300,3306,3309,3312,3316,3319,3322,3326,3330,3334,3338,3343,3346,3349,3353,3356,3359,3363,3367,3371,3375,3380,3384,3388,3392,3397,3401,3405,3409,3414,3418,3422,3426,3431,3436,3441,3446,3451,3456,3464,3474,3481,3509,3511,3518,3522,3537,3546,3549,3556,3591,3617,3659,3661,3664,3667,3670,3674,3677,3680,3684,3687,3690,3694,3698,3702,3706,3712,3725,3740,3752,3759,3794,3820,3864,3870,3873,3877,3883,3893,3897,3905,3909,3915,3918,3921,3925,3928,3931,3935,3939,3943,3947,3955,3958,3965,3968,3976,3980,3984,3989,3993,3997,4001,4006,4010,4014,4018,4023,4027,4031,4035,4040,4045,4050,4055,4060,4067,4070,4076,4080,4083,4086,4090,4096,4100,4104,4108,4112,4118,4121,4124,4128,4131,4134,4138,4142,4146,4150,4155,4158,4161,4165,4168,4171,4175,4179,4183,4187,4192,4196,4200,4204,4209,4213,4217,4221,4226,4230,4234,4238,4243,4248,4253,4258,4263,4269,4272,4275,4278,4284,4287,4291,4296,4300,4304,4307,4310,4316,4320,4323,4327,4330,4334,4340,4348,4351,4354,4360,4362,4367,4374,4378,4380,4388,4396,4409,4424,4435,4442,4473,4480,4512,4525,4584,4587,4590,4593,4599,4602,4611,4615,4619,4622,4625,4631,4635,4638,4642,4645,4649,4655,4663,4666,4669,4675,4677,4682,4689,4693] :=
    ⟨Fin 4, «FinitePoly [[3,1,0,1],[3,2,1,0],[3,2,1,0],[3,2,1,0]]», by decideFin!⟩
