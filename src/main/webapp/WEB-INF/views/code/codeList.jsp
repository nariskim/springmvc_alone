<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<a href="/myapp/code/codeForm?oycdSeq=<c:out value="${item.oycdSeq}"/>">등록</a>

<br>

<form id="" name="" method="get" action="/myapp/code/codeList">
	<select name="scOycdDelNy" id="scOycdDelNy">
		<option value="">::삭제여부::
		<option value="1" <c:if test="${vo.scOycdDelNy eq 1 }">selected</c:if>>Y
		
		<option value="0" <c:if test="${vo.scOycdDelNy eq 0 }">selected</c:if>>N
		
	</select> || 회원이름 : <input type="text" name="scOycdName" id="scOycdName" value="<c:out value="${vo.scOycdName}"/>">
	|| <select name="scOption" id="scOption">
		<option value="">::검색구분::
		<option value="1" <c:if test="${vo.scOption eq 1 }">selected</c:if>>한글
		
		<option value="2" <c:if test="${vo.scOption eq 2 }">selected</c:if>>영문
		
	</select> <input type="text" name="scValue" id="scValue" value="<c:out value="${vo.scValue}"/>">
	<input type="submit" name="search">
</form>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">

			<c:out value="${item.oycgSeq}" />
			<c:out value="${item.oycdSeq}" /> | <a
				href="/myapp/code/codeView?oycdSeq=<c:out value="${item.oycdSeq}"/>"><c:out
					value="${item.oycdName}" /></a> | <c:out
					value="${item.oycdNameEng}" /> | <c:choose>
					<c:when test="${item.oycdDelNy eq 0 }">O</c:when>
					<c:otherwise>X</c:otherwise>
				</c:choose>
			<br>

		</c:forEach>
	</c:otherwise>
</c:choose>
<c:out value="${vo.startPage}" />
<nav aria-label="...">
	<ul class="pagination">

		<c:if test="${vo.startPage gt vo.pageNumToShow}">
			<li class="page-item"><a class="page-link"
				href="/myapp/code/codeList?thisPage=${vo.startPage - 1}&scOption=<c:out value="${vo.scOption}"/>&scValue=<c:out value="${vo.scValue}"/>">Previous</a></li>
		</c:if>
		<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
			<c:choose>
				<c:when test="${i.index eq vo.thisPage}">
					<li class="page-item active"><a class="page-link"
						href="/myapp/code/codeList?thisPage=${i.index}&scOption=<c:out value="${vo.scOption}"/>&scValue=<c:out value="${vo.scValue}"/>">${i.index}</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="/myapp/code/codeList?thisPage=${i.index}&scOption=<c:out value="${vo.scOption}"/>&scValue=<c:out value="${vo.scValue}"/>">${i.index}</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${vo.endPage ne vo.totalPages}">
			<li class="page-item"><a class="page-link"
				href="/myapp/code/codeList?thisPage=${vo.endPage + 1}&scOption=<c:out value="${vo.scOption}"/>&scValue=<c:out value="${vo.scValue}"/>">Next</a></li>
		</c:if>
	</ul>
</nav>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>