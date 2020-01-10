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

// File: memory_core_instr_config_reg.cc

#include <garnet/memory_core_config.h>
#include <ilang/ilang++.h>
#include <ilang/util/log.h>

namespace ilang {

#define SetDecodeForWrInstr(addr)                                              \
  instr.SetDecode(is_write&(m.input(MEMORY_CORE_IO_ADDR_IN) == addr));

#define SetDecodeForRdInstr(addr)                                              \
  instr.SetDecode(is_read&(m.input(MEMORY_CORE_IO_ADDR_IN) == addr));

void SetUpdateForWrInstr(Ila& m, InstrRef& instr,
                         const std::string& state_name) {
  auto state = m.state(state_name);
  auto data_in = m.input(MEMORY_CORE_IO_DATA_IN);

  if (state.bit_width() == data_in.bit_width()) {
    instr.SetUpdate(state, data_in);
  } else if (state.bit_width() < data_in.bit_width()) {
    instr.SetUpdate(state, data_in(state.bit_width() - 1, 0));
  } else {
    instr.SetUpdate(state, data_in.ZExt(state.bit_width()));
  }
}

void SetUpdateForRdInstr(Ila& m, InstrRef& instr,
                         const std::string& state_name) {
  auto state = m.state(state_name);
  auto data_out = m.state(MEMORY_CORE_IO_DATA_OUT);

  if (state.bit_width() == data_out.bit_width()) {
    instr.SetUpdate(data_out, state);
  } else if (state.bit_width() > data_out.bit_width()) {
    instr.SetUpdate(data_out, state(data_out.bit_width() - 1, 0));
  } else {
    instr.SetUpdate(data_out, state.ZExt(data_out.bit_width()));
  }
}

void MemoryCoreInstrConfigReg(Ila& m) {

  auto is_write =
      m.input(MEMORY_CORE_IO_WEN_IN) & ~m.input(MEMORY_CORE_IO_REN_IN);

  auto is_read =
      m.input(MEMORY_CORE_IO_REN_IN) & ~m.input(MEMORY_CORE_IO_WEN_IN);

  // wr/rd config reg instructions derived from the memory_core README
  // - updated 2019.11.13, Bo-Yuan Huang

  { // write to config reg almost_count
    auto instr = m.NewInstr("WrConfigReg_almost_count");
    SetDecodeForWrInstr(MEMORY_CORE_REG_ALMOST_COUNT_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_ALMOST_COUNT);
  }

  { // read from config reg almost_count
    auto instr = m.NewInstr("RdConfigReg_almost_count");
    SetDecodeForRdInstr(MEMORY_CORE_REG_ALMOST_COUNT_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_ALMOST_COUNT);
  }

  { // write to config reg arbitrary_addr
    auto instr = m.NewInstr("WrConfigReg_arbitrary_addr");
    SetDecodeForWrInstr(MEMORY_CORE_REG_ARBITRARY_ADDR_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_ARBITRARY_ADDR);
  }

  { // read from config reg arbitrary_addr
    auto instr = m.NewInstr("RdConfigReg_arbitrary_addr");
    SetDecodeForRdInstr(MEMORY_CORE_REG_ARBITRARY_ADDR_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_ARBITRARY_ADDR);
  }

  { // write to config reg chain_idx
    auto instr = m.NewInstr("WrConfigReg_chain_idx");
    SetDecodeForWrInstr(MEMORY_CORE_REG_CHAIN_IDX_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_CHAIN_IDX);
  }

  { // read from config reg chain_idx
    auto instr = m.NewInstr("RdConfigReg_chain_idx");
    SetDecodeForRdInstr(MEMORY_CORE_REG_CHAIN_IDX_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_CHAIN_IDX);
  }

  { // write to config reg chain_wen_in_reg_sel
    auto instr = m.NewInstr("WrConfigReg_chain_wen_in_reg_sel");
    SetDecodeForWrInstr(MEMORY_CORE_REG_CHAIN_WEN_IN_REG_SEL_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_CHAIN_WEN_IN_REG_SEL);
  }

  { // read from config reg chain_wen_in_reg_sel
    auto instr = m.NewInstr("RdConfigReg_chain_wen_in_reg_sel");
    SetDecodeForRdInstr(MEMORY_CORE_REG_CHAIN_WEN_IN_REG_SEL_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_CHAIN_WEN_IN_REG_SEL);
  }

  { // write to config reg chain_wen_in_reg_value
    auto instr = m.NewInstr("WrConfigReg_chain_wen_in_reg_value");
    SetDecodeForWrInstr(MEMORY_CORE_REG_CHAIN_WEN_IN_REG_VALUE_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_CHAIN_WEN_IN_REG_VALUE);
  }

  { // read from config reg chain_wen_in_reg_value
    auto instr = m.NewInstr("RdConfigReg_chain_wen_in_reg_value");
    SetDecodeForRdInstr(MEMORY_CORE_REG_CHAIN_WEN_IN_REG_VALUE_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_CHAIN_WEN_IN_REG_VALUE);
  }

  { // write to config reg circular_en
    auto instr = m.NewInstr("WrConfigReg_circular_en");
    SetDecodeForWrInstr(MEMORY_CORE_REG_CIRCULAR_EN_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_CIRCULAR_EN);
  }

  { // read from config reg circular_en
    auto instr = m.NewInstr("RdConfigReg_circular_en");
    SetDecodeForRdInstr(MEMORY_CORE_REG_CIRCULAR_EN_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_CIRCULAR_EN);
  }

  { // write to config reg depth
    auto instr = m.NewInstr("WrConfigReg_depth");
    SetDecodeForWrInstr(MEMORY_CORE_REG_DEPTH_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_DEPTH);
  }

  { // read from config reg depth
    auto instr = m.NewInstr("RdConfigReg_depth");
    SetDecodeForRdInstr(MEMORY_CORE_REG_DEPTH_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_DEPTH);
  }

  { // write to config reg dimensionality
    auto instr = m.NewInstr("WrConfigReg_dimensionality");
    SetDecodeForWrInstr(MEMORY_CORE_REG_DIMENSIONALITY_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_DIMENSIONALITY);
  }

  { // read from config reg dimensionality
    auto instr = m.NewInstr("RdConfigReg_dimensionality");
    SetDecodeForRdInstr(MEMORY_CORE_REG_DIMENSIONALITY_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_DIMENSIONALITY);
  }

  { // write to config reg enable_chain
    auto instr = m.NewInstr("WrConfigReg_enable_chain");
    SetDecodeForWrInstr(MEMORY_CORE_REG_ENABLE_CHAIN_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_ENABLE_CHAIN);
  }

  { // read from config reg enable_chain
    auto instr = m.NewInstr("RdConfigReg_enable_chain");
    SetDecodeForRdInstr(MEMORY_CORE_REG_ENABLE_CHAIN_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_ENABLE_CHAIN);
  }

  { // write to config reg flush_reg_sel
    auto instr = m.NewInstr("WrConfigReg_flush_reg_sel");
    SetDecodeForWrInstr(MEMORY_CORE_REG_FLUSH_REG_SEL_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_FLUSH_REG_SEL);
  }

  { // read from config reg flush_reg_sel
    auto instr = m.NewInstr("RdConfigReg_flush_reg_sel");
    SetDecodeForRdInstr(MEMORY_CORE_REG_FLUSH_REG_SEL_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_FLUSH_REG_SEL);
  }

  { // write to config reg flush_reg_value
    auto instr = m.NewInstr("WrConfigReg_flush_reg_value");
    SetDecodeForWrInstr(MEMORY_CORE_REG_FLUSH_REG_VALUE_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_FLUSH_REG_VALUE);
  }

  { // read from config reg flush_reg_value
    auto instr = m.NewInstr("RdConfigReg_flush_reg_value");
    SetDecodeForRdInstr(MEMORY_CORE_REG_FLUSH_REG_VALUE_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_FLUSH_REG_VALUE);
  }

  { // write to config reg iter_cnt
    auto instr = m.NewInstr("WrConfigReg_iter_cnt");
    SetDecodeForWrInstr(MEMORY_CORE_REG_ITER_CNT_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_ITER_CNT);
  }

  { // read from config reg iter_cnt
    auto instr = m.NewInstr("RdConfigReg_iter_cnt");
    SetDecodeForRdInstr(MEMORY_CORE_REG_ITER_CNT_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_ITER_CNT);
  }

#if 0
  { // write to config reg mode
    auto instr = m.NewInstr("WrConfigReg_mode");
    SetDecodeForWrInstr(MEMORY_CORE_REG_MODE_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_MODE);
  }
#else
  { // write to config reg mode - 4 modes
    auto instr_line = m.NewInstr("WrConfigReg_mode_line");
    auto instr_fifo = m.NewInstr("WrConfigReg_mode_fifo");
    auto instr_sram = m.NewInstr("WrConfigReg_mode_sram");
    auto instr_dbbf = m.NewInstr("WrConfigReg_mode_double");

    // decode
    auto write_mode_decode =
        (m.input(MEMORY_CORE_IO_ADDR_IN) == MEMORY_CORE_REG_MODE_ADDR) &
        is_write;

    instr_line.SetDecode(
        (m.input(MEMORY_CORE_IO_DATA_IN) == MEMORY_CORE_MODE_LINE_BUFFER) &
        write_mode_decode);
    instr_fifo.SetDecode(
        (m.input(MEMORY_CORE_IO_DATA_IN) == MEMORY_CORE_MODE_FIFO) &
        write_mode_decode);
    instr_sram.SetDecode(
        (m.input(MEMORY_CORE_IO_DATA_IN) == MEMORY_CORE_MODE_SRAM) &
        write_mode_decode);
    instr_dbbf.SetDecode(
        (m.input(MEMORY_CORE_IO_DATA_IN) == MEMORY_CORE_MODE_DOUBLE_BUFFER) &
        write_mode_decode);

    SetUpdateForWrInstr(m, instr_line, MEMORY_CORE_REG_MODE);
    SetUpdateForWrInstr(m, instr_fifo, MEMORY_CORE_REG_MODE);
    SetUpdateForWrInstr(m, instr_sram, MEMORY_CORE_REG_MODE);
    SetUpdateForWrInstr(m, instr_dbbf, MEMORY_CORE_REG_MODE);
  }
#endif

  { // read from config reg mode
    auto instr = m.NewInstr("RdConfigReg_mode");
    SetDecodeForRdInstr(MEMORY_CORE_REG_MODE_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_MODE);
  }

  { // write to config reg range_0
    auto instr = m.NewInstr("WrConfigReg_range_0");
    SetDecodeForWrInstr(MEMORY_CORE_REG_RANGE_0_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_RANGE_0);
  }

  { // read from config reg range_0
    auto instr = m.NewInstr("RdConfigReg_range_0");
    SetDecodeForRdInstr(MEMORY_CORE_REG_RANGE_0_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_RANGE_0);
  }

  { // write to config reg range_1
    auto instr = m.NewInstr("WrConfigReg_range_1");
    SetDecodeForWrInstr(MEMORY_CORE_REG_RANGE_1_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_RANGE_1);
  }

  { // read from config reg range_1
    auto instr = m.NewInstr("RdConfigReg_range_1");
    SetDecodeForRdInstr(MEMORY_CORE_REG_RANGE_1_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_RANGE_1);
  }

  { // write to config reg range_2
    auto instr = m.NewInstr("WrConfigReg_range_2");
    SetDecodeForWrInstr(MEMORY_CORE_REG_RANGE_2_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_RANGE_2);
  }

  { // read from config reg range_2
    auto instr = m.NewInstr("RdConfigReg_range_2");
    SetDecodeForRdInstr(MEMORY_CORE_REG_RANGE_2_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_RANGE_2);
  }

  { // write to config reg range_3
    auto instr = m.NewInstr("WrConfigReg_range_3");
    SetDecodeForWrInstr(MEMORY_CORE_REG_RANGE_3_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_RANGE_3);
  }

  { // read from config reg range_3
    auto instr = m.NewInstr("RdConfigReg_range_3");
    SetDecodeForRdInstr(MEMORY_CORE_REG_RANGE_3_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_RANGE_3);
  }

  { // write to config reg range_4
    auto instr = m.NewInstr("WrConfigReg_range_4");
    SetDecodeForWrInstr(MEMORY_CORE_REG_RANGE_4_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_RANGE_4);
  }

  { // read from config reg range_4
    auto instr = m.NewInstr("RdConfigReg_range_4");
    SetDecodeForRdInstr(MEMORY_CORE_REG_RANGE_4_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_RANGE_4);
  }

  { // write to config reg range_5
    auto instr = m.NewInstr("WrConfigReg_range_5");
    SetDecodeForWrInstr(MEMORY_CORE_REG_RANGE_5_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_RANGE_5);
  }

  { // read from config reg range_5
    auto instr = m.NewInstr("RdConfigReg_range_5");
    SetDecodeForRdInstr(MEMORY_CORE_REG_RANGE_5_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_RANGE_5);
  }

  { // write to config reg rate_matched
    auto instr = m.NewInstr("WrConfigReg_rate_matched");
    SetDecodeForWrInstr(MEMORY_CORE_REG_RATE_MATCHED_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_RATE_MATCHED);
  }

  { // read from config reg rate_matched
    auto instr = m.NewInstr("RdConfigReg_rate_matched");
    SetDecodeForRdInstr(MEMORY_CORE_REG_RATE_MATCHED_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_RATE_MATCHED);
  }

  { // write to config reg ren_in_reg_sel
    auto instr = m.NewInstr("WrConfigReg_ren_in_reg_sel");
    SetDecodeForWrInstr(MEMORY_CORE_REG_REN_IN_REG_SEL_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_REN_IN_REG_SEL);
  }

  { // read from config reg ren_in_reg_sel
    auto instr = m.NewInstr("RdConfigReg_ren_in_reg_sel");
    SetDecodeForRdInstr(MEMORY_CORE_REG_REN_IN_REG_SEL_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_REN_IN_REG_SEL);
  }

  { // write to config reg ren_in_reg_value
    auto instr = m.NewInstr("WrConfigReg_ren_in_reg_value");
    SetDecodeForWrInstr(MEMORY_CORE_REG_REN_IN_REG_VALUE_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_REN_IN_REG_VALUE);
  }

  { // read from config reg ren_in_reg_value
    auto instr = m.NewInstr("RdConfigReg_ren_in_reg_value");
    SetDecodeForRdInstr(MEMORY_CORE_REG_REN_IN_REG_VALUE_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_REN_IN_REG_VALUE);
  }

  { // write to config reg starting_addr
    auto instr = m.NewInstr("WrConfigReg_starting_addr");
    SetDecodeForWrInstr(MEMORY_CORE_REG_STARTING_ADDR_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_STARTING_ADDR);
  }

  { // read from config reg starting_addr
    auto instr = m.NewInstr("RdConfigReg_starting_addr");
    SetDecodeForRdInstr(MEMORY_CORE_REG_STARTING_ADDR_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_STARTING_ADDR);
  }

  { // write to config reg stencil_width
    auto instr = m.NewInstr("WrConfigReg_stencil_width");
    SetDecodeForWrInstr(MEMORY_CORE_REG_STENCIL_WIDTH_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_STENCIL_WIDTH);
  }

  { // read from config reg stencil_width
    auto instr = m.NewInstr("RdConfigReg_stencil_width");
    SetDecodeForRdInstr(MEMORY_CORE_REG_STENCIL_WIDTH_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_STENCIL_WIDTH);
  }

  { // write to config reg stride_0
    auto instr = m.NewInstr("WrConfigReg_stride_0");
    SetDecodeForWrInstr(MEMORY_CORE_REG_STRIDE_0_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_STRIDE_0);
  }

  { // read from config reg stride_0
    auto instr = m.NewInstr("RdConfigReg_stride_0");
    SetDecodeForRdInstr(MEMORY_CORE_REG_STRIDE_0_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_STRIDE_0);
  }

  { // write to config reg stride_1
    auto instr = m.NewInstr("WrConfigReg_stride_1");
    SetDecodeForWrInstr(MEMORY_CORE_REG_STRIDE_1_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_STRIDE_1);
  }

  { // read from config reg stride_1
    auto instr = m.NewInstr("RdConfigReg_stride_1");
    SetDecodeForRdInstr(MEMORY_CORE_REG_STRIDE_1_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_STRIDE_1);
  }

  { // write to config reg stride_2
    auto instr = m.NewInstr("WrConfigReg_stride_2");
    SetDecodeForWrInstr(MEMORY_CORE_REG_STRIDE_2_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_STRIDE_2);
  }

  { // read from config reg stride_2
    auto instr = m.NewInstr("RdConfigReg_stride_2");
    SetDecodeForRdInstr(MEMORY_CORE_REG_STRIDE_2_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_STRIDE_2);
  }

  { // write to config reg stride_3
    auto instr = m.NewInstr("WrConfigReg_stride_3");
    SetDecodeForWrInstr(MEMORY_CORE_REG_STRIDE_3_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_STRIDE_3);
  }

  { // read from config reg stride_3
    auto instr = m.NewInstr("RdConfigReg_stride_3");
    SetDecodeForRdInstr(MEMORY_CORE_REG_STRIDE_3_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_STRIDE_3);
  }

  { // write to config reg stride_4
    auto instr = m.NewInstr("WrConfigReg_stride_4");
    SetDecodeForWrInstr(MEMORY_CORE_REG_STRIDE_4_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_STRIDE_4);
  }

  { // read from config reg stride_4
    auto instr = m.NewInstr("RdConfigReg_stride_4");
    SetDecodeForRdInstr(MEMORY_CORE_REG_STRIDE_4_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_STRIDE_4);
  }

  { // write to config reg stride_5
    auto instr = m.NewInstr("WrConfigReg_stride_5");
    SetDecodeForWrInstr(MEMORY_CORE_REG_STRIDE_5_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_STRIDE_5);
  }

  { // read from config reg stride_5
    auto instr = m.NewInstr("RdConfigReg_stride_5");
    SetDecodeForRdInstr(MEMORY_CORE_REG_STRIDE_5_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_STRIDE_5);
  }

  { // write to config reg switch_db_reg_sel
    auto instr = m.NewInstr("WrConfigReg_switch_db_reg_sel");
    SetDecodeForWrInstr(MEMORY_CORE_REG_SWITCH_DB_REG_SEL_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_SWITCH_DB_REG_SEL);
  }

  { // read from config reg switch_db_reg_sel
    auto instr = m.NewInstr("RdConfigReg_switch_db_reg_sel");
    SetDecodeForRdInstr(MEMORY_CORE_REG_SWITCH_DB_REG_SEL_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_SWITCH_DB_REG_SEL);
  }

  { // write to config reg switch_db_reg_value
    auto instr = m.NewInstr("WrConfigReg_switch_db_reg_value");
    SetDecodeForWrInstr(MEMORY_CORE_REG_SWITCH_DB_REG_VALUE_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_SWITCH_DB_REG_VALUE);
  }

  { // read from config reg switch_db_reg_value
    auto instr = m.NewInstr("RdConfigReg_switch_db_reg_value");
    SetDecodeForRdInstr(MEMORY_CORE_REG_SWITCH_DB_REG_VALUE_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_SWITCH_DB_REG_VALUE);
  }

  { // write to config reg tile_en
    auto instr = m.NewInstr("WrConfigReg_tile_en");
    SetDecodeForWrInstr(MEMORY_CORE_REG_TILE_EN_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_TILE_EN);
  }

  { // read from config reg tile_en
    auto instr = m.NewInstr("RdConfigReg_tile_en");
    SetDecodeForRdInstr(MEMORY_CORE_REG_TILE_EN_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_TILE_EN);
  }

  { // write to config reg wen_in_reg_sel
    auto instr = m.NewInstr("WrConfigReg_wen_in_reg_sel");
    SetDecodeForWrInstr(MEMORY_CORE_REG_WEN_IN_REG_SEL_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_WEN_IN_REG_SEL);
  }

  { // read from config reg wen_in_reg_sel
    auto instr = m.NewInstr("RdConfigReg_wen_in_reg_sel");
    SetDecodeForRdInstr(MEMORY_CORE_REG_WEN_IN_REG_SEL_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_WEN_IN_REG_SEL);
  }

  { // write to config reg wen_in_reg_value
    auto instr = m.NewInstr("WrConfigReg_wen_in_reg_value");
    SetDecodeForWrInstr(MEMORY_CORE_REG_WEN_IN_REG_VALUE_ADDR);
    SetUpdateForWrInstr(m, instr, MEMORY_CORE_REG_WEN_IN_REG_VALUE);
  }

  { // read from config reg wen_in_reg_value
    auto instr = m.NewInstr("RdConfigReg_wen_in_reg_value");
    SetDecodeForRdInstr(MEMORY_CORE_REG_WEN_IN_REG_VALUE_ADDR);
    SetUpdateForRdInstr(m, instr, MEMORY_CORE_REG_WEN_IN_REG_VALUE);
  }
}

}; // namespace ilang
