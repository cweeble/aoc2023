#!/usr/bin/perl
use strict;
my $directions = <DATA>;
chomp $directions;
my %map;
while (my $line = <DATA>) {
    chomp $line;
    next unless ($line =~ /([A-Z][A-Z][A-Z]) = \(([A-Z]{3,3}), ([A-Z]{3,3})\)/);
    my @array = ($2, $3);
    $map{$1} = \@array;
}

my $currentPos = 'AAA';
my $answer;
INFINITE: while (1) {
    my @directions = split(//, $directions);
    for my $way (@directions) {
        my @nextPos = @{$map{$currentPos}};
        $currentPos =
            $way eq 'L' ? $nextPos[0] : $nextPos[1];
        $answer++;
        printf("%d: moved %s with %s. Now at %s\n", $answer, $way, join(',', @nextPos), $currentPos);
        last INFINITE if ($currentPos eq 'ZZZ');
    }
}
print "\nFinal Answer=${answer}\n";
__DATA__
LRLRRRLRLLRRLRLRRRLRLRRLRRLLRLRRLRRLRRRLRRRLRLRRRLRLRRLRRLLRLRLLLLLRLRLRRLLRRRLLLRLLLRRLLLLLRLLLRLRRLRRLRRRLRRRLRRLRRLRRRLRLRLRRLRLRLRLRRLRRRLLRLLRRLRLRRRLRLRRRLRLRRRLRRRLRRLRLLLLRLRRRLRLRRLRLRRLRRLRRLLRRRLLLLLLRLRRRLRRLLRRRLRRLLLRLRLRLRRRLRRLRLRRRLRRLRRRLLRRLRRLLLRRRR

QSF = (JQX, GGN)
VBT = (XTD, KGR)
SMK = (SNK, LBX)
LSJ = (JMQ, TJJ)
QFG = (XLT, TVF)
BTF = (SLQ, DJX)
XDF = (JKG, XFH)
PFR = (JGJ, SPB)
QVS = (PXH, PXH)
HVA = (NMF, CTG)
FRS = (GSX, JQK)
GJX = (BRV, LVQ)
NDD = (XMG, PTS)
RDJ = (GHT, TPR)
PJG = (KMR, GCV)
SQM = (KFD, VPC)
DTN = (NCL, HHT)
TRX = (NGH, BBT)
DVR = (JGL, VBL)
FSH = (HVL, XXL)
NSK = (NCX, QHD)
HKC = (XNV, MHL)
QRV = (QNS, FQH)
BVQ = (KHF, VLM)
DXS = (TNK, PVV)
SNL = (DMG, NFH)
DTM = (XMF, BTF)
QHD = (CXS, KXX)
STP = (QNH, FGM)
CMJ = (KCD, LGF)
SDM = (XXT, GKQ)
MXN = (KKH, DXG)
DCS = (HND, MBD)
BKV = (VBT, TNH)
JNS = (QSF, PRS)
BDB = (JXM, NMH)
KQC = (PQS, BJV)
CVC = (JNS, NDN)
FSJ = (RPS, SDM)
LHG = (VMQ, LBF)
KKN = (LPC, MJQ)
CXL = (VKM, QPC)
LNL = (GRQ, DXM)
DFV = (SDM, RPS)
JHQ = (VNF, GBS)
XXT = (BSF, QJX)
NRL = (BJV, PQS)
PVD = (GFK, NVN)
DXM = (LQX, KTN)
JGL = (HSC, CTT)
LLH = (NCV, NKL)
KLN = (HQM, JPV)
TTG = (GJX, QRT)
BFB = (LXC, HNR)
QBX = (CLB, XLR)
DBV = (SSL, CXV)
MBB = (THC, LDK)
JVJ = (VHF, CNL)
GJB = (NGH, BBT)
CNT = (CTS, SKH)
KBX = (LNS, BTN)
VJF = (PXQ, QMF)
CVH = (BGQ, XBL)
TKD = (MFV, PPF)
XLG = (XJK, XBH)
XRK = (RLQ, PDX)
TCS = (SCM, KCB)
DLD = (VPV, BKD)
RNK = (TMJ, MVH)
JJG = (TBT, HGC)
MRV = (KQL, XDB)
JFN = (BTS, DCB)
TMR = (KRR, DKC)
XXL = (VMC, FNR)
LSB = (QRB, TFM)
SRH = (FXT, JQN)
FDS = (LMM, PRM)
QVB = (DQX, LDD)
NSQ = (CMP, MBB)
JMC = (JQK, GSX)
VXF = (BKV, KTH)
NJF = (MFV, PPF)
KMG = (KXD, GNB)
VPV = (VDP, GRG)
HSC = (RBP, TBQ)
RSR = (DLD, MBC)
JGF = (TDM, LSB)
KGP = (CHX, XDR)
DHQ = (BXX, FKB)
VDP = (HCX, RGB)
XLX = (NQX, CLR)
VPB = (LNJ, KDH)
TML = (HMS, NHC)
KLT = (MDQ, NFK)
SHV = (GDL, MKV)
VVX = (DGT, QPK)
VMC = (FRQ, BVH)
MPN = (XHB, DXS)
QGF = (STF, XSH)
HBM = (JDQ, RKC)
RRR = (LLD, HPK)
LVG = (SDF, QVT)
PMR = (BHP, VVQ)
LNP = (MCN, HXT)
XBX = (HRJ, CNH)
LBL = (RKV, FVM)
KFP = (NLX, HCG)
KBM = (QQV, FKL)
HVL = (VMC, FNR)
FKL = (FLX, GHH)
LCB = (SGN, CDX)
RKC = (MQR, DPM)
HLV = (GBS, VNF)
RXD = (SJJ, CXL)
HFK = (QRT, GJX)
GRV = (CRT, BNZ)
LJB = (LCN, CKX)
RMQ = (RBV, RBK)
BGQ = (LSJ, LLK)
HDH = (XFK, LQV)
KXS = (DBV, FVV)
JDQ = (MQR, DPM)
QXP = (FQH, QNS)
MJD = (TDM, LSB)
PKC = (DPN, DQL)
DLJ = (NCK, SSN)
TTK = (VVK, GHD)
MDF = (CDP, NJL)
FQH = (QJT, FGK)
JGJ = (FDS, DFL)
SKH = (FTN, HBT)
PGP = (TLX, QMX)
NDN = (QSF, PRS)
RBK = (HBM, JGV)
FTM = (PBK, TJQ)
DLG = (DPN, DQL)
SDF = (JGF, MJD)
SBV = (MLH, LNL)
MLH = (DXM, GRQ)
NKN = (MVS, NRR)
MLX = (VLK, KTD)
HDJ = (LVG, TKC)
SDP = (CFH, FBJ)
QQV = (FLX, FLX)
KBF = (HBP, PVD)
XJS = (MSK, TTK)
JFC = (LLH, XMJ)
HBT = (TSF, DJJ)
SRS = (JCT, CLN)
KGR = (LJB, BXQ)
TMP = (PVG, PVG)
PXC = (DTM, MXH)
KMJ = (TXV, FJT)
VRP = (BSV, RBF)
VLK = (PMR, MQQ)
GJG = (CLC, JVM)
CPF = (NNP, DCS)
CMP = (LDK, THC)
PTB = (XTL, DVH)
PVG = (DKP, DKP)
KCB = (VGS, NSQ)
THC = (TNN, TLG)
RBV = (HBM, JGV)
NRX = (CSF, DLK)
XTD = (BXQ, LJB)
TXV = (JPT, BFB)
CKB = (FGM, QNH)
VVR = (SJG, KXS)
HMS = (FRG, NNM)
DXG = (KGB, LSV)
XKB = (KHF, VLM)
GKG = (DXS, XHB)
GSC = (XNT, SBV)
RGN = (DBF, RFT)
LXR = (XBX, LGT)
SCM = (VGS, NSQ)
PXM = (TMP, LBG)
BXX = (DVR, MQV)
SJH = (TKD, NJF)
JPT = (HNR, LXC)
XHC = (NRL, KQC)
LQX = (NDT, MNM)
HHT = (TPT, TKK)
KFD = (SFF, RCP)
GSK = (GFB, DLJ)
DVN = (HCG, NLX)
SXF = (CSD, TQJ)
KRR = (TGF, DMC)
QRB = (JHQ, HLV)
LBA = (TBT, HGC)
SBN = (FMH, SNL)
BBK = (CTS, SKH)
HQM = (GXM, KJV)
HVN = (FSJ, DFV)
GXM = (TTG, HFK)
MVS = (BGS, DHQ)
RDS = (VXP, SRS)
MFX = (XQX, FSH)
KQL = (VQM, BFP)
CHF = (RFD, BBQ)
VFS = (TCM, HXD)
CSD = (CMJ, PRT)
GQF = (KTD, VLK)
CXV = (KRD, RRR)
LMF = (LQL, QLJ)
JJC = (SRH, HQG)
HGS = (JBR, TBH)
SHJ = (HBP, PVD)
PKM = (FVM, RKV)
CMV = (NMF, CTG)
JKS = (KJC, LLN)
XLR = (PLQ, DLN)
CTG = (BJM, BHH)
HJB = (TTK, MSK)
QJT = (NCC, SFB)
BFP = (JSG, KJJ)
CHX = (VGP, SRT)
HCX = (DMB, FPG)
LTN = (GBK, XMH)
KTH = (TNH, VBT)
JBC = (LBX, SNK)
MDL = (NTS, KFJ)
JPQ = (NJF, TKD)
GHM = (SSD, XTX)
CLR = (RMT, TLR)
GNT = (NFK, MDQ)
QNV = (RDS, XGC)
NVN = (TJG, TCS)
TPR = (TQT, GRJ)
GTQ = (BLJ, DGL)
LMM = (NXN, RXH)
CTB = (LRS, NDD)
MCN = (KCJ, NVD)
JGV = (RKC, JDQ)
NRR = (BGS, DHQ)
DJQ = (SXF, CQG)
MNC = (CHX, XDR)
MFV = (JNK, JBJ)
JBJ = (KLQ, SQM)
DCB = (PXX, RJR)
FXA = (MQX, NDF)
FVJ = (DLK, CSF)
PXH = (JJG, JJG)
CBT = (HQP, NDS)
NKC = (BLJ, DGL)
TFM = (JHQ, HLV)
LSF = (LRS, NDD)
XNV = (GDJ, KBX)
TXQ = (MHQ, VXT)
PNV = (VDD, FKH)
MSK = (VVK, GHD)
SRL = (GNS, BKJ)
XXC = (CKR, DCJ)
FBJ = (LFK, TJR)
FRL = (KMJ, NMT)
JQN = (BRL, NMG)
RVQ = (TML, KNH)
CMQ = (FMH, SNL)
NDF = (PPK, VPB)
HRJ = (TVL, CPX)
XTR = (HPT, JFM)
XNT = (MLH, LNL)
LBG = (PVG, MNS)
QRF = (XCG, XCG)
NXN = (LNP, QGG)
SLQ = (GSK, NDG)
TNN = (DPL, CKF)
PQS = (JBC, SMK)
TJR = (KMG, KHR)
CGL = (LXR, XRG)
GGN = (TDT, RXD)
PQP = (NKN, KNK)
KRJ = (CTB, LSF)
FGK = (NCC, SFB)
RCP = (GKG, MPN)
HTP = (LBF, VMQ)
VMQ = (HBQ, JBB)
NDM = (CMV, NMZ)
PJF = (QMF, PXQ)
CFX = (JGJ, SPB)
TLF = (TKC, LVG)
HVK = (PXH, QFQ)
CHB = (JPQ, SJH)
MVH = (HBC, DJQ)
FPG = (TBJ, RVQ)
JCT = (FKM, MRV)
DLK = (NSK, SFN)
GRQ = (KTN, LQX)
PRQ = (RDJ, CGP)
LBJ = (CMV, CMV)
RJR = (SXG, QNK)
RBP = (JMP, TMR)
RNV = (QKN, KRJ)
SJJ = (QPC, VKM)
GDJ = (BTN, LNS)
XHJ = (CVH, FSG)
GKQ = (BSF, QJX)
SSD = (CKB, STP)
KPT = (FHX, DTN)
TKC = (QVT, SDF)
SFN = (QHD, NCX)
JQX = (RXD, TDT)
SSC = (BKB, VQQ)
TBH = (PFR, CFX)
SRT = (GLQ, CPF)
MDQ = (HDJ, TLF)
RFT = (QXP, QRV)
QHG = (LDD, DQX)
SFF = (GKG, MPN)
RDQ = (DQQ, XLM)
QDS = (KTH, BKV)
JHC = (DFV, FSJ)
TGF = (FTM, XSD)
XDB = (VQM, BFP)
SGD = (KJC, LLN)
TDM = (QRB, TFM)
CFH = (TJR, LFK)
VDD = (FRR, CBT)
PTS = (PTB, LVB)
RLX = (GDL, MKV)
SFB = (HJM, SRD)
CGP = (TPR, GHT)
GBL = (TMP, LBG)
JSG = (QVS, QVS)
LSM = (TMJ, MVH)
BKD = (GRG, VDP)
NJL = (RSR, TNZ)
PSS = (STF, XSH)
PLQ = (NRX, FVJ)
CPX = (PSK, XRK)
JLK = (GSC, CKL)
BHH = (DRV, HQH)
GBK = (FDD, FDD)
KFJ = (HFG, BCR)
KMV = (NRL, KQC)
TNK = (RDQ, DKS)
HCG = (CXN, JLR)
LVQ = (MFX, CPJ)
RGX = (CHT, TTX)
TVF = (VKL, CLT)
FVT = (JMC, FRS)
SMT = (KVV, NFL)
DMG = (PSV, HGD)
MDS = (KDR, JMT)
DFK = (TXQ, HTM)
HBC = (SXF, CQG)
NFK = (TLF, HDJ)
BNZ = (HHG, MLN)
HGD = (CHB, MHT)
QNK = (VFS, BVV)
KNH = (HMS, NHC)
RMT = (XKB, BVQ)
KKH = (LSV, KGB)
MXH = (XMF, BTF)
HHG = (NKC, GTQ)
XFH = (DFK, CPS)
FDD = (CRT, CRT)
GBS = (FHF, HDB)
PRS = (GGN, JQX)
GXR = (KXS, SJG)
XSH = (KSB, RKF)
KTD = (MQQ, PMR)
FRR = (HQP, NDS)
VQQ = (FKQ, TRM)
HBP = (NVN, GFK)
FCH = (PVP, QFG)
DFF = (BKJ, GNS)
FKM = (KQL, XDB)
PXQ = (BQV, DMV)
GHA = (DLD, MBC)
RLQ = (GJG, FGQ)
PVP = (TVF, XLT)
RBF = (XCX, MDS)
BGS = (BXX, FKB)
CHT = (JCG, XTR)
MNK = (BKB, VQQ)
NNM = (MXN, QTC)
LVB = (DVH, XTL)
CKR = (TGL, SFJ)
FXT = (NMG, BRL)
PCP = (RQK, KNF)
HFB = (XHP, LTN)
TJQ = (NTM, PXC)
CXH = (PQP, GRL)
LDK = (TLG, TNN)
GSX = (KBM, RCT)
ZZZ = (XLR, CLB)
GND = (NPS, JVJ)
DQQ = (KPT, FVC)
JVM = (KMV, XHC)
KVV = (HQQ, RNV)
XHP = (GBK, GBK)
HGF = (XCG, CJF)
VKL = (XLX, DPD)
SPB = (FDS, DFL)
VHF = (NLM, LGX)
TDT = (SJJ, CXL)
JQK = (KBM, RCT)
QKN = (CTB, LSF)
NTM = (DTM, MXH)
PPF = (JNK, JBJ)
QMF = (DMV, BQV)
LSV = (QBL, VVX)
NMT = (TXV, FJT)
NHC = (NNM, FRG)
GNB = (GQF, MLX)
GHD = (DFF, SRL)
TRM = (LGL, RGX)
FJC = (DCJ, CKR)
DRV = (HDR, PJG)
MHL = (GDJ, KBX)
HRF = (XHP, LTN)
LNS = (KBF, SHJ)
JGX = (FSG, CVH)
TVL = (PSK, XRK)
DQX = (BBK, CNT)
VLM = (TRX, GJB)
BVH = (QFP, JFN)
JPV = (GXM, KJV)
HPB = (XBH, XJK)
RQK = (JKS, SGD)
JBB = (FCH, NJB)
KJC = (CXH, QFN)
NFL = (HQQ, RNV)
NVL = (NPS, JVJ)
XHB = (PVV, TNK)
QRT = (LVQ, BRV)
KNF = (JKS, SGD)
PRN = (NTS, KFJ)
BVV = (HXD, TCM)
HXM = (VJF, PJF)
BTS = (RJR, PXX)
TJG = (KCB, SCM)
LXC = (RGD, QCR)
HJM = (KLM, KKN)
JCG = (HPT, JFM)
LBX = (GTV, CHF)
NPQ = (CSP, KHM)
NLM = (HPQ, VRP)
MQV = (JGL, VBL)
DJJ = (HGS, LJJ)
JLR = (SDP, GJC)
LDD = (CNT, BBK)
RGD = (HMN, CVC)
HNR = (RGD, QCR)
CKX = (DLG, PKC)
TLG = (DPL, CKF)
BKB = (FKQ, TRM)
TNZ = (MBC, DLD)
CLC = (KMV, XHC)
BQS = (KHH, RBR)
KHH = (QTR, PNV)
NCX = (CXS, KXX)
SDK = (RBK, RBV)
QTR = (VDD, FKH)
VPC = (SFF, RCP)
SRD = (KLM, KKN)
BDJ = (CDX, SGN)
LRS = (PTS, XMG)
RJP = (GSC, CKL)
SJT = (JMC, FRS)
JXM = (BPQ, QNV)
XMH = (FDD, GRV)
BBT = (DDV, SCH)
FJT = (JPT, BFB)
NLX = (JLR, CXN)
PPH = (XDF, VLV)
BHP = (CMQ, SBN)
PBK = (NTM, PXC)
CRT = (MLN, HHG)
HQG = (FXT, JQN)
LBF = (JBB, HBQ)
HDB = (HLT, RCX)
NNP = (HND, MBD)
PSA = (MLN, HHG)
CSF = (SFN, NSK)
CJF = (MHV, GNZ)
BQV = (QRQ, GHV)
JPJ = (QRF, HGF)
VQM = (JSG, KJJ)
SFS = (QRF, QRF)
DCN = (KVV, NFL)
SGN = (BQS, CKP)
FLX = (LBJ, LBJ)
BJV = (SMK, JBC)
NQX = (TLR, RMT)
CTT = (TBQ, RBP)
BCR = (GXR, VVR)
HQH = (PJG, HDR)
VJP = (SRH, HQG)
LGT = (HRJ, CNH)
LLD = (BDB, XDT)
QMX = (HKC, MCP)
HBH = (XVX, TBP)
XMF = (SLQ, DJX)
TPT = (NRN, TSK)
CKF = (XJS, HJB)
QTC = (DXG, KKH)
KDR = (CXR, PRQ)
RCX = (CGL, GFM)
KCD = (QDS, VXF)
LNJ = (QGF, PSS)
KNK = (NRR, MVS)
FKQ = (RGX, LGL)
VXG = (QMX, TLX)
JMQ = (BLT, PRD)
RCT = (QQV, FKL)
SNK = (GTV, CHF)
FMH = (NFH, DMG)
TJJ = (BLT, PRD)
LGF = (VXF, QDS)
XCG = (MHV, MHV)
MNS = (DKP, MSD)
CXN = (SDP, GJC)
QCR = (CVC, HMN)
VBL = (HSC, CTT)
GCV = (NVL, GND)
DFL = (LMM, PRM)
CQG = (CSD, TQJ)
NCV = (CLJ, PPH)
GTV = (RFD, BBQ)
NCK = (JGX, XHJ)
XLT = (CLT, VKL)
KCJ = (JJS, JJS)
LLN = (QFN, CXH)
TQJ = (PRT, CMJ)
VTT = (KHM, CSP)
SJZ = (HGC, TBT)
NCL = (TPT, TKK)
CNL = (NLM, LGX)
FKH = (CBT, FRR)
GRG = (RGB, HCX)
FSG = (BGQ, XBL)
HXT = (KCJ, NVD)
DLN = (FVJ, NRX)
MQR = (VJP, JJC)
HCS = (KMJ, NMT)
LQV = (QHG, QVB)
KLM = (LPC, MJQ)
CGD = (DBF, RFT)
SKX = (XVX, TBP)
SSN = (XHJ, JGX)
SXG = (BVV, VFS)
MCP = (XNV, MHL)
DPD = (NQX, CLR)
JMP = (KRR, DKC)
QRQ = (RGN, CGD)
VGP = (GLQ, CPF)
CLT = (DPD, XLX)
TNH = (XTD, KGR)
DGL = (RLX, SHV)
VVK = (DFF, SRL)
HTM = (MHQ, VXT)
GHH = (LBJ, NDM)
GRJ = (KGP, MNC)
QVT = (MJD, JGF)
QNS = (FGK, QJT)
NMG = (PKM, LBL)
FVV = (SSL, CXV)
HXK = (RQK, KNF)
GNZ = (NDF, MQX)
KSB = (QXN, SCD)
RFD = (JHC, HVN)
CXR = (RDJ, CGP)
KML = (QLJ, LQL)
DCJ = (TGL, SFJ)
VGN = (LQV, XFK)
DGT = (HXK, PCP)
KDH = (PSS, QGF)
TKK = (NRN, TSK)
DQL = (HCS, FRL)
VNF = (FHF, HDB)
TBT = (FJC, XXC)
FTN = (DJJ, TSF)
FGQ = (CLC, JVM)
FVC = (DTN, FHX)
QJX = (PXM, GBL)
CLN = (MRV, FKM)
NTS = (BCR, HFG)
JFM = (SSX, KLN)
BRV = (MFX, CPJ)
CTS = (FTN, HBT)
JKG = (DFK, CPS)
KGB = (VVX, QBL)
DPN = (HCS, FRL)
LCN = (DLG, PKC)
MLN = (GTQ, NKC)
KHM = (HXM, LBN)
TCM = (RKN, GHM)
NMZ = (CTG, NMF)
RXH = (LNP, QGG)
NDT = (PRN, MDL)
QFP = (BTS, DCB)
KJV = (HFK, TTG)
RKN = (SSD, XTX)
QNH = (DCN, SMT)
KMR = (NVL, GND)
PSV = (CHB, MHT)
GHV = (RGN, CGD)
HND = (LSM, RNK)
NCC = (HJM, SRD)
BTN = (KBF, SHJ)
XGC = (VXP, SRS)
DDV = (PRX, VXJ)
CLJ = (VLV, XDF)
SSX = (HQM, JPV)
NMF = (BJM, BHH)
DBF = (QRV, QXP)
DKS = (DQQ, XLM)
FHX = (HHT, NCL)
CKL = (SBV, XNT)
DPL = (XJS, HJB)
TTX = (XTR, JCG)
NJB = (QFG, PVP)
XBH = (DVN, KFP)
DKC = (DMC, TGF)
SSL = (RRR, KRD)
FVM = (HTP, LHG)
MNM = (MDL, PRN)
NFH = (HGD, PSV)
MQQ = (VVQ, BHP)
VXJ = (RJP, JLK)
GFM = (LXR, XRG)
HBQ = (FCH, NJB)
XFK = (QHG, QVB)
JBR = (CFX, PFR)
RHN = (SDK, RMQ)
HPT = (SSX, KLN)
GDL = (MNK, SSC)
DJX = (GSK, NDG)
LQL = (VTT, NPQ)
SFJ = (RHN, GDT)
BLT = (VGN, HDH)
DVH = (HFB, HRF)
VLV = (XFH, JKG)
BSV = (MDS, XCX)
BBQ = (JHC, HVN)
JMT = (PRQ, CXR)
HPK = (XDT, BDB)
CPJ = (FSH, XQX)
QFQ = (JJG, SJZ)
TSK = (SKX, HBH)
HFG = (VVR, GXR)
PRX = (JLK, RJP)
MKV = (SSC, MNK)
XTL = (HFB, HRF)
KHR = (KXD, GNB)
SJG = (DBV, FVV)
TLR = (BVQ, XKB)
CNH = (CPX, TVL)
LGX = (VRP, HPQ)
QGG = (MCN, HXT)
BXQ = (CKX, LCN)
PPK = (LNJ, KDH)
XVX = (JFC, PBJ)
NKL = (CLJ, PPH)
XLM = (KPT, FVC)
XDT = (NMH, JXM)
PRM = (RXH, NXN)
XBL = (LLK, LSJ)
BLJ = (SHV, RLX)
RPS = (GKQ, XXT)
NMH = (QNV, BPQ)
MHT = (SJH, JPQ)
TBQ = (JMP, TMR)
CDX = (BQS, CKP)
HDR = (KMR, GCV)
CKP = (RBR, KHH)
TBJ = (TML, KNH)
XRG = (LGT, XBX)
NDS = (GNT, KLT)
KLQ = (VPC, KFD)
GHT = (TQT, GRJ)
MBD = (RNK, LSM)
XSD = (PBK, TJQ)
PVV = (DKS, RDQ)
KRD = (LLD, HPK)
VKM = (SJT, FVT)
FNR = (FRQ, BVH)
HMN = (NDN, JNS)
NGH = (SCH, DDV)
PRD = (VGN, HDH)
BKJ = (HPB, XLG)
GDT = (RMQ, SDK)
FGM = (SMT, DCN)
MHQ = (SFS, JPJ)
VXT = (SFS, JPJ)
CXS = (LMF, KML)
DMV = (QRQ, GHV)
AAA = (CLB, XLR)
QPC = (SJT, FVT)
PRT = (LGF, KCD)
PSK = (RLQ, PDX)
LJJ = (JBR, TBH)
LBN = (VJF, PJF)
QFN = (GRL, PQP)
SCD = (VXG, PGP)
GJC = (CFH, FBJ)
MQX = (VPB, PPK)
QLJ = (VTT, NPQ)
RKF = (QXN, SCD)
PBJ = (LLH, XMJ)
SCH = (PRX, VXJ)
VVQ = (CMQ, SBN)
KTN = (MNM, NDT)
FRG = (QTC, MXN)
XCX = (JMT, KDR)
CDP = (RSR, RSR)
XMG = (PTB, LVB)
PXX = (SXG, QNK)
MBC = (BKD, VPV)
PDX = (GJG, FGQ)
DPM = (JJC, VJP)
BPQ = (RDS, XGC)
XJK = (KFP, DVN)
NVD = (JJS, MDF)
GLQ = (DCS, NNP)
MHV = (MQX, NDF)
CPS = (TXQ, HTM)
BRL = (LBL, PKM)
VGS = (MBB, CMP)
HQQ = (KRJ, QKN)
LGL = (CHT, TTX)
KJJ = (QVS, HVK)
KXD = (MLX, GQF)
KHF = (TRX, GJB)
GFB = (NCK, SSN)
BSF = (PXM, GBL)
TMJ = (DJQ, HBC)
MSD = (QBX, ZZZ)
TGL = (GDT, RHN)
XQX = (XXL, HVL)
NPS = (VHF, CNL)
LFK = (KMG, KHR)
LPC = (BDJ, LCB)
CLB = (DLN, PLQ)
QBL = (DGT, QPK)
GRL = (NKN, KNK)
MJQ = (LCB, BDJ)
HQP = (KLT, GNT)
NRN = (HBH, SKX)
JNK = (KLQ, SQM)
JJS = (CDP, CDP)
TBP = (PBJ, JFC)
TSF = (HGS, LJJ)
STF = (RKF, KSB)
NDG = (GFB, DLJ)
DMC = (FTM, XSD)
GFK = (TJG, TCS)
GNS = (XLG, HPB)
FHF = (HLT, RCX)
FRQ = (JFN, QFP)
BJM = (HQH, DRV)
RKV = (LHG, HTP)
HGC = (XXC, FJC)
XTX = (STP, CKB)
FKB = (DVR, MQV)
XDR = (SRT, VGP)
RGB = (FPG, DMB)
VXP = (CLN, JCT)
TQT = (MNC, KGP)
LLK = (TJJ, JMQ)
DKP = (QBX, QBX)
XMJ = (NCV, NKL)
HXD = (GHM, RKN)
QXN = (VXG, PGP)
CSP = (LBN, HXM)
HPQ = (RBF, BSV)
DMB = (TBJ, RVQ)
QPK = (PCP, HXK)
KXX = (LMF, KML)
TLX = (MCP, HKC)
RBR = (PNV, QTR)
HLT = (GFM, CGL)