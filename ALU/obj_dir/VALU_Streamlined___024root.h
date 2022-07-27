// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VALU_Streamlined.h for the primary calling header

#ifndef VERILATED_VALU_STREAMLINED___024ROOT_H_
#define VERILATED_VALU_STREAMLINED___024ROOT_H_  // guard

#include "verilated.h"

class VALU_Streamlined__Syms;
VL_MODULE(VALU_Streamlined___024root) {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(sel,0,0);
    VL_IN8(in_0,1,0);
    VL_IN8(in_1,1,0);
    VL_OUT8(out,1,0);
    VL_IN8(DIG_Add__02Ea,0,0);
    VL_IN8(DIG_Add__02Eb,0,0);
    VL_IN8(DIG_Add__02Ec_i,0,0);
    VL_OUT8(DIG_Add__02Es,0,0);
    VL_OUT8(DIG_Add__02Ec_o,0,0);
    VL_IN8(DIG_Sub__02Ea,1,0);
    VL_IN8(DIG_Sub__02Eb,1,0);
    VL_IN8(DIG_Sub__02Ec_i,0,0);
    VL_OUT8(DIG_Sub__02Es,1,0);
    VL_OUT8(DIG_Sub__02Ec_o,0,0);
    VL_IN8(DIG_Mul_unsigned__02Ea,0,0);
    VL_IN8(DIG_Mul_unsigned__02Eb,0,0);
    VL_OUT8(mul,1,0);

    // INTERNAL VARIABLES
    VALU_Streamlined__Syms* const vlSymsp;

    // CONSTRUCTORS
    VALU_Streamlined___024root(VALU_Streamlined__Syms* symsp, const char* name);
    ~VALU_Streamlined___024root();
    VL_UNCOPYABLE(VALU_Streamlined___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);


#endif  // guard
