// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VALU_Streamlined.h for the primary calling header

#include "verilated.h"

#include "VALU_Streamlined___024root.h"

VL_INLINE_OPT void VALU_Streamlined___024root___combo__TOP__0(VALU_Streamlined___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VALU_Streamlined__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU_Streamlined___024root___combo__TOP__0\n"); );
    // Init
    CData/*1:0*/ DIG_Add__DOT__temp;
    CData/*2:0*/ DIG_Sub__DOT__temp;
    // Body
    vlSelf->mul = (3U & ((IData)(vlSelf->DIG_Mul_unsigned__02Ea) 
                         * (IData)(vlSelf->DIG_Mul_unsigned__02Eb)));
    vlSelf->out = ((IData)(vlSelf->sel) ? ((IData)(vlSelf->sel)
                                            ? (IData)(vlSelf->in_1)
                                            : 0U) : (IData)(vlSelf->in_0));
    DIG_Add__DOT__temp = (3U & (((IData)(vlSelf->DIG_Add__02Ea) 
                                 + (IData)(vlSelf->DIG_Add__02Eb)) 
                                + (IData)(vlSelf->DIG_Add__02Ec_i)));
    DIG_Sub__DOT__temp = (7U & (((IData)(vlSelf->DIG_Sub__02Ea) 
                                 - (IData)(vlSelf->DIG_Sub__02Eb)) 
                                - (IData)(vlSelf->DIG_Sub__02Ec_i)));
    vlSelf->DIG_Add__02Es = (1U & (IData)(DIG_Add__DOT__temp));
    vlSelf->DIG_Add__02Ec_o = (1U & ((IData)(DIG_Add__DOT__temp) 
                                     >> 1U));
    vlSelf->DIG_Sub__02Es = (3U & (IData)(DIG_Sub__DOT__temp));
    vlSelf->DIG_Sub__02Ec_o = (1U & ((IData)(DIG_Sub__DOT__temp) 
                                     >> 2U));
}

void VALU_Streamlined___024root___eval(VALU_Streamlined___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VALU_Streamlined__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU_Streamlined___024root___eval\n"); );
    // Body
    VALU_Streamlined___024root___combo__TOP__0(vlSelf);
}

#ifdef VL_DEBUG
void VALU_Streamlined___024root___eval_debug_assertions(VALU_Streamlined___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VALU_Streamlined__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU_Streamlined___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->sel & 0xfeU))) {
        Verilated::overWidthError("sel");}
    if (VL_UNLIKELY((vlSelf->in_0 & 0xfcU))) {
        Verilated::overWidthError("in_0");}
    if (VL_UNLIKELY((vlSelf->in_1 & 0xfcU))) {
        Verilated::overWidthError("in_1");}
    if (VL_UNLIKELY((vlSelf->DIG_Add__02Ea & 0xfeU))) {
        Verilated::overWidthError("DIG_Add.a");}
    if (VL_UNLIKELY((vlSelf->DIG_Add__02Eb & 0xfeU))) {
        Verilated::overWidthError("DIG_Add.b");}
    if (VL_UNLIKELY((vlSelf->DIG_Add__02Ec_i & 0xfeU))) {
        Verilated::overWidthError("DIG_Add.c_i");}
    if (VL_UNLIKELY((vlSelf->DIG_Sub__02Ea & 0xfcU))) {
        Verilated::overWidthError("DIG_Sub.a");}
    if (VL_UNLIKELY((vlSelf->DIG_Sub__02Eb & 0xfcU))) {
        Verilated::overWidthError("DIG_Sub.b");}
    if (VL_UNLIKELY((vlSelf->DIG_Sub__02Ec_i & 0xfeU))) {
        Verilated::overWidthError("DIG_Sub.c_i");}
    if (VL_UNLIKELY((vlSelf->DIG_Mul_unsigned__02Ea 
                     & 0xfeU))) {
        Verilated::overWidthError("DIG_Mul_unsigned.a");}
    if (VL_UNLIKELY((vlSelf->DIG_Mul_unsigned__02Eb 
                     & 0xfeU))) {
        Verilated::overWidthError("DIG_Mul_unsigned.b");}
}
#endif  // VL_DEBUG
