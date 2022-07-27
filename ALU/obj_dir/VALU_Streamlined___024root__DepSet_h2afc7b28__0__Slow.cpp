// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VALU_Streamlined.h for the primary calling header

#include "verilated.h"

#include "VALU_Streamlined___024root.h"

VL_ATTR_COLD void VALU_Streamlined___024root___eval_initial(VALU_Streamlined___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VALU_Streamlined__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU_Streamlined___024root___eval_initial\n"); );
}

void VALU_Streamlined___024root___combo__TOP__0(VALU_Streamlined___024root* vlSelf);

VL_ATTR_COLD void VALU_Streamlined___024root___eval_settle(VALU_Streamlined___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VALU_Streamlined__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU_Streamlined___024root___eval_settle\n"); );
    // Body
    VALU_Streamlined___024root___combo__TOP__0(vlSelf);
}

VL_ATTR_COLD void VALU_Streamlined___024root___final(VALU_Streamlined___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VALU_Streamlined__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU_Streamlined___024root___final\n"); );
}

VL_ATTR_COLD void VALU_Streamlined___024root___ctor_var_reset(VALU_Streamlined___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VALU_Streamlined__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU_Streamlined___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->sel = VL_RAND_RESET_I(1);
    vlSelf->in_0 = VL_RAND_RESET_I(2);
    vlSelf->in_1 = VL_RAND_RESET_I(2);
    vlSelf->out = VL_RAND_RESET_I(2);
    vlSelf->DIG_Add__02Ea = VL_RAND_RESET_I(1);
    vlSelf->DIG_Add__02Eb = VL_RAND_RESET_I(1);
    vlSelf->DIG_Add__02Ec_i = VL_RAND_RESET_I(1);
    vlSelf->DIG_Add__02Es = VL_RAND_RESET_I(1);
    vlSelf->DIG_Add__02Ec_o = VL_RAND_RESET_I(1);
    vlSelf->DIG_Sub__02Ea = VL_RAND_RESET_I(2);
    vlSelf->DIG_Sub__02Eb = VL_RAND_RESET_I(2);
    vlSelf->DIG_Sub__02Ec_i = VL_RAND_RESET_I(1);
    vlSelf->DIG_Sub__02Es = VL_RAND_RESET_I(2);
    vlSelf->DIG_Sub__02Ec_o = VL_RAND_RESET_I(1);
    vlSelf->DIG_Mul_unsigned__02Ea = VL_RAND_RESET_I(1);
    vlSelf->DIG_Mul_unsigned__02Eb = VL_RAND_RESET_I(1);
    vlSelf->mul = VL_RAND_RESET_I(2);
}
