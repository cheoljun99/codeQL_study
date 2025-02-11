import cpp

from FunctionCall freeCall
where
  freeCall.getTarget().getName() = "free"

select count(freeCall) as freeCount