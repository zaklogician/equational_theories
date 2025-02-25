
import equational_theories.Equations.All
import equational_theories.FactsSyntax
import equational_theories.MemoFinOp
import equational_theories.DecideBang

/-!
This file is generated from the following operator table:
[[3,2,2,3],[3,2,2,3],[2,2,2,2],[3,3,3,3]]
-/

set_option linter.unusedVariables false

/-! The magma definition -/
def «FinitePoly [[3,2,2,3],[3,2,2,3],[2,2,2,2],[3,3,3,3]]» : Magma (Fin 4) where
  op := memoFinOp fun x y => [[3,2,2,3],[3,2,2,3],[2,2,2,2],[3,3,3,3]][x.val]![y.val]!

/-! The facts -/
@[equational_result]
theorem «Facts from FinitePoly [[3,2,2,3],[3,2,2,3],[2,2,2,2],[3,3,3,3]]» :
  ∃ (G : Type) (_ : Magma G), Facts G [3919, 3929] [3254, 3255, 3256, 3258, 3259, 3261, 3262, 3268, 3269, 3271, 3272, 3278, 3279, 3281, 3308, 3315, 3318, 3342, 3343, 3345, 3346, 3352, 3353, 3458, 3459, 3461, 3462, 3464, 3465, 3472, 3474, 3475, 3481, 3482, 3484, 3509, 3518, 3519, 3545, 3546, 3548, 3549, 3555, 3556, 3558, 3664, 3665, 3667, 3668, 3674, 3675, 3677, 3678, 3684, 3685, 3687, 3712, 3714, 3748, 3749, 3752, 3759, 3761, 3864, 3865, 3867, 3868, 3870, 3871, 3877, 3878, 3880, 3881, 3887, 3888, 3890, 3915, 3924, 3925, 3951, 3952, 3954, 3955, 3961, 3962, 3964, 4070, 4071, 4073, 4074, 4080, 4081, 4083, 4084, 4090, 4091, 4093, 4118, 4120, 4121, 4155, 4157, 4158, 4164, 4165, 4167, 4268, 4269, 4270, 4272, 4273, 4275, 4276, 4283, 4314, 4396, 4435, 4436] :=
    ⟨Fin 4, «FinitePoly [[3,2,2,3],[3,2,2,3],[2,2,2,2],[3,3,3,3]]», by decideFin!⟩
