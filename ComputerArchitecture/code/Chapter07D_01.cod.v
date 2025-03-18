if      ((Rs1E==RdM)&RegWriteM) & (Rs1E!=0) then   ForwardAE = 10
else if ((Rs1E==RdW)&RegWriteW) & (Rs1E!=0) then   ForwardAE = 01
else                                               ForwardAE = 00

if      ((Rs2E==RdM)&RegWriteM) & (Rs2E!=0) then   ForwardBE = 10
else if ((Rs2E==RdW)&RegWriteW) & (Rs2E!=0) then   ForwardBE = 01
else                                               ForwardBE = 00