import cpp

from FunctionCall memcpyCall, Expr sizeArg, IntegralType argumentType
where
  memcpyCall.getTarget().hasName("memcpy") and
  sizeArg= memcpyCall.getArgument(2) and
  argumentType = sizeArg.getType() and
  argumentType.isSigned()
select memcpyCall, sizeArg, argumentType, "CWE-195 dectect (memcpy's size is signed variable)"