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
