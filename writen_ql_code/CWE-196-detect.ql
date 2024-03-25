import cpp

from Cast cast, IntegralType sourceType, IntegralType targetType
where
    cast.getExpr().getType() = sourceType and
    cast.getType() = targetType and
    sourceType.isUnsigned() and
    targetType.isSigned() and
    not targetType.isUnsigned()
select cast, sourceType, targetType, "detect CWE-196"