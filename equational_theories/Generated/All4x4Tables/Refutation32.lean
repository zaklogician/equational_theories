import equational_theories.AllEquations
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[2,1,0,1],[2,2,1,2],[2,2,2,2],[0,0,3,2]]
-/
set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[2,1,0,1],[2,2,1,2],[2,2,2,2],[0,0,3,2]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[2,1,0,1],[2,2,1,2],[2,2,2,2],[0,0,3,2]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[2,1,0,1],[2,2,1,2],[2,2,2,2],[0,0,3,2]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [11,100,108,109,360,367,368,369,444,821,844,847,849,850,851,858,1064,1225,1227,1228,1231,1250,1253,1254,1255,1256,1257,1262,1263,1264,1267,3686,3689,3690,3691,3693,4092,4095,4096,4097,4099,4105,4583,4592,4597,4609,4623] [10,101,104,105,106,110,111,361,365,371,378,413,426,427,429,430,432,433,434,437,439,442,443,832,833,834,836,837,838,839,840,841,854,1022,1023,1025,1031,1035,1038,1039,1041,1042,1043,1045,1046,1048,1051,1052,1053,1055,1056,1059,1060,1063,1067,1068,1230,1234,1240,1243,1244,1245,1246,1247,1258,1259,1260,1261,1265,1266,1270,1271,1834,1847,1850,1851,1853,1855,1860,1863,3255,3316,3318,3321,3322,3724,3726,3727,3864,3865,3867,3873,3881,3884,3888,3894,3895,3898,3902,3910,3925,3931,3935,4072,4076,4131,4269,4314,4316,4318,4584,4588,4594,4598,4601,4606,4611,4616,4620,4626,4631,4636,4639,4647,4651,4673] :=
    ⟨Fin 4, «FinitePoly [[2,1,0,1],[2,2,1,2],[2,2,2,2],[0,0,3,2]]», by decideFin!⟩
