// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VALU.h for the primary calling header

#ifndef VERILATED_VALU___024ROOT_H_
#define VERILATED_VALU___024ROOT_H_  // guard

#include "verilated.h"

class VALU__Syms;
VL_MODULE(VALU___024root) {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(A3,0,0);
    VL_IN8(B3,0,0);
    VL_IN8(A2,0,0);
    VL_IN8(B2,0,0);
    VL_IN8(A1,0,0);
    VL_IN8(B1,0,0);
    VL_IN8(A0,0,0);
    VL_IN8(B0,0,0);
    VL_IN8(Sel1,0,0);
    VL_IN8(Sel0,0,0);
    VL_IN8(Cin,0,0);
    VL_OUT8(V3,0,0);
    VL_OUT8(Cout,0,0);
    VL_OUT8(V2,0,0);
    VL_OUT8(V1,0,0);
    VL_OUT8(V0,0,0);

    // INTERNAL VARIABLES
    VALU__Syms* const vlSymsp;

    // CONSTRUCTORS
    VALU___024root(VALU__Syms* symsp, const char* name);
    ~VALU___024root();
    VL_UNCOPYABLE(VALU___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);


#endif  // guard
