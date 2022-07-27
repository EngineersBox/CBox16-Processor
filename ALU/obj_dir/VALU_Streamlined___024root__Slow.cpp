// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VALU_Streamlined.h for the primary calling header

#include "verilated.h"

#include "VALU_Streamlined__Syms.h"
#include "VALU_Streamlined___024root.h"

void VALU_Streamlined___024root___ctor_var_reset(VALU_Streamlined___024root* vlSelf);

VALU_Streamlined___024root::VALU_Streamlined___024root(VALU_Streamlined__Syms* symsp, const char* name)
    : VerilatedModule{name}
    , vlSymsp{symsp}
 {
    // Reset structure values
    VALU_Streamlined___024root___ctor_var_reset(this);
}

void VALU_Streamlined___024root::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

VALU_Streamlined___024root::~VALU_Streamlined___024root() {
}
