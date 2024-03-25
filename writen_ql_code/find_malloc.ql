import cpp

from FunctionCall mallocCall
where
  mallocCall.getTarget().hasName("malloc")
select mallocCall