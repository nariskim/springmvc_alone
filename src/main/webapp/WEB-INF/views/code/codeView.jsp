<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<c:out value="${item.oycdSeq}" />
|
<c:out value="${item.oycdName}" />
|
<c:out value="${item.oycdDelNy}" />

<br>

<a href="/myapp/code/codeEdit?oycdSeq=<c:out value="${item.oycdSeq}"/>">수정</a>
<a href="/myapp/code/codeDelete?oycdSeq=<c:out value="${item.oycdSeq}"/>" id="btnDelete">삭제(T)</a>

<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/myapp/resources/js/validation.js"></script>

	<script type="text/javascript">	
	$("#btnDelete").on("click", function() {
		var answer = confirm ('삭제 하시겠습니까?');

		if(answer){
			//	/myapp/code/codeGroupDele 이동
		} else {
			return false;
		}
	
	});
	</script>
