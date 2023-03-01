**** ATA registers of ATBus

ata_DataPort    = $1000
ata_Error       = $0200
ata_Features    = $0200
ata_SectorCnt   = $0400
ata_SectorNum   = $0600
ata_CylinderL   = $0800
ata_CylinderH   = $0A00
ata_DevHead     = $0C00
ata_Status      = $0E00
ata_Command     = $0E00
ata_AltStatus   = $1C00
ata_DevCtrl     = $1C00

ata_NextPort    = $2000
ata_NextReg     = $0200

**** ATAPI registers:

atapi_DataPort  = $1000
atapi_Error     = $0200
atapi_Features  = $0200
atapi_Reason    = $0400
atapi_SamTag    = $0600
atapi_ByteCntL  = $0800
atapi_ByteCntH  = $0A00
atapi_DriveSel  = $0C00
atapi_Status    = $0E00
atapi_Command   = $0E00
atapi_AltStatus = $1C00
atapi_DevCtrl   = $1C00
