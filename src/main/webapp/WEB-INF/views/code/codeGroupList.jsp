<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	<br>
<a
	href="/myapp/code/codeGroupForm?oycgSeq=<c:out value="${item.oycgSeq}"/>">등록</a>

<br><br>
<form id="" name="" method="get" action="/myapp/code/codeGroupList">

	<select name="scOycgDelNy">
		<option value="">::삭제여부::
		<option value="1">Y
		<option value="0">N
	</select> || 회원이름 : <input type="text" name="scOycgName"> || <select
		name="scOption">
		<option value="">::검색구분::
		<option value="1">한글
		<option value="2">영문
	</select> <input type="text" name="scValue"> <input type="submit"
		name="search"> <br><br>
	<c:choose>
		<c:when test="${fn:length(list) eq 0}">
			<tr>
				<td class="text-center" colspan="9">There is no data!</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${list}" var="item" varStatus="status">

				<c:out value="${item.oycgSeq}" /> | <a
					href="/myapp/code/codeGroupView?oycgSeq=<c:out value="${item.oycgSeq}"/>"><c:out
						value="${item.oycgName}" /></a> | <c:out value="${item.oycgNameEng}" />
				<br>
				
			</c:forEach>
		</c:otherwise>
	</c:choose>
</form>
<br>
<c:out value="${vo.startPage}" />
<nav aria-label="...">
	<ul class="pagination">

		<c:if test="${vo.startPage gt vo.pageNumToShow}">
			<li class="page-item"><a class="page-link"
				href="/myapp/code/codeGroupList?thisPage=${vo.startPage - 1}">Previous</a></li>
		</c:if>
		<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
			<c:choose>
				<c:when test="${i.index eq vo.thisPage}">
					<li class="page-item active"><a class="page-link"
						href="/myapp/code/codeGroupList?thisPage=${i.index}">${i.index}</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link"
						href="/myapp/code/codeGroupList?thisPage=${i.index}">${i.index}</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${vo.endPage ne vo.totalPages}">
			<li class="page-item"><a class="page-link"
				href="/myapp/code/codeGroupList?thisPage=${vo.endPage + 1}">Next</a></li>
		</c:if>
	</ul>
</nav>

<nav aria-label="...">
  <ul class="pagination">
    <li class="page-item disabled">
      <a class="page-link">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item active" aria-current="page">
      <a class="page-link" href="#">2</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>