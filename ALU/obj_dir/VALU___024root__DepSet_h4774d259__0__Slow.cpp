// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VALU.h for the primary calling header

#include "verilated.h"

#include "VALU___024root.h"

VL_ATTR_COLD void VALU___024root___eval_initial(VALU___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VALU__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU___024root___eval_initial\n"); );
}

void VALU___024root___combo__TOP__0(VALU___024root* vlSelf);

VL_ATTR_COLD void VALU___024root___eval_settle(VALU___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VALU__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU___024root___eval_settle\n"); );
    // Body
    VALU___024root___combo__TOP__0(vlSelf);
}

VL_ATTR_COLD void VALU___024root___final(VALU___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VALU__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU___024root___final\n"); );
}

VL_ATTR_COLD void VALU___024root___ctor_var_reset(VALU___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VALU__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->A3 = VL_RAND_RESET_I(1);
    vlSelf->B3 = VL_RAND_RESET_I(1);
    vlSelf->A2 = VL_RAND_RESET_I(1);
    vlSelf->B2 = VL_RAND_RESET_I(1);
    vlSelf->A1 = VL_RAND_RESET_I(1);
    vlSelf->B1 = VL_RAND_RESET_I(1);
    vlSelf->A0 = VL_RAND_RESET_I(1);
    vlSelf->B0 = VL_RAND_RESET_I(1);
    vlSelf->Sel1 = VL_RAND_RESET_I(1);
    vlSelf->Sel0 = VL_RAND_RESET_I(1);
    vlSelf->Cin = VL_RAND_RESET_I(1);
    vlSelf->V3 = VL_RAND_RESET_I(1);
    vlSelf->Cout = VL_RAND_RESET_I(1);
    vlSelf->V2 = VL_RAND_RESET_I(1);
    vlSelf->V1 = VL_RAND_RESET_I(1);
    vlSelf->V0 = VL_RAND_RESET_I(1);
}
