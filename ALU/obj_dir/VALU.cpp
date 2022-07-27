// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "VALU.h"
#include "VALU__Syms.h"

//============================================================
// Constructors

VALU::VALU(VerilatedContext* _vcontextp__, const char* _vcname__)
    : vlSymsp{new VALU__Syms(_vcontextp__, _vcname__, this)}
    , A3{vlSymsp->TOP.A3}
    , B3{vlSymsp->TOP.B3}
    , A2{vlSymsp->TOP.A2}
    , B2{vlSymsp->TOP.B2}
    , A1{vlSymsp->TOP.A1}
    , B1{vlSymsp->TOP.B1}
    , A0{vlSymsp->TOP.A0}
    , B0{vlSymsp->TOP.B0}
    , Sel1{vlSymsp->TOP.Sel1}
    , Sel0{vlSymsp->TOP.Sel0}
    , Cin{vlSymsp->TOP.Cin}
    , V3{vlSymsp->TOP.V3}
    , Cout{vlSymsp->TOP.Cout}
    , V2{vlSymsp->TOP.V2}
    , V1{vlSymsp->TOP.V1}
    , V0{vlSymsp->TOP.V0}
    , rootp{&(vlSymsp->TOP)}
{
}

VALU::VALU(const char* _vcname__)
    : VALU(nullptr, _vcname__)
{
}

//============================================================
// Destructor

VALU::~VALU() {
    delete vlSymsp;
}

//============================================================
// Evaluation loop

void VALU___024root___eval_initial(VALU___024root* vlSelf);
void VALU___024root___eval_settle(VALU___024root* vlSelf);
void VALU___024root___eval(VALU___024root* vlSelf);
#ifdef VL_DEBUG
void VALU___024root___eval_debug_assertions(VALU___024root* vlSelf);
#endif  // VL_DEBUG
void VALU___024root___final(VALU___024root* vlSelf);

static void _eval_initial_loop(VALU__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    VALU___024root___eval_initial(&(vlSymsp->TOP));
    // Evaluate till stable
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial loop\n"););
        VALU___024root___eval_settle(&(vlSymsp->TOP));
        VALU___024root___eval(&(vlSymsp->TOP));
    } while (0);
}

void VALU::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VALU::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    VALU___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        VALU___024root___eval(&(vlSymsp->TOP));
    } while (0);
    // Evaluate cleanup
}

//============================================================
// Utilities

VerilatedContext* VALU::contextp() const {
    return vlSymsp->_vm_contextp__;
}

const char* VALU::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

VL_ATTR_COLD void VALU::final() {
    VALU___024root___final(&(vlSymsp->TOP));
}
