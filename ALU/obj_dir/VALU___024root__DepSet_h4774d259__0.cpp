// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VALU.h for the primary calling header

#include "verilated.h"

#include "VALU___024root.h"

VL_INLINE_OPT void VALU___024root___combo__TOP__0(VALU___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VALU__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU___024root___combo__TOP__0\n"); );
    // Init
    CData/*0:0*/ ALU__DOT__s0;
    CData/*0:0*/ ALU__DOT__s1;
    CData/*0:0*/ ALU__DOT__s2;
    CData/*0:0*/ ALU__DOT__s4;
    CData/*1:0*/ ALU__DOT__s8;
    CData/*0:0*/ ALU__DOT__s9;
    CData/*0:0*/ ALU__DOT__s10;
    CData/*0:0*/ ALU__DOT__s11;
    CData/*0:0*/ ALU__DOT__s13;
    CData/*0:0*/ ALU__DOT__s16;
    CData/*0:0*/ ALU__DOT__s17;
    CData/*0:0*/ ALU__DOT__s18;
    CData/*0:0*/ ALU__DOT__s20;
    CData/*0:0*/ ALU__DOT__s23;
    CData/*0:0*/ ALU__DOT__s24;
    CData/*0:0*/ ALU__DOT__s25;
    CData/*0:0*/ ALU__DOT__s27;
    CData/*1:0*/ ALU__DOT__s30;
    // Body
    ALU__DOT__s30 = (((IData)(vlSelf->Sel1) << 1U) 
                     | (IData)(vlSelf->Sel0));
    ALU__DOT__s8 = (((3U == (IData)(ALU__DOT__s30)) 
                     << 1U) | (2U == (IData)(ALU__DOT__s30)));
    if ((1U == (IData)(ALU__DOT__s30))) {
        ALU__DOT__s0 = ((1U == (IData)(ALU__DOT__s30)) 
                        & (~ (IData)(vlSelf->B3)));
        ALU__DOT__s9 = ((1U == (IData)(ALU__DOT__s30)) 
                        & (~ (IData)(vlSelf->B2)));
        ALU__DOT__s16 = ((1U == (IData)(ALU__DOT__s30)) 
                         & (~ (IData)(vlSelf->B1)));
        ALU__DOT__s23 = ((1U == (IData)(ALU__DOT__s30)) 
                         & (~ (IData)(vlSelf->B0)));
    } else {
        ALU__DOT__s0 = vlSelf->B3;
        ALU__DOT__s9 = vlSelf->B2;
        ALU__DOT__s16 = vlSelf->B1;
        ALU__DOT__s23 = vlSelf->B0;
    }
    ALU__DOT__s25 = ((IData)(vlSelf->Cin) | (1U == (IData)(ALU__DOT__s30)));
    ALU__DOT__s1 = ((IData)(vlSelf->A3) ^ (IData)(ALU__DOT__s0));
    ALU__DOT__s4 = ((IData)(ALU__DOT__s0) & (IData)(vlSelf->A3));
    ALU__DOT__s10 = ((IData)(vlSelf->A2) ^ (IData)(ALU__DOT__s9));
    ALU__DOT__s13 = ((IData)(ALU__DOT__s9) & (IData)(vlSelf->A2));
    ALU__DOT__s17 = ((IData)(vlSelf->A1) ^ (IData)(ALU__DOT__s16));
    ALU__DOT__s20 = ((IData)(ALU__DOT__s16) & (IData)(vlSelf->A1));
    ALU__DOT__s24 = ((IData)(vlSelf->A0) ^ (IData)(ALU__DOT__s23));
    ALU__DOT__s27 = ((IData)(ALU__DOT__s23) & (IData)(vlSelf->A0));
    ALU__DOT__s18 = (((IData)(ALU__DOT__s25) & (IData)(ALU__DOT__s24)) 
                     | (IData)(ALU__DOT__s27));
    ALU__DOT__s11 = (((IData)(ALU__DOT__s18) & (IData)(ALU__DOT__s17)) 
                     | (IData)(ALU__DOT__s20));
    ALU__DOT__s2 = (((IData)(ALU__DOT__s11) & (IData)(ALU__DOT__s10)) 
                    | (IData)(ALU__DOT__s13));
    if ((2U & (IData)(ALU__DOT__s8))) {
        vlSelf->V0 = ((IData)(ALU__DOT__s24) | (IData)(ALU__DOT__s27));
        vlSelf->V1 = ((IData)(ALU__DOT__s17) | (IData)(ALU__DOT__s20));
        vlSelf->V2 = ((IData)(ALU__DOT__s10) | (IData)(ALU__DOT__s13));
        vlSelf->V3 = ((IData)(ALU__DOT__s1) | (IData)(ALU__DOT__s4));
    } else if ((1U & (IData)(ALU__DOT__s8))) {
        vlSelf->V0 = ALU__DOT__s27;
        vlSelf->V1 = ALU__DOT__s20;
        vlSelf->V2 = ALU__DOT__s13;
        vlSelf->V3 = ALU__DOT__s4;
    } else {
        vlSelf->V0 = ((IData)(ALU__DOT__s25) ^ (IData)(ALU__DOT__s24));
        vlSelf->V1 = ((IData)(ALU__DOT__s18) ^ (IData)(ALU__DOT__s17));
        vlSelf->V2 = ((IData)(ALU__DOT__s11) ^ (IData)(ALU__DOT__s10));
        vlSelf->V3 = ((IData)(ALU__DOT__s2) ^ (IData)(ALU__DOT__s1));
    }
    vlSelf->Cout = (((IData)(ALU__DOT__s2) & (IData)(ALU__DOT__s1)) 
                    | (IData)(ALU__DOT__s4));
}

void VALU___024root___eval(VALU___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VALU__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU___024root___eval\n"); );
    // Body
    VALU___024root___combo__TOP__0(vlSelf);
}

#ifdef VL_DEBUG
void VALU___024root___eval_debug_assertions(VALU___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    VALU__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VALU___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->A3 & 0xfeU))) {
        Verilated::overWidthError("A3");}
    if (VL_UNLIKELY((vlSelf->B3 & 0xfeU))) {
        Verilated::overWidthError("B3");}
    if (VL_UNLIKELY((vlSelf->A2 & 0xfeU))) {
        Verilated::overWidthError("A2");}
    if (VL_UNLIKELY((vlSelf->B2 & 0xfeU))) {
        Verilated::overWidthError("B2");}
    if (VL_UNLIKELY((vlSelf->A1 & 0xfeU))) {
        Verilated::overWidthError("A1");}
    if (VL_UNLIKELY((vlSelf->B1 & 0xfeU))) {
        Verilated::overWidthError("B1");}
    if (VL_UNLIKELY((vlSelf->A0 & 0xfeU))) {
        Verilated::overWidthError("A0");}
    if (VL_UNLIKELY((vlSelf->B0 & 0xfeU))) {
        Verilated::overWidthError("B0");}
    if (VL_UNLIKELY((vlSelf->Sel1 & 0xfeU))) {
        Verilated::overWidthError("Sel1");}
    if (VL_UNLIKELY((vlSelf->Sel0 & 0xfeU))) {
        Verilated::overWidthError("Sel0");}
    if (VL_UNLIKELY((vlSelf->Cin & 0xfeU))) {
        Verilated::overWidthError("Cin");}
}
#endif  // VL_DEBUG
