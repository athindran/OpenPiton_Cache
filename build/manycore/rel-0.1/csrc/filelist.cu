PIC_LD=ld

ARCHIVE_OBJS=
ARCHIVE_OBJS += _131759_archive_1.so
_131759_archive_1.so : archive.162/_131759_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -shared  -o .//../simv.daidir//_131759_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../simv.daidir//_131759_archive_1.so $@


ARCHIVE_OBJS += _prev_archive_1.so
_prev_archive_1.so : archive.162/_prev_archive_1.a
	@$(AR) -s $<
	@$(PIC_LD) -shared  -o .//../simv.daidir//_prev_archive_1.so --whole-archive $< --no-whole-archive
	@rm -f $@
	@ln -sf .//../simv.daidir//_prev_archive_1.so $@



VCS_ARC0 =_csrc0.so

VCS_OBJS0 =objs/amcQw_d.o 



%.o: %.c
	$(CC_CG) $(CFLAGS_CG) -c -o $@ $<

$(VCS_ARC0) : $(VCS_OBJS0)
	$(PIC_LD) -shared  -o .//../simv.daidir//$(VCS_ARC0) $(VCS_OBJS0)
	rm -f $(VCS_ARC0)
	@ln -sf .//../simv.daidir//$(VCS_ARC0) $(VCS_ARC0)

CU_UDP_OBJS = \
objs/udps/zTfCi.o objs/udps/MKa8M.o objs/udps/iMDw8.o objs/udps/Pdfe2.o objs/udps/BZdMu.o  \
objs/udps/usJ6j.o objs/udps/md0jn.o objs/udps/wxw4w.o objs/udps/G3kEr.o objs/udps/g8uay.o  \
objs/udps/GIJjK.o objs/udps/c2JdT.o objs/udps/mFhf9.o objs/udps/Y6Can.o objs/udps/KEnRI.o  \
objs/udps/DdJwd.o objs/udps/Iprnb.o objs/udps/Mtnxs.o objs/udps/fAfSr.o objs/udps/BfZip.o  \
objs/udps/MZJm9.o objs/udps/JGef3.o objs/udps/RMKIL.o 

CU_LVL_OBJS = \
SIM_l.o 

MAIN_OBJS = \
amcQwB.o 

CU_OBJS = $(MAIN_OBJS) $(ARCHIVE_OBJS) $(VCS_ARC0) $(CU_UDP_OBJS) $(CU_LVL_OBJS)

