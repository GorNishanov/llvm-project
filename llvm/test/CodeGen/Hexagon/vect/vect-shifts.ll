; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -march=hexagon < %s | FileCheck %s

define <4 x i8> @f0(<4 x i8> %a0) unnamed_addr #0 {
; CHECK-LABEL: f0:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     r1:0 = vsxtbh(r0)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     r1:0 = vasrh(r1:0,#1)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     r0 = vtrunehb(r1:0)
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = ashr <4 x i8> %a0, <i8 1, i8 1, i8 1, i8 1>
  ret <4 x i8> %v0
}

define <4 x i8> @f1(<4 x i8> %a0) unnamed_addr #0 {
; CHECK-LABEL: f1:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     r1:0 = vzxtbh(r0)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     r1:0 = vlsrh(r1:0,#1)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     r0 = vtrunehb(r1:0)
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = lshr <4 x i8> %a0, <i8 1, i8 1, i8 1, i8 1>
  ret <4 x i8> %v0
}

define <4 x i8> @f2(<4 x i8> %a0) unnamed_addr #0 {
; CHECK-LABEL: f2:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     r1:0 = vzxtbh(r0)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     r1:0 = vaslh(r1:0,#1)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     r0 = vtrunehb(r1:0)
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = shl <4 x i8> %a0, <i8 1, i8 1, i8 1, i8 1>
  ret <4 x i8> %v0
}


define <8 x i8> @f3(<8 x i8> %a0) unnamed_addr #0 {
; CHECK-LABEL: f3:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     r3:2 = vsxtbh(r1)
; CHECK-NEXT:     r5:4 = vsxtbh(r0)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     r1:0 = vasrh(r5:4,#1)
; CHECK-NEXT:     r3:2 = vasrh(r3:2,#1)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     r0 = vtrunehb(r1:0)
; CHECK-NEXT:     r1 = vtrunehb(r3:2)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = ashr <8 x i8> %a0, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  ret <8 x i8> %v0
}

define <8 x i8> @f4(<8 x i8> %a0) unnamed_addr #0 {
; CHECK-LABEL: f4:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     r3:2 = vzxtbh(r1)
; CHECK-NEXT:     r5:4 = vzxtbh(r0)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     r1:0 = vlsrh(r5:4,#1)
; CHECK-NEXT:     r3:2 = vlsrh(r3:2,#1)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     r0 = vtrunehb(r1:0)
; CHECK-NEXT:     r1 = vtrunehb(r3:2)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = lshr <8 x i8> %a0, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  ret <8 x i8> %v0
}

define <8 x i8> @f5(<8 x i8> %a0) unnamed_addr #0 {
; CHECK-LABEL: f5:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     r3:2 = vzxtbh(r1)
; CHECK-NEXT:     r5:4 = vzxtbh(r0)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     r1:0 = vaslh(r5:4,#1)
; CHECK-NEXT:     r3:2 = vaslh(r3:2,#1)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     r0 = vtrunehb(r1:0)
; CHECK-NEXT:     r1 = vtrunehb(r3:2)
; CHECK-NEXT:    }
; CHECK-NEXT:    {
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = shl <8 x i8> %a0, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  ret <8 x i8> %v0
}


define <2 x i16> @f6(<2 x i16> %a0) unnamed_addr #0 {
; CHECK-LABEL: f6:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     r1:0 = vasrh(r1:0,#1)
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = ashr <2 x i16> %a0, <i16 1, i16 1>
  ret <2 x i16> %v0
}

define <2 x i16> @f7(<2 x i16> %a0) unnamed_addr #0 {
; CHECK-LABEL: f7:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     r1:0 = vlsrh(r1:0,#1)
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = lshr <2 x i16> %a0, <i16 1, i16 1>
  ret <2 x i16> %v0
}

define <2 x i16> @f8(<2 x i16> %a0) unnamed_addr #0 {
; CHECK-LABEL: f8:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     r1:0 = vaslh(r1:0,#1)
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = shl <2 x i16> %a0, <i16 1, i16 1>
  ret <2 x i16> %v0
}


define <4 x i16> @f9(<4 x i16> %a0) unnamed_addr #0 {
; CHECK-LABEL: f9:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     r1:0 = vasrh(r1:0,#1)
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = ashr <4 x i16> %a0, <i16 1, i16 1, i16 1, i16 1>
  ret <4 x i16> %v0
}

define <4 x i16> @f10(<4 x i16> %a0) unnamed_addr #0 {
; CHECK-LABEL: f10:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     r1:0 = vlsrh(r1:0,#1)
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = lshr <4 x i16> %a0, <i16 1, i16 1, i16 1, i16 1>
  ret <4 x i16> %v0
}

define <4 x i16> @f11(<4 x i16> %a0) unnamed_addr #0 {
; CHECK-LABEL: f11:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     r1:0 = vaslh(r1:0,#1)
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = shl <4 x i16> %a0, <i16 1, i16 1, i16 1, i16 1>
  ret <4 x i16> %v0
}


define <2 x i32> @f12(<2 x i32> %a0) unnamed_addr #0 {
; CHECK-LABEL: f12:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     r1:0 = vasrw(r1:0,#1)
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = ashr <2 x i32> %a0, <i32 1, i32 1>
  ret <2 x i32> %v0
}

define <2 x i32> @f13(<2 x i32> %a0) unnamed_addr #0 {
; CHECK-LABEL: f13:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     r1:0 = vlsrw(r1:0,#1)
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = lshr <2 x i32> %a0, <i32 1, i32 1>
  ret <2 x i32> %v0
}

define <2 x i32> @f14(<2 x i32> %a0) unnamed_addr #0 {
; CHECK-LABEL: f14:
; CHECK:       // %bb.0: // %b0
; CHECK-NEXT:    {
; CHECK-NEXT:     r1:0 = vaslw(r1:0,#1)
; CHECK-NEXT:     jumpr r31
; CHECK-NEXT:    }
b0:
  %v0 = shl <2 x i32> %a0, <i32 1, i32 1>
  ret <2 x i32> %v0
}

attributes #0 = { nounwind }
