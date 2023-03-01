PROGRAM=AT-Apollo
INCLUDE=../include
AS=vasmm68k_mot
ASFLAGS=-Fhunk -I$(INCLUDE) -quiet -align -m68000
LINKER=vlink
LINKFLAGS=-bamigahunk -s
OBJDIR=obj

.PHONY: all clean

SRCS = AT-Apollo.device_v5.03.s
OBJS = $(SRCS:%.s=$(OBJDIR)/%.o)

all:	$(PROGRAM).device $(ROMNAME)
rom:	$(ROMNAME)

$(OBJDIR)/%.o: %.s
	mkdir -p $(OBJDIR)
	$(AS) $(ASFLAGS) -o $@ $<

$(PROGRAM).device: $(OBJS)
	$(LINKER) $(LINKFLAGS) -o $@ $<

clean:
	rm -f $(OBJDIR)/*.o
	rm -f $(PROGRAM).device
