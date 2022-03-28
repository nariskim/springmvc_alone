<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<form method = "post" action ="/myapp/code/codeInst">
	<input type="text" name ="oycdName" placeholder ="이름">
	<input type="submit" value="제출">

</form>

<div class="col-sm-6 mt-3 mt-sm-0">
	<laber for="ifmmEmailConsentNy" class="form-label">이메일 정보 마케팅
	사용 동의</laber>
	<div class="form-check">
		<input type="checkbox" id="ifmmEmailConsentNy"
			name="ifmmEmailConsentNy" value="" class="form-check-input">
		<laber for="ifmmEmailConsentNy" class="form-check-label">동의합니다</laber>
	</div>
</div>

validationInst = function() {
if(validationUpdt() == false) return false;

alert($("#ifmmEmailConsentNy").val());
}