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

// File: memory_core_state_config_reg.cc

#include <garnet/memory_core_config.h>
#include <ilang/ilang++.h>

namespace ilang {

void MemoryCoreStateConfigReg(Ila& m) {
  // define config reg state var derived from the memory_core README
  // - updated 2019.11.12, Bo-Yuan Huang

  m.NewBvState(MEMORY_CORE_REG_ALMOST_COUNT,
               MEMORY_CORE_REG_ALMOST_COUNT_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_ARBITRARY_ADDR,
               MEMORY_CORE_REG_ARBITRARY_ADDR_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_CHAIN_IDX, MEMORY_CORE_REG_CHAIN_IDX_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_CHAIN_WEN_IN_REG_SEL,
               MEMORY_CORE_REG_CHAIN_WEN_IN_REG_SEL_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_CHAIN_WEN_IN_REG_VALUE,
               MEMORY_CORE_REG_CHAIN_WEN_IN_REG_VALUE_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_CIRCULAR_EN, MEMORY_CORE_REG_CIRCULAR_EN_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_DEPTH, MEMORY_CORE_REG_DEPTH_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_DIMENSIONALITY,
               MEMORY_CORE_REG_DIMENSIONALITY_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_ENABLE_CHAIN,
               MEMORY_CORE_REG_ENABLE_CHAIN_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_FLUSH_REG_SEL,
               MEMORY_CORE_REG_FLUSH_REG_SEL_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_FLUSH_REG_VALUE,
               MEMORY_CORE_REG_FLUSH_REG_VALUE_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_ITER_CNT, MEMORY_CORE_REG_ITER_CNT_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_MODE, MEMORY_CORE_REG_MODE_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_RANGE_0, MEMORY_CORE_REG_RANGE_0_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_RANGE_1, MEMORY_CORE_REG_RANGE_1_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_RANGE_2, MEMORY_CORE_REG_RANGE_2_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_RANGE_3, MEMORY_CORE_REG_RANGE_3_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_RANGE_4, MEMORY_CORE_REG_RANGE_4_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_RANGE_5, MEMORY_CORE_REG_RANGE_5_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_RATE_MATCHED,
               MEMORY_CORE_REG_RATE_MATCHED_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_REN_IN_REG_SEL,
               MEMORY_CORE_REG_REN_IN_REG_SEL_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_REN_IN_REG_VALUE,
               MEMORY_CORE_REG_REN_IN_REG_VALUE_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_STARTING_ADDR,
               MEMORY_CORE_REG_STARTING_ADDR_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_STENCIL_WIDTH,
               MEMORY_CORE_REG_STENCIL_WIDTH_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_STRIDE_0, MEMORY_CORE_REG_STRIDE_0_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_STRIDE_1, MEMORY_CORE_REG_STRIDE_1_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_STRIDE_2, MEMORY_CORE_REG_STRIDE_2_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_STRIDE_3, MEMORY_CORE_REG_STRIDE_3_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_STRIDE_4, MEMORY_CORE_REG_STRIDE_4_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_STRIDE_5, MEMORY_CORE_REG_STRIDE_5_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_SWITCH_DB_REG_SEL,
               MEMORY_CORE_REG_SWITCH_DB_REG_SEL_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_SWITCH_DB_REG_VALUE,
               MEMORY_CORE_REG_SWITCH_DB_REG_VALUE_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_TILE_EN, MEMORY_CORE_REG_TILE_EN_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_WEN_IN_REG_SEL,
               MEMORY_CORE_REG_WEN_IN_REG_SEL_WIDTH);

  m.NewBvState(MEMORY_CORE_REG_WEN_IN_REG_VALUE,
               MEMORY_CORE_REG_WEN_IN_REG_VALUE_WIDTH);
}

}; // namespace ilang
