; ModuleID = 'probe5.3deaf57f-cgu.0'
source_filename = "probe5.3deaf57f-cgu.0"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"
target triple = "riscv64"

; probe5::probe
; Function Attrs: nounwind
define dso_local void @_ZN6probe55probe17he3fb9f720c2b8f69E() unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  store i32 1, i32* %0, align 4
  %1 = load i32, i32* %0, align 4
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

attributes #0 = { nounwind "frame-pointer"="all" "target-cpu"="generic-rv64" "target-features"="+m,+a,+f,+d,+c" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}

!0 = !{i32 1, !"Code Model", i32 3}
