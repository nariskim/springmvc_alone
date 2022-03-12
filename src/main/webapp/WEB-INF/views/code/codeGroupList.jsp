<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<a href="/myapp/code/codeGroupForm?oycgSeq=<c:out value="${item.oycgSeq}"/>">등록</a>

<br>

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
					value="${item.oycgName}" /></a>
			<br>

		</c:forEach>
	</c:otherwise>
</c:choose>
