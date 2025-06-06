; NOTE: Assertions have been autogenerated by utils/update_test_checks.py UTC_ARGS: --version 5
; RUN: opt < %s -passes=msan -S | FileCheck %s
;
; Forked from llvm/test/CodeGen/AArch64/arm64-uminv.ll

target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64--linux-android9001"

define signext i8 @test_vmaxv_s8(<8 x i8> %a1) #0 {
; CHECK-LABEL: define signext i8 @test_vmaxv_s8(
; CHECK-SAME: <8 x i8> [[A1:%.*]]) #[[ATTR0:[0-9]+]] {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = load <8 x i8>, ptr @__msan_param_tls, align 8
; CHECK-NEXT:    call void @llvm.donothing()
; CHECK-NEXT:    [[TMP1:%.*]] = call i8 @llvm.vector.reduce.or.v8i8(<8 x i8> [[TMP0]])
; CHECK-NEXT:    [[TMP2:%.*]] = zext i8 [[TMP1]] to i32
; CHECK-NEXT:    [[VMAXV_I:%.*]] = tail call i32 @llvm.aarch64.neon.smaxv.i32.v8i8(<8 x i8> [[A1]])
; CHECK-NEXT:    [[_MSPROP:%.*]] = trunc i32 [[TMP2]] to i8
; CHECK-NEXT:    [[TMP4:%.*]] = trunc i32 [[VMAXV_I]] to i8
; CHECK-NEXT:    store i8 [[_MSPROP]], ptr @__msan_retval_tls, align 8
; CHECK-NEXT:    ret i8 [[TMP4]]
;
entry:
  %vmaxv.i = tail call i32 @llvm.aarch64.neon.smaxv.i32.v8i8(<8 x i8> %a1)
  %0 = trunc i32 %vmaxv.i to i8
  ret i8 %0
}

define signext i16 @test_vmaxv_s16(<4 x i16> %a1) #0 {
; CHECK-LABEL: define signext i16 @test_vmaxv_s16(
; CHECK-SAME: <4 x i16> [[A1:%.*]]) #[[ATTR0]] {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = load <4 x i16>, ptr @__msan_param_tls, align 8
; CHECK-NEXT:    call void @llvm.donothing()
; CHECK-NEXT:    [[TMP1:%.*]] = call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> [[TMP0]])
; CHECK-NEXT:    [[TMP2:%.*]] = zext i16 [[TMP1]] to i32
; CHECK-NEXT:    [[VMAXV_I:%.*]] = tail call i32 @llvm.aarch64.neon.smaxv.i32.v4i16(<4 x i16> [[A1]])
; CHECK-NEXT:    [[_MSPROP:%.*]] = trunc i32 [[TMP2]] to i16
; CHECK-NEXT:    [[TMP4:%.*]] = trunc i32 [[VMAXV_I]] to i16
; CHECK-NEXT:    store i16 [[_MSPROP]], ptr @__msan_retval_tls, align 8
; CHECK-NEXT:    ret i16 [[TMP4]]
;
entry:
  %vmaxv.i = tail call i32 @llvm.aarch64.neon.smaxv.i32.v4i16(<4 x i16> %a1)
  %0 = trunc i32 %vmaxv.i to i16
  ret i16 %0
}

define i32 @test_vmaxv_s32(<2 x i32> %a1) #0 {
; CHECK-LABEL: define i32 @test_vmaxv_s32(
; CHECK-SAME: <2 x i32> [[A1:%.*]]) #[[ATTR0]] {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = load <2 x i32>, ptr @__msan_param_tls, align 8
; CHECK-NEXT:    call void @llvm.donothing()
; CHECK-NEXT:    [[TMP1:%.*]] = call i32 @llvm.vector.reduce.or.v2i32(<2 x i32> [[TMP0]])
; CHECK-NEXT:    [[VMAXV_I:%.*]] = tail call i32 @llvm.aarch64.neon.smaxv.i32.v2i32(<2 x i32> [[A1]])
; CHECK-NEXT:    store i32 [[TMP1]], ptr @__msan_retval_tls, align 8
; CHECK-NEXT:    ret i32 [[VMAXV_I]]
;
entry:
  %vmaxv.i = tail call i32 @llvm.aarch64.neon.smaxv.i32.v2i32(<2 x i32> %a1)
  ret i32 %vmaxv.i
}

define signext i8 @test_vmaxvq_s8(<16 x i8> %a1) #0 {
; CHECK-LABEL: define signext i8 @test_vmaxvq_s8(
; CHECK-SAME: <16 x i8> [[A1:%.*]]) #[[ATTR0]] {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = load <16 x i8>, ptr @__msan_param_tls, align 8
; CHECK-NEXT:    call void @llvm.donothing()
; CHECK-NEXT:    [[TMP1:%.*]] = call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> [[TMP0]])
; CHECK-NEXT:    [[TMP2:%.*]] = zext i8 [[TMP1]] to i32
; CHECK-NEXT:    [[VMAXV_I:%.*]] = tail call i32 @llvm.aarch64.neon.smaxv.i32.v16i8(<16 x i8> [[A1]])
; CHECK-NEXT:    [[_MSPROP:%.*]] = trunc i32 [[TMP2]] to i8
; CHECK-NEXT:    [[TMP4:%.*]] = trunc i32 [[VMAXV_I]] to i8
; CHECK-NEXT:    store i8 [[_MSPROP]], ptr @__msan_retval_tls, align 8
; CHECK-NEXT:    ret i8 [[TMP4]]
;
entry:
  %vmaxv.i = tail call i32 @llvm.aarch64.neon.smaxv.i32.v16i8(<16 x i8> %a1)
  %0 = trunc i32 %vmaxv.i to i8
  ret i8 %0
}

define signext i16 @test_vmaxvq_s16(<8 x i16> %a1) #0 {
; CHECK-LABEL: define signext i16 @test_vmaxvq_s16(
; CHECK-SAME: <8 x i16> [[A1:%.*]]) #[[ATTR0]] {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = load <8 x i16>, ptr @__msan_param_tls, align 8
; CHECK-NEXT:    call void @llvm.donothing()
; CHECK-NEXT:    [[TMP1:%.*]] = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> [[TMP0]])
; CHECK-NEXT:    [[TMP2:%.*]] = zext i16 [[TMP1]] to i32
; CHECK-NEXT:    [[VMAXV_I:%.*]] = tail call i32 @llvm.aarch64.neon.smaxv.i32.v8i16(<8 x i16> [[A1]])
; CHECK-NEXT:    [[_MSPROP:%.*]] = trunc i32 [[TMP2]] to i16
; CHECK-NEXT:    [[TMP4:%.*]] = trunc i32 [[VMAXV_I]] to i16
; CHECK-NEXT:    store i16 [[_MSPROP]], ptr @__msan_retval_tls, align 8
; CHECK-NEXT:    ret i16 [[TMP4]]
;
entry:
  %vmaxv.i = tail call i32 @llvm.aarch64.neon.smaxv.i32.v8i16(<8 x i16> %a1)
  %0 = trunc i32 %vmaxv.i to i16
  ret i16 %0
}

define i32 @test_vmaxvq_s32(<4 x i32> %a1) #0 {
; CHECK-LABEL: define i32 @test_vmaxvq_s32(
; CHECK-SAME: <4 x i32> [[A1:%.*]]) #[[ATTR0]] {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = load <4 x i32>, ptr @__msan_param_tls, align 8
; CHECK-NEXT:    call void @llvm.donothing()
; CHECK-NEXT:    [[TMP1:%.*]] = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> [[TMP0]])
; CHECK-NEXT:    [[VMAXV_I:%.*]] = tail call i32 @llvm.aarch64.neon.smaxv.i32.v4i32(<4 x i32> [[A1]])
; CHECK-NEXT:    store i32 [[TMP1]], ptr @__msan_retval_tls, align 8
; CHECK-NEXT:    ret i32 [[VMAXV_I]]
;
entry:
  %vmaxv.i = tail call i32 @llvm.aarch64.neon.smaxv.i32.v4i32(<4 x i32> %a1)
  ret i32 %vmaxv.i
}

define <8 x i8> @test_vmaxv_s8_used_by_laneop(<8 x i8> %a1, <8 x i8> %a2) #0 {
; CHECK-LABEL: define <8 x i8> @test_vmaxv_s8_used_by_laneop(
; CHECK-SAME: <8 x i8> [[A1:%.*]], <8 x i8> [[A2:%.*]]) #[[ATTR0]] {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = load <8 x i8>, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__msan_param_tls to i64), i64 8) to ptr), align 8
; CHECK-NEXT:    [[TMP1:%.*]] = load <8 x i8>, ptr @__msan_param_tls, align 8
; CHECK-NEXT:    call void @llvm.donothing()
; CHECK-NEXT:    [[TMP2:%.*]] = call i8 @llvm.vector.reduce.or.v8i8(<8 x i8> [[TMP0]])
; CHECK-NEXT:    [[TMP3:%.*]] = zext i8 [[TMP2]] to i32
; CHECK-NEXT:    [[TMP5:%.*]] = tail call i32 @llvm.aarch64.neon.smaxv.i32.v8i8(<8 x i8> [[A2]])
; CHECK-NEXT:    [[_MSPROP1:%.*]] = trunc i32 [[TMP3]] to i8
; CHECK-NEXT:    [[TMP6:%.*]] = trunc i32 [[TMP5]] to i8
; CHECK-NEXT:    [[_MSPROP:%.*]] = insertelement <8 x i8> [[TMP1]], i8 [[_MSPROP1]], i32 3
; CHECK-NEXT:    [[TMP7:%.*]] = insertelement <8 x i8> [[A1]], i8 [[TMP6]], i32 3
; CHECK-NEXT:    store <8 x i8> [[_MSPROP]], ptr @__msan_retval_tls, align 8
; CHECK-NEXT:    ret <8 x i8> [[TMP7]]
;
entry:
  %0 = tail call i32 @llvm.aarch64.neon.smaxv.i32.v8i8(<8 x i8> %a2)
  %1 = trunc i32 %0 to i8
  %2 = insertelement <8 x i8> %a1, i8 %1, i32 3
  ret <8 x i8> %2
}

define <4 x i16> @test_vmaxv_s16_used_by_laneop(<4 x i16> %a1, <4 x i16> %a2) #0 {
; CHECK-LABEL: define <4 x i16> @test_vmaxv_s16_used_by_laneop(
; CHECK-SAME: <4 x i16> [[A1:%.*]], <4 x i16> [[A2:%.*]]) #[[ATTR0]] {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = load <4 x i16>, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__msan_param_tls to i64), i64 8) to ptr), align 8
; CHECK-NEXT:    [[TMP1:%.*]] = load <4 x i16>, ptr @__msan_param_tls, align 8
; CHECK-NEXT:    call void @llvm.donothing()
; CHECK-NEXT:    [[TMP2:%.*]] = call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> [[TMP0]])
; CHECK-NEXT:    [[TMP3:%.*]] = zext i16 [[TMP2]] to i32
; CHECK-NEXT:    [[TMP5:%.*]] = tail call i32 @llvm.aarch64.neon.smaxv.i32.v4i16(<4 x i16> [[A2]])
; CHECK-NEXT:    [[_MSPROP1:%.*]] = trunc i32 [[TMP3]] to i16
; CHECK-NEXT:    [[TMP6:%.*]] = trunc i32 [[TMP5]] to i16
; CHECK-NEXT:    [[_MSPROP:%.*]] = insertelement <4 x i16> [[TMP1]], i16 [[_MSPROP1]], i32 3
; CHECK-NEXT:    [[TMP7:%.*]] = insertelement <4 x i16> [[A1]], i16 [[TMP6]], i32 3
; CHECK-NEXT:    store <4 x i16> [[_MSPROP]], ptr @__msan_retval_tls, align 8
; CHECK-NEXT:    ret <4 x i16> [[TMP7]]
;
entry:
  %0 = tail call i32 @llvm.aarch64.neon.smaxv.i32.v4i16(<4 x i16> %a2)
  %1 = trunc i32 %0 to i16
  %2 = insertelement <4 x i16> %a1, i16 %1, i32 3
  ret <4 x i16> %2
}

define <2 x i32> @test_vmaxv_s32_used_by_laneop(<2 x i32> %a1, <2 x i32> %a2) #0 {
; CHECK-LABEL: define <2 x i32> @test_vmaxv_s32_used_by_laneop(
; CHECK-SAME: <2 x i32> [[A1:%.*]], <2 x i32> [[A2:%.*]]) #[[ATTR0]] {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = load <2 x i32>, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__msan_param_tls to i64), i64 8) to ptr), align 8
; CHECK-NEXT:    [[TMP1:%.*]] = load <2 x i32>, ptr @__msan_param_tls, align 8
; CHECK-NEXT:    call void @llvm.donothing()
; CHECK-NEXT:    [[TMP2:%.*]] = call i32 @llvm.vector.reduce.or.v2i32(<2 x i32> [[TMP0]])
; CHECK-NEXT:    [[TMP5:%.*]] = tail call i32 @llvm.aarch64.neon.smaxv.i32.v2i32(<2 x i32> [[A2]])
; CHECK-NEXT:    [[_MSPROP:%.*]] = insertelement <2 x i32> [[TMP1]], i32 [[TMP2]], i32 1
; CHECK-NEXT:    [[TMP6:%.*]] = insertelement <2 x i32> [[A1]], i32 [[TMP5]], i32 1
; CHECK-NEXT:    store <2 x i32> [[_MSPROP]], ptr @__msan_retval_tls, align 8
; CHECK-NEXT:    ret <2 x i32> [[TMP6]]
;
entry:
  %0 = tail call i32 @llvm.aarch64.neon.smaxv.i32.v2i32(<2 x i32> %a2)
  %1 = insertelement <2 x i32> %a1, i32 %0, i32 1
  ret <2 x i32> %1
}

define <16 x i8> @test_vmaxvq_s8_used_by_laneop(<16 x i8> %a1, <16 x i8> %a2) #0 {
; CHECK-LABEL: define <16 x i8> @test_vmaxvq_s8_used_by_laneop(
; CHECK-SAME: <16 x i8> [[A1:%.*]], <16 x i8> [[A2:%.*]]) #[[ATTR0]] {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = load <16 x i8>, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__msan_param_tls to i64), i64 16) to ptr), align 8
; CHECK-NEXT:    [[TMP1:%.*]] = load <16 x i8>, ptr @__msan_param_tls, align 8
; CHECK-NEXT:    call void @llvm.donothing()
; CHECK-NEXT:    [[TMP2:%.*]] = call i8 @llvm.vector.reduce.or.v16i8(<16 x i8> [[TMP0]])
; CHECK-NEXT:    [[TMP3:%.*]] = zext i8 [[TMP2]] to i32
; CHECK-NEXT:    [[TMP5:%.*]] = tail call i32 @llvm.aarch64.neon.smaxv.i32.v16i8(<16 x i8> [[A2]])
; CHECK-NEXT:    [[_MSPROP1:%.*]] = trunc i32 [[TMP3]] to i8
; CHECK-NEXT:    [[TMP6:%.*]] = trunc i32 [[TMP5]] to i8
; CHECK-NEXT:    [[_MSPROP:%.*]] = insertelement <16 x i8> [[TMP1]], i8 [[_MSPROP1]], i32 3
; CHECK-NEXT:    [[TMP7:%.*]] = insertelement <16 x i8> [[A1]], i8 [[TMP6]], i32 3
; CHECK-NEXT:    store <16 x i8> [[_MSPROP]], ptr @__msan_retval_tls, align 8
; CHECK-NEXT:    ret <16 x i8> [[TMP7]]
;
entry:
  %0 = tail call i32 @llvm.aarch64.neon.smaxv.i32.v16i8(<16 x i8> %a2)
  %1 = trunc i32 %0 to i8
  %2 = insertelement <16 x i8> %a1, i8 %1, i32 3
  ret <16 x i8> %2
}

define <8 x i16> @test_vmaxvq_s16_used_by_laneop(<8 x i16> %a1, <8 x i16> %a2) #0 {
; CHECK-LABEL: define <8 x i16> @test_vmaxvq_s16_used_by_laneop(
; CHECK-SAME: <8 x i16> [[A1:%.*]], <8 x i16> [[A2:%.*]]) #[[ATTR0]] {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = load <8 x i16>, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__msan_param_tls to i64), i64 16) to ptr), align 8
; CHECK-NEXT:    [[TMP1:%.*]] = load <8 x i16>, ptr @__msan_param_tls, align 8
; CHECK-NEXT:    call void @llvm.donothing()
; CHECK-NEXT:    [[TMP2:%.*]] = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> [[TMP0]])
; CHECK-NEXT:    [[TMP3:%.*]] = zext i16 [[TMP2]] to i32
; CHECK-NEXT:    [[TMP5:%.*]] = tail call i32 @llvm.aarch64.neon.smaxv.i32.v8i16(<8 x i16> [[A2]])
; CHECK-NEXT:    [[_MSPROP1:%.*]] = trunc i32 [[TMP3]] to i16
; CHECK-NEXT:    [[TMP6:%.*]] = trunc i32 [[TMP5]] to i16
; CHECK-NEXT:    [[_MSPROP:%.*]] = insertelement <8 x i16> [[TMP1]], i16 [[_MSPROP1]], i32 3
; CHECK-NEXT:    [[TMP7:%.*]] = insertelement <8 x i16> [[A1]], i16 [[TMP6]], i32 3
; CHECK-NEXT:    store <8 x i16> [[_MSPROP]], ptr @__msan_retval_tls, align 8
; CHECK-NEXT:    ret <8 x i16> [[TMP7]]
;
entry:
  %0 = tail call i32 @llvm.aarch64.neon.smaxv.i32.v8i16(<8 x i16> %a2)
  %1 = trunc i32 %0 to i16
  %2 = insertelement <8 x i16> %a1, i16 %1, i32 3
  ret <8 x i16> %2
}

define <4 x i32> @test_vmaxvq_s32_used_by_laneop(<4 x i32> %a1, <4 x i32> %a2) #0 {
; CHECK-LABEL: define <4 x i32> @test_vmaxvq_s32_used_by_laneop(
; CHECK-SAME: <4 x i32> [[A1:%.*]], <4 x i32> [[A2:%.*]]) #[[ATTR0]] {
; CHECK-NEXT:  [[ENTRY:.*:]]
; CHECK-NEXT:    [[TMP0:%.*]] = load <4 x i32>, ptr inttoptr (i64 add (i64 ptrtoint (ptr @__msan_param_tls to i64), i64 16) to ptr), align 8
; CHECK-NEXT:    [[TMP1:%.*]] = load <4 x i32>, ptr @__msan_param_tls, align 8
; CHECK-NEXT:    call void @llvm.donothing()
; CHECK-NEXT:    [[TMP2:%.*]] = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> [[TMP0]])
; CHECK-NEXT:    [[TMP5:%.*]] = tail call i32 @llvm.aarch64.neon.smaxv.i32.v4i32(<4 x i32> [[A2]])
; CHECK-NEXT:    [[_MSPROP:%.*]] = insertelement <4 x i32> [[TMP1]], i32 [[TMP2]], i32 3
; CHECK-NEXT:    [[TMP6:%.*]] = insertelement <4 x i32> [[A1]], i32 [[TMP5]], i32 3
; CHECK-NEXT:    store <4 x i32> [[_MSPROP]], ptr @__msan_retval_tls, align 8
; CHECK-NEXT:    ret <4 x i32> [[TMP6]]
;
entry:
  %0 = tail call i32 @llvm.aarch64.neon.smaxv.i32.v4i32(<4 x i32> %a2)
  %1 = insertelement <4 x i32> %a1, i32 %0, i32 3
  ret <4 x i32> %1
}

declare i32 @llvm.aarch64.neon.smaxv.i32.v4i32(<4 x i32>)
declare i32 @llvm.aarch64.neon.smaxv.i32.v8i16(<8 x i16>)
declare i32 @llvm.aarch64.neon.smaxv.i32.v16i8(<16 x i8>)
declare i32 @llvm.aarch64.neon.smaxv.i32.v2i32(<2 x i32>)
declare i32 @llvm.aarch64.neon.smaxv.i32.v4i16(<4 x i16>)
declare i32 @llvm.aarch64.neon.smaxv.i32.v8i8(<8 x i8>)

attributes #0 = { sanitize_memory }
