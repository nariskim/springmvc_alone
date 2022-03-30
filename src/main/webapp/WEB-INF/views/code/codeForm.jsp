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



<c:forEach items="${listPhone}" var="item" varStatus="statusTelecom">
<c:choose>
<c:when test="${item.kbmpDeviceCd eq 57(수빈님cdseq)}"><c:set var="kbmpNumber57(이 숫자 앞에거랑 맟추면 편해용)" value="${item.kbmpNumber}"/></c:when>
<c:when test="${item.kbmpDeviceCd eq 58(수빈님cdseq)}"><c:set var="kbmpNumber58(이 숫자 앞에거랑 맟추면 편해용)" value="${item.kbmpNumber}"/>
<c:set var="kbmpNumber58" value="${item.kbmpNumber}"/>
<c:set var="kbmpTelecom58" value="${item.kbmpTelecomCd}"/>
</c:when>
<c:when test="${item.kbmpDeviceCd eq 59(수빈님cdseq)}"><c:set var="kbmpNumber59(이 숫자 앞에거랑 맟추면 편해용)" value="${item.kbmpNumber}"/>
<c:set var="kbmpNumber59" value="${item.kbmpNumber}"/>
</c:when>
<c:otherwise></c:otherwise>
</c:choose>
</c:forEach>



				<c:forEach items="${listPhone}" var="item" varStatus="statusTelecom">
					<c:choose>
						<c:when test="${item.kbmpDeviceCd eq 1}"> <c:set var="kbmmNumberHome" value="${item.kbmpNumberFull }"/></c:when>
						<c:when test="${item.kbmpDeviceCd eq 2}">
							<c:set var="kbmmNumberMobile" value="${item.kbmpNumberFull}"/>
							<c:set var="kbmmNumberTelecom" value="${item.kbmpTelecomCd}"/>
						</c:when>
						<c:when test="${item.kbmpDeviceCd eq 3 }"><c:set var="kbmmNumberFax" value="${item.kbmpNumberFull}"/></c:when>
						<c:otherwise></c:otherwise>
					</c:choose>
				</c:forEach>	
				<div class="col-md-6">
					<label class="form-label">핸드폰번호</label>
					<input type="hidden" id="kbmpDefaultNyArray0" name="kbmpDefaultNyArray" value="1">
					<input type="hidden" id="kbmpDeviceCdArray0" name="kbmpDeviceCdArray" value="2">
					<select class="form-select form-select-sm mb-1" id="kbmpTelecomCdArray0" name="kbmpTelecomCdArray">
						<option selected>::통신사::</option>
							<c:forEach items="${CodeTelecom}" var="itemTelecom" varStatus="statusTelecom">
						<option value="<c:out value="${itemTelecom.ifcdOrder}"/>" <c:if test="${kbmmNumberTelecom eq itemTelecom.ifcdOrder }">selected</c:if> ><c:out value="${itemTelecom.ifcdName}"/></option>	
							</c:forEach>	
					</select>
					<input type="text" class="form-control form-control-sm" id="kbmpNumberFullArray0" name="kbmpNumberFullArray"  value="<c:out value="${kbmmNumberMobile}"/>"  placeholder="숫자만 입력(예.01012341231)">
				</div>	
 				<div class="col-md-6">
					<label class="form-label">전화번호(선택)</label>s
					<input type="hidden" id="kbmpDefaultNyArray1" name="kbmpDefaultNyArray" value="0">
					<input type="hidden" id="kbmpDeviceCd1Array" name="kbmpDeviceCdArray" value="1">
					<input type="text" class="form-control form-control-sm" id="kbmpNumberFullArray1" name="kbmpNumberFullArray" value="<c:out value="${kbmmNumberHome}"/>" >
				</div>
				<div class="col-md-6">
					<label class="form-label">팩스번호</label>
					<input type="hidden" id="kbmpDefaultNyArray2" name="kbmpDefaultNyArray" value="0">
					<input type="hidden" id="kbmpDeviceCdArray2" name="kbmpDeviceCdArray" value="3">
					<input type="text" class="form-control form-control-sm" id="kbmpNumberFullArray2" name="kbmpNumberFullArray" value="<c:out value="${kbmmNumberFax}"/>"  >
				</div> 