.text

	
.align 4
.global spill_trap
spill_trap:
	wr	%g0, 0x10, %asi
        stxa    %l0, [%sp + 2047 + 0x00] %asi
        stxa    %l1, [%sp + 2047 + 0x08] %asi
        stxa    %l2, [%sp + 2047 + 0x10] %asi
        stxa    %l3, [%sp + 2047 + 0x18] %asi
        stxa    %l4, [%sp + 2047 + 0x20] %asi
        stxa    %l5, [%sp + 2047 + 0x28] %asi
        stxa    %l6, [%sp + 2047 + 0x30] %asi
        stxa    %l7, [%sp + 2047 + 0x38] %asi
        stxa    %i0, [%sp + 2047 + 0x40] %asi
        stxa    %i1, [%sp + 2047 + 0x48] %asi
        stxa    %i2, [%sp + 2047 + 0x50] %asi
        stxa    %i3, [%sp + 2047 + 0x58] %asi
        stxa    %i4, [%sp + 2047 + 0x60] %asi
        stxa    %i5, [%sp + 2047 + 0x68] %asi
        stxa    %i6, [%sp + 2047 + 0x70] %asi
        stxa    %i7, [%sp + 2047 + 0x78] %asi
        saved
	retry
	nop

.align 4
.global fill_trap

fill_trap:
	wr	%g0, 0x10, %asi	
        ldxa    [%sp + 2047 + 0x00] %asi, %l0
        ldxa    [%sp + 2047 + 0x08] %asi, %l1
        ldxa    [%sp + 2047 + 0x10] %asi, %l2
        ldxa    [%sp + 2047 + 0x18] %asi, %l3
        ldxa    [%sp + 2047 + 0x20] %asi, %l4
        ldxa    [%sp + 2047 + 0x28] %asi, %l5
        ldxa    [%sp + 2047 + 0x30] %asi, %l6
        ldxa    [%sp + 2047 + 0x38] %asi, %l7
        ldxa    [%sp + 2047 + 0x40] %asi, %i0
        ldxa    [%sp + 2047 + 0x48] %asi, %i1
        ldxa    [%sp + 2047 + 0x50] %asi, %i2
        ldxa    [%sp + 2047 + 0x58] %asi, %i3
        ldxa    [%sp + 2047 + 0x60] %asi, %i4
        ldxa    [%sp + 2047 + 0x68] %asi, %i5
        ldxa    [%sp + 2047 + 0x70] %asi, %i6
        ldxa    [%sp + 2047 + 0x78] %asi, %i7
        restored
	retry
	nop

.data
	.word 0        


	
