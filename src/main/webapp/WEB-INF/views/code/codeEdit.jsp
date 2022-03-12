<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<form method="post" action ="/myapp/code/codeUpdt">
	
	
	<input type="hidden" name="oycdSeq" value= <c:out value="${item.oycdSeq}"/>>

	<input type="text" name="oycdName" value= <c:out value="${item.oycdName}"/>>	
	
	<input type="submit" value="제출">
</form>