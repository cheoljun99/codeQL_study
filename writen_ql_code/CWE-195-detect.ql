import cpp

from Cast cast, IntegralType sourceType, IntegralType targetType
where
    cast.getExpr().getType() = sourceType and
    cast.getType() = targetType and
    sourceType.isSigned() and
    targetType.isUnsigned() and
    not targetType.isSigned()
select cast, sourceType, targetType, "detect CWE-195",cast.getLocation()