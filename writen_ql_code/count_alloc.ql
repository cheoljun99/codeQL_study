import cpp

from FunctionCall mallocOrCallocOrRealloc
where
  mallocOrCallocOrRealloc.getTarget().getName() = "malloc" or
  mallocOrCallocOrRealloc.getTarget().getName() = "calloc" or
  mallocOrCallocOrRealloc.getTarget().getName() = "realloc"
	
select count(mallocOrCallocOrRealloc) as allocCount