    include "exec/types.i"

**** ATA Select register:

ATAF_HEADS  = %00001111
ATAF_SELECT = %11110000
ATAF_MASTER = %10100000
ATAF_SLAVE  = %10110000

 BITDEF ATA,DEV,4
 BITDEF ATA,LBA,6
 BITDEF ATA,ATAPI,7

**** ATA Status register:

 BITDEF ATA,ERROR,0
 BITDEF ATA,INDEX,1
 BITDEF ATA,CORRECTABLE,2
 BITDEF ATA,DATAREQ,3
 BITDEF ATA,DEVFAULT,5
 BITDEF ATA,DEVREADY,6
 BITDEF ATA,BUSY,7

**** ATA Error register:

 BITDEF ATA,AMNF,0
 BITDEF ATA,TK0NF,1
 BITDEF ATA,ABORT,2
 BITDEF ATA,MCR,3
 BITDEF ATA,IDNF,4
 BITDEF ATA,MC,5
 BITDEF ATA,UNC,6

**** ATA Device Control register:

 BITDEF ATA,INTDIS,1
 BITDEF ATA,RESET,2

**** ATA Commands:

ATA_NOP          = $00
ATA_RECALIBRATE  = $10
ATA_READRET      = $20
ATA_READ         = $21
ATA_READLONGRET  = $22
ATA_READLONG     = $23
ATA_WRITERET     = $30
ATA_WRITE        = $31
ATA_WRITELONGRET = $32
ATA_WRITELONG    = $33
ATA_WRITEVERIF   = $3C
ATA_READVERIFRET = $40
ATA_READVERIF    = $41
ATA_FORMAT       = $50
ATA_SEEK         = $70
ATA_DEVDIAG      = $90
ATA_DEVPARAM     = $91
ATA_MICROCODE    = $92
ATA_STANDBYIMM1  = $94
ATA_IDLEIMM1     = $95
ATA_STANDBY1     = $96
ATA_IDLE1        = $97
ATA_CHKPWRMODE1  = $98
ATA_SLEEP1       = $99
ATA_READMULTI    = $C4
ATA_WRITEMULTI   = $C5
ATA_MULTIMODE    = $C6
ATA_READDMARET   = $C8
ATA_READDMA      = $C9
ATA_WRITEDMARET  = $CA
ATA_WRITEDMA     = $CB
ATA_MEDIACHANGE  = $DB
ATA_POSTBOOT     = $DC
ATA_PREBOOT      = $DD
ATA_DOORLOCK     = $DE
ATA_DOORUNLOCK   = $DF
ATA_STANDBYIMM2  = $E0
ATA_IDLEIMM2     = $E1
ATA_STANDBY2     = $E2
ATA_IDLE2        = $E3
ATA_READBUFFER   = $E4
ATA_CHKPWRMODE2  = $E5
ATA_SLEEP2       = $E6
ATA_WRITEBUFFER  = $E8
ATA_WRITESAME    = $E9
ATA_SECUREMODE1  = $EA
ATA_SECUREMODE2  = $EB
ATA_IDENTDEV     = $EC
ATA_MEDIAEJECT   = $ED
ATA_IDENTDEVDMA  = $EE
ATA_SETFEATURES  = $EF

**** ATAPI Status register (bits):

 BITDEF ATAPI,CHECK,0
 BITDEF ATAPI,CORRECTABLE,2
 BITDEF ATAPI,DATAREQ,3
 BITDEF ATAPI,SERVICE,4
 BITDEF ATAPI,DEVFAULT,5
 BITDEF ATAPI,DEVREADY,6
 BITDEF ATAPI,BUSY,7

**** ATAPI Reason register:

 BITDEF ATAPI,COD,0
 BITDEF ATAPI,IO,1
 BITDEF ATAPI,RELEASE,2

ATAPIF_WRITE   = %00
ATAPIF_COMMAND = %01
ATAPIF_READ    = %10
ATAPIF_MASK    = %11

**** ATAPI Commands:

ATAPI_RESET    = $08
ATAPI_PACKET   = $A0
ATAPI_IDENTDEV = $A1
ATAPI_SERVICE  = $A2