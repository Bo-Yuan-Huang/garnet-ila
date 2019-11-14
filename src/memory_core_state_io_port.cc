// =============================================================================
// MIT License
//
// Copyright (c) 2019 Princeton University
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
// =============================================================================

// File: memory_core_state_io_port.cc

#include <garnet/memory_core_config.h>
#include <ilang/ilang++.h>

namespace ilang {

void MemoryCoreStateIOPort(Ila& m) {

  // I/O ports are derived from the memory_core_magma.py
  // - updated 2019.11.13, Bo-Yuan Huang

  m.NewBvInput(MEMORY_CORE_IO_DATA_IN, MEMORY_CORE_IO_DATA_IN_WIDTH);

  m.NewBvInput(MEMORY_CORE_IO_ADDR_IN, MEMORY_CORE_IO_ADDR_IN_WIDTH);

  m.NewBvState(MEMORY_CORE_IO_DATA_OUT, MEMORY_CORE_IO_DATA_OUT_WIDTH);

  m.NewBvInput(MEMORY_CORE_IO_FLUSH, MEMORY_CORE_IO_FLUSH_WIDTH);

  m.NewBvInput(MEMORY_CORE_IO_WEN_IN, MEMORY_CORE_IO_WEN_IN_WIDTH);

  m.NewBvInput(MEMORY_CORE_IO_REN_IN, MEMORY_CORE_IO_REN_IN_WIDTH);

  m.NewBvState(MEMORY_CORE_IO_VALID_OUT, MEMORY_CORE_IO_VALID_OUT_WIDTH);

  m.NewBvInput(MEMORY_CORE_IO_SWITCH_DB, MEMORY_CORE_IO_SWITCH_DB_WIDTH);

  m.NewBvState(MEMORY_CORE_IO_ALMOST_FULL, MEMORY_CORE_IO_ALMOST_FULL_WIDTH);

  m.NewBvState(MEMORY_CORE_IO_ALMOST_EMPTY, MEMORY_CORE_IO_ALMOST_EMPTY_WIDTH);

  m.NewBvState(MEMORY_CORE_IO_FULL, MEMORY_CORE_IO_FULL_WIDTH);

  m.NewBvState(MEMORY_CORE_IO_EMPTY, MEMORY_CORE_IO_EMPTY_WIDTH);

  m.NewBvInput(MEMORY_CORE_IO_STALL, MEMORY_CORE_IO_STALL_WIDTH);

  m.NewBvInput(MEMORY_CORE_IO_CHAIN_WEN_IN, MEMORY_CORE_IO_CHAIN_WEN_IN_WIDTH);

  m.NewBvState(MEMORY_CORE_IO_CHAIN_VALID_OUT,
               MEMORY_CORE_IO_CHAIN_VALID_OUT_WIDTH);

  m.NewBvInput(MEMORY_CORE_IO_CHAIN_IN, MEMORY_CORE_IO_CHAIN_IN_WIDTH);

  m.NewBvState(MEMORY_CORE_IO_CHAIN_OUT, MEMORY_CORE_IO_CHAIN_OUT_WIDTH);
}

}; // namespace ilang
