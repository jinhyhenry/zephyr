/*
 * Copyright (c) 2018 Synopsys, Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

/**
 * @brief Linker script for the Synopsys EM Starterkit platform.
 */

#include <generated_dts_board.h>
#include <autoconf.h>

/*
 * DRAM base address and size
 *
 * DRAM includes the exception vector table at reset, which is at
 * the beginning of the region.
 */
#if defined(DT_MMIO_SRAM_0_BASE_ADDRESS) && (DT_MMIO_SRAM_0_SIZE > 0)
#define SRAM_START		DT_MMIO_SRAM_0_BASE_ADDRESS
#define SRAM_SIZE		(DT_MMIO_SRAM_0_SIZE >> 10)
#endif

/* Instruction Closely Coupled Memory (ICCM) base address and size */
#if defined(DT_ICCM_BASE_ADDRESS) && (DT_ICCM_SIZE > 0)
#define ICCM_START		DT_ICCM_BASE_ADDRESS
#define ICCM_SIZE		DT_ICCM_SIZE
#endif

/*
 * DCCM base address and size. DCCM is the data memory.
 */
/* Data Closely Coupled Memory (DCCM) base address and size */
#if defined(DT_DCCM_BASE_ADDRESS) && (DT_DCCM_SIZE > 0)
#define DCCM_START		DT_DCCM_BASE_ADDRESS
#define DCCM_SIZE		DT_DCCM_SIZE
#endif

#include <arch/arc/v2/linker.ld>
