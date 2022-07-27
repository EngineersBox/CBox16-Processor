// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VALU__SYMS_H_
#define VERILATED_VALU__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "VALU.h"

// INCLUDE MODULE CLASSES
#include "VALU___024root.h"

// SYMS CLASS (contains all model state)
class VALU__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    VALU* const __Vm_modelp;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    VALU___024root                 TOP;

    // CONSTRUCTORS
    VALU__Syms(VerilatedContext* contextp, const char* namep, VALU* modelp);
    ~VALU__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
