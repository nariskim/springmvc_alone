<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<form method="post" action="/myapp/code/codeGroupInst">
	<input type="text" id="oycgName" name="oycgName" placeholder="이름"> <input
		type="submit" id="btnSubmit" value="제출">

</form>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script src="/myapp/resources/js/validation.js"></script>

<script type="text/javascript">

$("#btnSubmit").on("click", function(){


if(!checkNull($("#oycgName"), $("#oycgName").val(), "코드 그룹 이름을 입력해 주세요."))return false;
});

/* id
1. null check
2. 정규식 check */



</script>