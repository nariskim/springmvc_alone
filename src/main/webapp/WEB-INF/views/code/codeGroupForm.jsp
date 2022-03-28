<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<!-- jquery ui CSS -->
<link href="/myapp/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">

<form id="formForm" name="formForm" method="post" action="/myapp/code/codeGroupInst">
<input type="hidden" id="scOycgDelNy" name="scOycgDelNy" value="${vo.scOycgDelNy}">
<input type="hidden" id="scOycgName" name="scOycgName" value="${vo.scOycgName}">
<input type="hidden" id="scOption" name="scOption" value="${vo.scOption}">
<input type="hidden" id="scValue" name="scValue" value="${vo.scValue}">
<input type="hidden" id="thisPage" name="thisPage" value="${vo.thisPage}">

	
<!-- 	<input type="text" id="abcDate" name="abcDate"> -->
	
	<input type="text" id="oycgName" name="oycgName" placeholder="이름"> <a href="javascript:goInst();">
					<button type="button" id="" class="btn btn-success">등록</button></a>

</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/myapp/resources/js/validation.js"></script>
<!-- jquery ui -->
<script src="/myapp/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>






<script type="text/javascript">

goInst = function() {
	$("#formForm").attr("action", "/myapp/code/codeGroupInst");
	$("#formForm").submit();
}
	$(document).ready(function(){
		 $("#abcDate").datepicker();
	}); 

	$.datepicker.setDefaults({
	    dateFormat: 'yy-mm-dd',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    showMonthAfterYear: true,
	    yearSuffix: '년'
	});

$("#btnSubmit").on("click", function(){


if(!checkNull($("#oycgName"), $("#oycgName").val(), "코드 그룹 이름을 입력해 주세요."))return false;
});

/* id
1. null check
2. 정규식 check */



</script>