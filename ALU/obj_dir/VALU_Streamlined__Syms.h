// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VALU_STREAMLINED__SYMS_H_
#define VERILATED_VALU_STREAMLINED__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "VALU_Streamlined.h"

// INCLUDE MODULE CLASSES
#include "VALU_Streamlined___024root.h"

// SYMS CLASS (contains all model state)
class VALU_Streamlined__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    VALU_Streamlined* const __Vm_modelp;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    VALU_Streamlined___024root     TOP;

    // CONSTRUCTORS
    VALU_Streamlined__Syms(VerilatedContext* contextp, const char* namep, VALU_Streamlined* modelp);
    ~VALU_Streamlined__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
