<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<form id="formView" action="" method="post">
	<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
	<input type="hidden" id="oycgSeq" name="oycgSeq" value="<c:out value="${vo.oycgSeq}"/>">
	<input type="hidden" id="scOycgDelNy" name="scOycgDelNy" value="<c:out value="${vo.scOycgDelNy}"/>">
	<input type="hidden" id="scOycgName" name="scOycgName" value="<c:out value="${vo.scOycgName}"/>">
	<input type="hidden" id="scOption" name="scOption" value="<c:out value="${vo.scOption}"/>">
	<input type="hidden" id="scValue" name="scValue" value="<c:out value="${vo.scValue}"/>">
</form>

<c:out value="${item.oycgSeq}" />
|
<c:out value="${item.oycgName}" />
|
<c:out value="${item.oycgDelNy}" />

<br>
<%-- <a href="/myapp/code/codeGroupList?thisPage=<c:out value="${vo.thisPage}"/>&scOption=<c:out value="${vo.scOption}"/>&scValue=<c:out value="${vo.scValue}"/>">목록</a>
<a href="/myapp/code/codeGroupEdit?oycgSeq=<c:out value="${item.oycgSeq}"/>&thisPage=<c:out value="${vo.thisPage}"/>&scOption=<c:out value="${vo.scOption}"/>&scValue=<c:out value="${vo.scValue}"/>">수정</a>
<a href="/myapp/code/codeGroupDelete?oycgSeq=<c:out value="${item.oycgSeq}"/>&thisPage=<c:out value="${vo.thisPage}"/>&scOption=<c:out value="${vo.scOption}"/>&scValue=<c:out value="${vo.scValue}"/>" id="btnDelete">삭제(T)</a>
<a href="/myapp/code/codeGroupFelete?oycgSeq=<c:out value="${item.oycgSeq}"/>&thisPage=<c:out value="${vo.thisPage}"/>&scOption=<c:out value="${vo.scOption}"/>&scValue=<c:out value="${vo.scValue}"/>">삭제(F)</a> --%>
<a href="javascript:goList();">목록으로</a>
<a href="javascript:goEdit();">수정하기</a>


<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/myapp/resources/js/validation.js"></script>

<!-- 	<script type="text/javascript">	
	$("#btnDelete").on("click", function() {
		var answer = confirm ('삭제 하시겠습니까?');

		if(answer){
			//	/myapp/code/codeGroupDele 이동
		} else {
			return false;
		}
	
	});
	</script> -->
	
	<script type="text/javascript">


	goList = function(){
		$("#formView").attr("action", "/myapp/code/codeGroupList");
		$("#formView").submit();
	};
	
	goEdit = function(){
		$("#formView").attr("action", "/myapp/code/codeGroupEdit");
		$("#formView").submit();
	};
	
/* 	$("#btnDelete").on("click", function(){
		
		var delConfirm = confirm('당신의 파일이 삭제됩니다.');
		
		if(delConfirm){
			var delConfirm2 = confirm("정말로 삭제합니다?");
			
			if(delConfirm2){
				alert("삭제가 완료되었습니다.")
			} else {
				return false;
			}
			
		} else {
			return false;
		}
		
	});
	
$("#btnUpdateDelete").on("click", function(){
		
		var delConfirm = confirm('당신의 파일이 삭제됩니다.');
		
		if(delConfirm){
			var delConfirm2 = confirm("정말로 삭제합니다?");
			
			if(delConfirm2){
				alert("삭제가 완료되었습니다.")
			} else {
				return false;
			}
			
		} else {
			return false;
		}
		
	}); */

</script>
