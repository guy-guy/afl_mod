; ModuleID = 'test-instr.c'
source_filename = "test-instr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [30 x i8] c"A non-zero value? How quaint!\00"
@str.3 = private unnamed_addr constant [25 x i8] c"Looks like a zero to me!\00"
@str.4 = private unnamed_addr constant [5 x i8] c"Hum?\00"
@__afl_area_ptr = external global i8*
@__afl_prev_loc = external thread_local global i32

; Function Attrs: noreturn nounwind uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #0 !dbg !6 {
  %3 = load i32, i32* @__afl_prev_loc, !nosanitize !2
  %4 = load i8*, i8** @__afl_area_ptr, !nosanitize !2
  %5 = xor i32 %3, 40353
  %6 = getelementptr i8, i8* %4, i32 %5
  %7 = load i8, i8* %6, !nosanitize !2
  %8 = add i8 %7, 1
  store i8 %8, i8* %6, !nosanitize !2
  store i32 20176, i32* @__afl_prev_loc, !nosanitize !2
  %9 = alloca [8 x i8], align 1
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !14, metadata !20), !dbg !21
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !15, metadata !20), !dbg !22
  %10 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0, !dbg !23
  call void @llvm.lifetime.start(i64 8, i8* nonnull %10) #5, !dbg !23
  tail call void @llvm.dbg.declare(metadata [8 x i8]* %9, metadata !16, metadata !20), !dbg !24
  %11 = call i64 @read(i32 0, i8* nonnull %10, i64 8) #5, !dbg !25
  %12 = icmp slt i64 %11, 1, !dbg !27
  br i1 %12, label %13, label %21, !dbg !28

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* @__afl_prev_loc, !dbg !29, !nosanitize !2
  %15 = load i8*, i8** @__afl_area_ptr, !dbg !29, !nosanitize !2
  %16 = xor i32 %14, 33456, !dbg !29
  %17 = getelementptr i8, i8* %15, i32 %16, !dbg !29
  %18 = load i8, i8* %17, !dbg !29, !nosanitize !2
  %19 = add i8 %18, 1, !dbg !29
  store i8 %19, i8* %17, !dbg !29, !nosanitize !2
  store i32 16728, i32* @__afl_prev_loc, !dbg !29, !nosanitize !2
  %20 = tail call i32 @puts(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @str.4, i64 0, i64 0)), !dbg !29
  tail call void @exit(i32 1) #6, !dbg !31
  unreachable, !dbg !31

; <label>:21:                                     ; preds = %2
  %22 = load i32, i32* @__afl_prev_loc, !dbg !32, !nosanitize !2
  %23 = load i8*, i8** @__afl_area_ptr, !dbg !32, !nosanitize !2
  %24 = xor i32 %22, 49402, !dbg !32
  %25 = getelementptr i8, i8* %23, i32 %24, !dbg !32
  %26 = load i8, i8* %25, !dbg !32, !nosanitize !2
  %27 = add i8 %26, 1, !dbg !32
  store i8 %27, i8* %25, !dbg !32, !nosanitize !2
  store i32 24701, i32* @__afl_prev_loc, !dbg !32, !nosanitize !2
  %28 = load i8, i8* %10, align 1, !dbg !32, !tbaa !34
  %29 = icmp eq i8 %28, 48, !dbg !37
  br i1 %29, label %30, label %38, !dbg !38

; <label>:30:                                     ; preds = %21
  %31 = load i32, i32* @__afl_prev_loc, !dbg !39, !nosanitize !2
  %32 = load i8*, i8** @__afl_area_ptr, !dbg !39, !nosanitize !2
  %33 = xor i32 %31, 39556, !dbg !39
  %34 = getelementptr i8, i8* %32, i32 %33, !dbg !39
  %35 = load i8, i8* %34, !dbg !39, !nosanitize !2
  %36 = add i8 %35, 1, !dbg !39
  store i8 %36, i8* %34, !dbg !39, !nosanitize !2
  store i32 19778, i32* @__afl_prev_loc, !dbg !39, !nosanitize !2
  %37 = tail call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @str.3, i64 0, i64 0)), !dbg !39
  br label %46, !dbg !39

; <label>:38:                                     ; preds = %21
  %39 = load i32, i32* @__afl_prev_loc, !dbg !40, !nosanitize !2
  %40 = load i8*, i8** @__afl_area_ptr, !dbg !40, !nosanitize !2
  %41 = xor i32 %39, 2958, !dbg !40
  %42 = getelementptr i8, i8* %40, i32 %41, !dbg !40
  %43 = load i8, i8* %42, !dbg !40, !nosanitize !2
  %44 = add i8 %43, 1, !dbg !40
  store i8 %44, i8* %42, !dbg !40, !nosanitize !2
  store i32 1479, i32* @__afl_prev_loc, !dbg !40, !nosanitize !2
  %45 = tail call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @str, i64 0, i64 0)), !dbg !40
  br label %46

; <label>:46:                                     ; preds = %38, %30
  %47 = load i32, i32* @__afl_prev_loc, !dbg !41, !nosanitize !2
  %48 = load i8*, i8** @__afl_area_ptr, !dbg !41, !nosanitize !2
  %49 = xor i32 %47, 43454, !dbg !41
  %50 = getelementptr i8, i8* %48, i32 %49, !dbg !41
  %51 = load i8, i8* %50, !dbg !41, !nosanitize !2
  %52 = add i8 %51, 1, !dbg !41
  store i8 %52, i8* %50, !dbg !41, !nosanitize !2
  store i32 21727, i32* @__afl_prev_loc, !dbg !41, !nosanitize !2
  tail call void @exit(i32 0) #6, !dbg !41
  unreachable, !dbg !41
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #5

attributes #0 = { noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "test-instr.c", directory: "/home/guy/afl/afl")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!6 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 21, type: !7, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, unit: !0, variables: !13)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !9, !10}
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{!14, !15, !16}
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !6, file: !1, line: 21, type: !9)
!15 = !DILocalVariable(name: "argv", arg: 2, scope: !6, file: !1, line: 21, type: !10)
!16 = !DILocalVariable(name: "buf", scope: !6, file: !1, line: 23, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 8)
!20 = !DIExpression()
!21 = !DILocation(line: 21, column: 14, scope: !6)
!22 = !DILocation(line: 21, column: 27, scope: !6)
!23 = !DILocation(line: 23, column: 3, scope: !6)
!24 = !DILocation(line: 23, column: 8, scope: !6)
!25 = !DILocation(line: 25, column: 7, scope: !26)
!26 = distinct !DILexicalBlock(scope: !6, file: !1, line: 25, column: 7)
!27 = !DILocation(line: 25, column: 23, scope: !26)
!28 = !DILocation(line: 25, column: 7, scope: !6)
!29 = !DILocation(line: 26, column: 5, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 25, column: 28)
!31 = !DILocation(line: 27, column: 5, scope: !30)
!32 = !DILocation(line: 30, column: 7, scope: !33)
!33 = distinct !DILexicalBlock(scope: !6, file: !1, line: 30, column: 7)
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 30, column: 14, scope: !33)
!38 = !DILocation(line: 30, column: 7, scope: !6)
!39 = !DILocation(line: 31, column: 5, scope: !33)
!40 = !DILocation(line: 33, column: 5, scope: !33)
!41 = !DILocation(line: 35, column: 3, scope: !6)
