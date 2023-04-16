; ModuleID = 'probe3.fdac6d50-cgu.0'
source_filename = "probe3.fdac6d50-cgu.0"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"
target triple = "riscv64"

; core::f64::<impl f64>::to_int_unchecked
; Function Attrs: inlinehint nounwind
define dso_local i32 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$16to_int_unchecked17h33d65747d8a0847aE"(double %self) unnamed_addr #0 {
start:
; call <f64 as core::convert::num::FloatToInt<i32>>::to_int_unchecked
  %0 = call i32 @"_ZN65_$LT$f64$u20$as$u20$core..convert..num..FloatToInt$LT$i32$GT$$GT$16to_int_unchecked17h0fcf3131d2ec3296E"(double %self) #2
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; <f64 as core::convert::num::FloatToInt<i32>>::to_int_unchecked
; Function Attrs: inlinehint nounwind
define internal i32 @"_ZN65_$LT$f64$u20$as$u20$core..convert..num..FloatToInt$LT$i32$GT$$GT$16to_int_unchecked17h0fcf3131d2ec3296E"(double %self) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %1 = fptosi double %self to i32
  store i32 %1, i32* %0, align 4
  %2 = load i32, i32* %0, align 4
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %2
}

; probe3::probe
; Function Attrs: nounwind
define dso_local void @_ZN6probe35probe17h2a7088c3a945a785E() unnamed_addr #1 {
start:
; call core::f64::<impl f64>::to_int_unchecked
  %_1 = call i32 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$16to_int_unchecked17h33d65747d8a0847aE"(double 1.000000e+00) #2
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

attributes #0 = { inlinehint nounwind "frame-pointer"="all" "target-cpu"="generic-rv64" "target-features"="+m,+a,+f,+d,+c" }
attributes #1 = { nounwind "frame-pointer"="all" "target-cpu"="generic-rv64" "target-features"="+m,+a,+f,+d,+c" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}

!0 = !{i32 1, !"Code Model", i32 3}
