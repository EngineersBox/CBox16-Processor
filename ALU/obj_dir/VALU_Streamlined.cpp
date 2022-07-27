// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "VALU_Streamlined.h"
#include "VALU_Streamlined__Syms.h"

//============================================================
// Constructors

VALU_Streamlined::VALU_Streamlined(VerilatedContext* _vcontextp__, const char* _vcname__)
    : vlSymsp{new VALU_Streamlined__Syms(_vcontextp__, _vcname__, this)}
    , sel{vlSymsp->TOP.sel}
    , in_0{vlSymsp->TOP.in_0}
    , in_1{vlSymsp->TOP.in_1}
    , out{vlSymsp->TOP.out}
    , DIG_Add__02Ea{vlSymsp->TOP.DIG_Add__02Ea}
    , DIG_Add__02Eb{vlSymsp->TOP.DIG_Add__02Eb}
    , DIG_Add__02Ec_i{vlSymsp->TOP.DIG_Add__02Ec_i}
    , DIG_Add__02Es{vlSymsp->TOP.DIG_Add__02Es}
    , DIG_Add__02Ec_o{vlSymsp->TOP.DIG_Add__02Ec_o}
    , DIG_Sub__02Ea{vlSymsp->TOP.DIG_Sub__02Ea}
    , DIG_Sub__02Eb{vlSymsp->TOP.DIG_Sub__02Eb}
    , DIG_Sub__02Ec_i{vlSymsp->TOP.DIG_Sub__02Ec_i}
    , DIG_Sub__02Es{vlSymsp->TOP.DIG_Sub__02Es}
    , DIG_Sub__02Ec_o{vlSymsp->TOP.DIG_Sub__02Ec_o}
    , DIG_Mul_unsigned__02Ea{vlSymsp->TOP.DIG_Mul_unsigned__02Ea}
    , DIG_Mul_unsigned__02Eb{vlSymsp->TOP.DIG_Mul_unsigned__02Eb}
    , mul{vlSymsp->TOP.mul}
    , rootp{&(vlSymsp->TOP)}
{
}

VALU_Streamlined::VALU_Streamlined(const char* _vcname__)
    : VALU_Streamlined(nullptr, _vcname__)
{
}

//============================================================
// Destructor

VALU_Streamlined::~VALU_Streamlined() {
    delete vlSymsp;
}

//============================================================
// Evaluation loop

void VALU_Streamlined___024root___eval_initial(VALU_Streamlined___024root* vlSelf);
void VALU_Streamlined___024root___eval_settle(VALU_Streamlined___024root* vlSelf);
void VALU_Streamlined___024root___eval(VALU_Streamlined___024root* vlSelf);
#ifdef VL_DEBUG
void VALU_Streamlined___024root___eval_debug_assertions(VALU_Streamlined___024root* vlSelf);
#endif  // VL_DEBUG
void VALU_Streamlined___024root___final(VALU_Streamlined___024root* vlSelf);

static void _eval_initial_loop(VALU_Streamlined__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    VALU_Streamlined___024root___eval_initial(&(vlSymsp->TOP));
    // Evaluate till stable
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial loop\n"););
        VALU_Streamlined___024root___eval_settle(&(vlSymsp->TOP));
        VALU_Streamlined___024root___eval(&(vlSymsp->TOP));
    } while (0);
}

void VALU_Streamlined::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VALU_Streamlined::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    VALU_Streamlined___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        VALU_Streamlined___024root___eval(&(vlSymsp->TOP));
    } while (0);
    // Evaluate cleanup
}

//============================================================
// Utilities

VerilatedContext* VALU_Streamlined::contextp() const {
    return vlSymsp->_vm_contextp__;
}

const char* VALU_Streamlined::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

VL_ATTR_COLD void VALU_Streamlined::final() {
    VALU_Streamlined___024root___final(&(vlSymsp->TOP));
}
