<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<form id="formList" name="formList" method="post" action="/myapp/code/codeGroupList">

<a href="javascript:goForm();">등록</a>
<br>

	<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
	<input type="hidden" id="oycgSeq" name="oycgSeq">
 	
	<select name="scOycgDelNy" id="scOycgDelNy">
		<option value="">::삭제여부::
		<option value="1" <c:if test="${vo.scOycgDelNy eq 1 }">selected</c:if>>Y

		<option value="0" <c:if test="${vo.scOycgDelNy eq 0 }">selected</c:if>>N

		
	</select> || 회원이름 : <input type="text" name="scOycgName" id="scOycgName" value="<c:out value="${vo.scOycgName}"/>">
	||
	<select name="scOption" id="scOption">
		<option value="">::검색구분::
		<option value="1" <c:if test="${vo.scOption eq 1 }">selected</c:if>>한글

		
		<option value="2" <c:if test="${vo.scOption eq 2 }">selected</c:if>>영문

		
	</select>
	<input type="text" name="scValue" id="scValue" value="<c:out value="${vo.scValue}"/>">
	<input type="submit" id="btnSubmit" name="search"><br><br>
	
	<c:choose>
		<c:when test="${fn:length(list) eq 0}">
			<tr>
				<td class="text-center" colspan="9">There is no data!</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${list}" var="item" varStatus="status">

				<c:out value="${item.oycgSeq}"/> | 
				<a href="javascript:goView(<c:out value="${item.oycgSeq}"/>);">
				<c:out value="${item.oycgName}" /></a> | 
				<c:out value="${item.oycgNameEng}" />
				<c:choose>
					<c:when test="${item.oycgDelNy eq 0 }">O</c:when>
					<c:otherwise>X</c:otherwise>
				</c:choose>
				<br>

			</c:forEach>
		</c:otherwise>
	</c:choose>

	<br>
	
	<nav>
		<ul class="pagination">
			<c:if test="${vo.startPage gt vo.pageNumToShow}">
				<li class="page-item"><a class="page-link" href="javascript:goList(<c:out value='${vo.startPage - 1}'/>);">Previous</a></li>
			</c:if>
			<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
				<c:choose>
					<c:when test="${i.index eq vo.thisPage}">
						<li class="page-item active"><a class="page-link" href="javascript:goList(<c:out value='${i.index}'/>);">${i.index}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="javascript:goList(<c:out value='${i.index}'/>);">${i.index}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${vo.endPage ne vo.totalPages}">
				<li class="page-item"><a class="page-link" href="javascript:goList(<c:out value='${vo.endPage + 1}'/>);">Next</a></li>
			</c:if>
		</ul>
	</nav>
	
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script src="/myapp/resources/js/validation.js"></script>

<script type="text/javascript">
/* $("#btnSubmit").on(
		"click",
		function() {

			if (!checkNull($("#scOycgName"), $("#scOycgName").val(),
					"검색어를 입력해주세요."))
				return false;
			if (!checkNull($("#scValue"), $("#scValue").val(),
					"검색어를 입력해주세요."))
				return false;
		}); */
		
goList = function(seq) {
	alert(seq);
	// form 객체를 가져온다
	$("#thisPage").val(seq);
	$("#formList").submit();
	// 그 가져온 객체를 전달한다.
}

goView = function(seq){
	alert(seq);
	$("#oycgSeq").val(seq);
	$("#formList").attr("action","/myapp/code/codeGroupView");
	$("#formList").submit();
}

goForm = function(){
	alert();
	$("#formList").attr("action","/myapp/code/codeGroupForm");
	$("#formList").submit();
}

</script>

<!-- <script type="text/javascript">
$("#btnSubmit").on("click", function() {
	/* alert($("scOption").val()); */

	alert("hello javascript!!!");
	confirm("진짜 삭제? 복구 노노");
}); </script>-->



<!-- <script type="text/javascript">
$("#btnSubmit").on("click", function(){
	/* alert($("scOption").val()); */
	alert($("#scOycgDelNy").val());
	alert("jquery : " + $("#scOycgName").val());		// jquery 방식
	alert($("#scOption").val());
	alert($("#scValue").val());
/* 	alert("javascript : " + document.getElementById("#scOycgName").value);	 */	// javascript 방식
});
</script> -->



