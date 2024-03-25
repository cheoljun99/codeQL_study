import cpp

from FunctionCall mallocCall, FunctionCall freeCall
where
  mallocCall.getTarget().hasName("malloc") and
  freeCall.getTarget().hasName("free")
select mallocCall, freeCall, count(mallocCall), count(freeCall)