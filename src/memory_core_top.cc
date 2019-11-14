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

// File: memory_core_top.cc

#include <garnet/garnet_top.h>

#include <garnet/memory_core_config.h>
#include <ilang/util/log.h>

namespace ilang {

void MemoryCoreInstrConfigReg(Ila& m);
void MemoryCoreStateIOPort(Ila& m);
void MemoryCoreStateConfigReg(Ila& m);

Ila GetMemoryCoreIla(const std::string& model_name) {
  auto m = Ila(model_name);

  // define interface
  MemoryCoreStateIOPort(m);

  // define architectural state
  MemoryCoreStateConfigReg(m);

  // define ILA valid function
  auto is_write_not_full =
      m.input(MEMORY_CORE_IO_WEN_IN) & ~m.state(MEMORY_CORE_IO_FULL);

  auto is_read_not_empty =
      m.input(MEMORY_CORE_IO_REN_IN) & ~m.state(MEMORY_CORE_IO_EMPTY);

  auto is_memory_mapped_address =
      (m.input(MEMORY_CORE_IO_ADDR_IN) >= MEMORY_CORE_ADDR_MIN) &
      (m.input(MEMORY_CORE_IO_ADDR_IN) < MEMORY_CORE_ADDR_MAX);

  auto is_chain_write = m.input(MEMORY_CORE_IO_CHAIN_WEN_IN) &
                        m.state(MEMORY_CORE_IO_CHAIN_VALID_OUT);

  // TODO stall, switch_db, flush

  m.SetValid(is_memory_mapped_address &
             (is_write_not_full | is_read_not_empty | is_chain_write));

  // define instructions - decode and state update function
  MemoryCoreInstrConfigReg(m);

  return m;
}

}; // namespace ilang
