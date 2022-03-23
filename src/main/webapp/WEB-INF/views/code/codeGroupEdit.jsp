<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<form method="post" action ="/myapp/code/codeGroupUpdt">
	<input type="hidden"name="thisPage" value="<c:out value="${vo.thisPage}"/>">
	<input type="hidden" name="scOption" value="<c:out value="${vo.scOption}"/>">
	<input type="hidden" name="scValue" value="<c:out value="${vo.scValue}"/>">	
	<input type="hidden" name="oycgSeq" value= "<c:out value="${item.oycgSeq}"/>">

	<input type="text" name="oycgName" value= <c:out value="${item.oycgName}"/>>	
	
	<input type="submit" value="제출">
</form>