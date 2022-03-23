<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<c:out value="${item.oycgSeq}" />
|
<c:out value="${item.oycgName}" />
|
<c:out value="${item.oycgDelNy}" />

<br>
<a href="/myapp/code/codeGroupList?thisPage=<c:out value="${vo.thisPage}"/>&scOption=<c:out value="${vo.scOption}"/>&scValue=<c:out value="${vo.scValue}"/>">목록</a>
<a href="/myapp/code/codeGroupEdit?oycgSeq=<c:out value="${item.oycgSeq}"/>&thisPage=<c:out value="${vo.thisPage}"/>&scOption=<c:out value="${vo.scOption}"/>&scValue=<c:out value="${vo.scValue}"/>">수정</a>
<a href="/myapp/code/codeGroupDelete?oycgSeq=<c:out value="${item.oycgSeq}"/>&thisPage=<c:out value="${vo.thisPage}"/>&scOption=<c:out value="${vo.scOption}"/>&scValue=<c:out value="${vo.scValue}"/>" id="btnDelete">삭제(T)</a>
<a href="/myapp/code/codeGroupFelete?oycgSeq=<c:out value="${item.oycgSeq}"/>&thisPage=<c:out value="${vo.thisPage}"/>&scOption=<c:out value="${vo.scOption}"/>&scValue=<c:out value="${vo.scValue}"/>">삭제(F)</a>


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