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

// File: memory_core_config.h

#ifndef GARNET_MEMORY_CORE_CONFIG_H__
#define GARNET_MEMORY_CORE_CONFIG_H__

// macros for I/O ports derived from memory_core_magma.py
// - updated 2019.11.12, Bo-Yuan Huang

#define MEMORY_CORE_DATA_WIDTH 16
#define MEMORY_CORE_BIT_WIDTH 1

#define MEMORY_CORE_IO_DATA_IN "data_in"
#define MEMORY_CORE_IO_DATA_IN_WIDTH MEMORY_CORE_DATA_WIDTH

#define MEMORY_CORE_IO_ADDR_IN "addr_in"
#define MEMORY_CORE_IO_ADDR_IN_WIDTH MEMORY_CORE_DATA_WIDTH

#define MEMORY_CORE_IO_DATA_OUT "data_out"
#define MEMORY_CORE_IO_DATA_OUT_WIDTH MEMORY_CORE_DATA_WIDTH

#define MEMORY_CORE_IO_FLUSH "flush"
#define MEMORY_CORE_IO_FLUSH_WIDTH MEMORY_CORE_BIT_WIDTH

#define MEMORY_CORE_IO_WEN_IN "wen_in"
#define MEMORY_CORE_IO_WEN_IN_WIDTH MEMORY_CORE_BIT_WIDTH

#define MEMORY_CORE_IO_REN_IN "ren_in"
#define MEMORY_CORE_IO_REN_IN_WIDTH MEMORY_CORE_BIT_WIDTH

#define MEMORY_CORE_IO_VALID_OUT "valid_out"
#define MEMORY_CORE_IO_VALID_OUT_WIDTH MEMORY_CORE_BIT_WIDTH

#define MEMORY_CORE_IO_SWITCH_DB "switch_db"
#define MEMORY_CORE_IO_SWITCH_DB_WIDTH MEMORY_CORE_BIT_WIDTH

#define MEMORY_CORE_IO_ALMOST_FULL "almost_full"
#define MEMORY_CORE_IO_ALMOST_FULL_WIDTH MEMORY_CORE_BIT_WIDTH

#define MEMORY_CORE_IO_ALMOST_EMPTY "almost_empty"
#define MEMORY_CORE_IO_ALMOST_EMPTY_WIDTH MEMORY_CORE_BIT_WIDTH

#define MEMORY_CORE_IO_FULL "full"
#define MEMORY_CORE_IO_FULL_WIDTH MEMORY_CORE_BIT_WIDTH

#define MEMORY_CORE_IO_EMPTY "empty"
#define MEMORY_CORE_IO_EMPTY_WIDTH MEMORY_CORE_BIT_WIDTH

#define MEMORY_CORE_IO_STALL "stall"
#define MEMORY_CORE_IO_STALL_WIDTH MEMORY_CORE_BIT_WIDTH

#define MEMORY_CORE_IO_CHAIN_WEN_IN "chain_wen_in"
#define MEMORY_CORE_IO_CHAIN_WEN_IN_WIDTH MEMORY_CORE_BIT_WIDTH

#define MEMORY_CORE_IO_CHAIN_VALID_OUT "chain_valid_out"
#define MEMORY_CORE_IO_CHAIN_VALID_OUT_WIDTH MEMORY_CORE_BIT_WIDTH

#define MEMORY_CORE_IO_CHAIN_IN "chain_in"
#define MEMORY_CORE_IO_CHAIN_IN_WIDTH MEMORY_CORE_DATA_WIDTH

#define MEMORY_CORE_IO_CHAIN_OUT "chain_out"
#define MEMORY_CORE_IO_CHAIN_OUT_WIDTH MEMORY_CORE_DATA_WIDTH

// macros for configuration derived from the memory_core README
// - updated 2019.11.11, Bo-Yuan Huang

// feature indexes
#define MEMORY_CORE_INDEX_TILE 0
#define MEMORY_CORE_INDEX_SRAM1 1
#define MEMORY_CORE_INDEX_SRAM2 2
#define MEMORY_CORE_INDEX_SRAM3 3
#define MEMORY_CORE_INDEX_SRAM4 4

// value list for "mode"
#define MEMORY_CORE_MODE_LINE_BUFFER 0
#define MEMORY_CORE_MODE_FIFO 1
#define MEMORY_CORE_MODE_SRAM 2
#define MEMORY_CORE_MODE_DOUBLE_BUFFER 3

// memory-mapped address
#define MEMORY_CORE_ADDR_MIN 0
#define MEMORY_CORE_ADDR_MAX (256 * 4)

//
// feature 0 (Tile) configuration registers: name, address, and bit width
//
#define MEMORY_CORE_REG_ALMOST_COUNT "almost_count"
#define MEMORY_CORE_REG_ALMOST_COUNT_ADDR 0
#define MEMORY_CORE_REG_ALMOST_COUNT_WIDTH 4

#define MEMORY_CORE_REG_ARBITRARY_ADDR "arbitrary_addr"
#define MEMORY_CORE_REG_ARBITRARY_ADDR_ADDR 1
#define MEMORY_CORE_REG_ARBITRARY_ADDR_WIDTH 1

#define MEMORY_CORE_REG_CHAIN_IDX "chain_idx"
#define MEMORY_CORE_REG_CHAIN_IDX_ADDR 2
#define MEMORY_CORE_REG_CHAIN_IDX_WIDTH 4

#define MEMORY_CORE_REG_CHAIN_WEN_IN_REG_SEL "chain_wen_in_reg_sel"
#define MEMORY_CORE_REG_CHAIN_WEN_IN_REG_SEL_ADDR 3
#define MEMORY_CORE_REG_CHAIN_WEN_IN_REG_SEL_WIDTH 1

#define MEMORY_CORE_REG_CHAIN_WEN_IN_REG_VALUE "chain_wen_in_reg_value"
#define MEMORY_CORE_REG_CHAIN_WEN_IN_REG_VALUE_ADDR 4
#define MEMORY_CORE_REG_CHAIN_WEN_IN_REG_VALUE_WIDTH 1

#define MEMORY_CORE_REG_CIRCULAR_EN "circular_en"
#define MEMORY_CORE_REG_CIRCULAR_EN_ADDR 5
#define MEMORY_CORE_REG_CIRCULAR_EN_WIDTH 1

#define MEMORY_CORE_REG_DEPTH "depth"
#define MEMORY_CORE_REG_DEPTH_ADDR 6
#define MEMORY_CORE_REG_DEPTH_WIDTH 16

#define MEMORY_CORE_REG_DIMENSIONALITY "dimensionality"
#define MEMORY_CORE_REG_DIMENSIONALITY_ADDR 7
#define MEMORY_CORE_REG_DIMENSIONALITY_WIDTH 4

#define MEMORY_CORE_REG_ENABLE_CHAIN "enable_chain"
#define MEMORY_CORE_REG_ENABLE_CHAIN_ADDR 8
#define MEMORY_CORE_REG_ENABLE_CHAIN_WIDTH 1

#define MEMORY_CORE_REG_FLUSH_REG_SEL "flush_reg_sel"
#define MEMORY_CORE_REG_FLUSH_REG_SEL_ADDR 9
#define MEMORY_CORE_REG_FLUSH_REG_SEL_WIDTH 1

#define MEMORY_CORE_REG_FLUSH_REG_VALUE "flush_reg_value"
#define MEMORY_CORE_REG_FLUSH_REG_VALUE_ADDR 10
#define MEMORY_CORE_REG_FLUSH_REG_VALUE_WIDTH 1

#define MEMORY_CORE_REG_ITER_CNT "iter_cnt"
#define MEMORY_CORE_REG_ITER_CNT_ADDR 11
#define MEMORY_CORE_REG_ITER_CNT_WIDTH 32

#define MEMORY_CORE_REG_MODE "mode"
#define MEMORY_CORE_REG_MODE_ADDR 12
#define MEMORY_CORE_REG_MODE_WIDTH 2

#define MEMORY_CORE_REG_RANGE_0 "range_0"
#define MEMORY_CORE_REG_RANGE_0_ADDR 13
#define MEMORY_CORE_REG_RANGE_0_WIDTH 32

#define MEMORY_CORE_REG_RANGE_1 "range_1"
#define MEMORY_CORE_REG_RANGE_1_ADDR 14
#define MEMORY_CORE_REG_RANGE_1_WIDTH 32

#define MEMORY_CORE_REG_RANGE_2 "range_2"
#define MEMORY_CORE_REG_RANGE_2_ADDR 15
#define MEMORY_CORE_REG_RANGE_2_WIDTH 32

#define MEMORY_CORE_REG_RANGE_3 "range_3"
#define MEMORY_CORE_REG_RANGE_3_ADDR 16
#define MEMORY_CORE_REG_RANGE_3_WIDTH 32

#define MEMORY_CORE_REG_RANGE_4 "range_4"
#define MEMORY_CORE_REG_RANGE_4_ADDR 17
#define MEMORY_CORE_REG_RANGE_4_WIDTH 32

#define MEMORY_CORE_REG_RANGE_5 "range_5"
#define MEMORY_CORE_REG_RANGE_5_ADDR 18
#define MEMORY_CORE_REG_RANGE_5_WIDTH 32

#define MEMORY_CORE_REG_RATE_MATCHED "rate_matched"
#define MEMORY_CORE_REG_RATE_MATCHED_ADDR 19
#define MEMORY_CORE_REG_RATE_MATCHED_WIDTH 1

#define MEMORY_CORE_REG_REN_IN_REG_SEL "ren_in_reg_sel"
#define MEMORY_CORE_REG_REN_IN_REG_SEL_ADDR 20
#define MEMORY_CORE_REG_REN_IN_REG_SEL_WIDTH 1

#define MEMORY_CORE_REG_REN_IN_REG_VALUE "ren_in_reg_value"
#define MEMORY_CORE_REG_REN_IN_REG_VALUE_ADDR 21
#define MEMORY_CORE_REG_REN_IN_REG_VALUE_WIDTH 1

#define MEMORY_CORE_REG_STARTING_ADDR "starting_addr"
#define MEMORY_CORE_REG_STARTING_ADDR_ADDR 22
#define MEMORY_CORE_REG_STARTING_ADDR_WIDTH 16

#define MEMORY_CORE_REG_STENCIL_WIDTH "stencil_width"
#define MEMORY_CORE_REG_STENCIL_WIDTH_ADDR 23
#define MEMORY_CORE_REG_STENCIL_WIDTH_WIDTH 16

#define MEMORY_CORE_REG_STRIDE_0 "stride_0"
#define MEMORY_CORE_REG_STRIDE_0_ADDR 24
#define MEMORY_CORE_REG_STRIDE_0_WIDTH 16

#define MEMORY_CORE_REG_STRIDE_1 "stride_1"
#define MEMORY_CORE_REG_STRIDE_1_ADDR 25
#define MEMORY_CORE_REG_STRIDE_1_WIDTH 16

#define MEMORY_CORE_REG_STRIDE_2 "stride_2"
#define MEMORY_CORE_REG_STRIDE_2_ADDR 26
#define MEMORY_CORE_REG_STRIDE_2_WIDTH 16

#define MEMORY_CORE_REG_STRIDE_3 "stride_3"
#define MEMORY_CORE_REG_STRIDE_3_ADDR 27
#define MEMORY_CORE_REG_STRIDE_3_WIDTH 16

#define MEMORY_CORE_REG_STRIDE_4 "stride_4"
#define MEMORY_CORE_REG_STRIDE_4_ADDR 28
#define MEMORY_CORE_REG_STRIDE_4_WIDTH 16

#define MEMORY_CORE_REG_STRIDE_5 "stride_5"
#define MEMORY_CORE_REG_STRIDE_5_ADDR 29
#define MEMORY_CORE_REG_STRIDE_5_WIDTH 16

#define MEMORY_CORE_REG_SWITCH_DB_REG_SEL "switch_db_reg_sel"
#define MEMORY_CORE_REG_SWITCH_DB_REG_SEL_ADDR 30
#define MEMORY_CORE_REG_SWITCH_DB_REG_SEL_WIDTH 1

#define MEMORY_CORE_REG_SWITCH_DB_REG_VALUE "switch_db_reg_value"
#define MEMORY_CORE_REG_SWITCH_DB_REG_VALUE_ADDR 31
#define MEMORY_CORE_REG_SWITCH_DB_REG_VALUE_WIDTH 1

#define MEMORY_CORE_REG_TILE_EN "tile_en"
#define MEMORY_CORE_REG_TILE_EN_ADDR 32
#define MEMORY_CORE_REG_TILE_EN_WIDTH 1

#define MEMORY_CORE_REG_WEN_IN_REG_SEL "wen_in_reg_sel"
#define MEMORY_CORE_REG_WEN_IN_REG_SEL_ADDR 33
#define MEMORY_CORE_REG_WEN_IN_REG_SEL_WIDTH 1

#define MEMORY_CORE_REG_WEN_IN_REG_VALUE "wen_in_reg_value"
#define MEMORY_CORE_REG_WEN_IN_REG_VALUE_ADDR 34
#define MEMORY_CORE_REG_WEN_IN_REG_VALUE_WIDTH 1

#endif // GARNET_MEMORY_CORE_CONFIG_H__
