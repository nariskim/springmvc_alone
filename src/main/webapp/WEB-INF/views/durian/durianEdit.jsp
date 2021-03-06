<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<jsp:useBean id="DurianServiceImpl" class="com.mycompany.myapp.modules.durian.DurianServiceImpl"/>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Edit.AllLiveYoung</title>


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">


<script src="https://kit.fontawesome.com/893e1f7eb8.js" crossorigin="anonymous"></script>

<style type="text/css">

main {
	margin-top: 5%;
	margin-bottom: 15%;
	margin-left: 15%;
	margin-right: 15%;
}

.bottom-border {
	border-bottom: 2px groove black;
}

.sidebar-link {
	transition: all .4s;
}

.sidebar-link:hover {
	background-color: silver;
	border-radius: 5px;
}

.current {
	background-color: Greenyellow;
	border-radius: 7px;
	box-shadow: 2px 5px 10px gray;
}

.current:hover {
	background-color: Greenyellow;
	border-radius: 7px;
	box-shadow: 2px 5px 10px gray;
	transform: translateY(-1px);
}

.search-input {
	background: transparent;
	border: none;
	border-radius: 0;
	border-bottom: 2px solid black;
	transition: all .4s;
}

.search-input:focus {
	background: transparent;
	box-shadow: none;
	border-bottom: 2px solid GreenYellow;
}

.search-button {
	border-radius: 50%;
	padding: 10px 16px;
	transition: all .4s;
}

.search-button:hover {
	background-color: GreenYellow;
	transform: translateY(-1px);
}

.icon-parent {
	position: relative;
}

.icon-bullet:after {
	content: "";
	position: absolute;
	top: 7px;
	left: 15px;
	height: 12px;
	width: 12px;
	background-color: GreenYellow;
	border-radius: 50%;
}

.table-wrapper {
	overflow: auto;
}

.container {
	justify-content: center; /* ?????? ?????? */
	align-items: center; /* ?????? ?????? */
	width: auto;
	height: auto;
	color: black;
}

</style>
</head>
<body>
	<form id="formUpdt" name="formUpdt" method="post" action="/myapp/durian/durianUpdt">

	<input type="hidden" id="scOymbDelNy" name="scOymbDelNy" value="<c:out value="${vo.scOymbDelNy}"/>">
	<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
	<input type="hidden" id="scOption" name="scOption" value="<c:out value="${vo.scOption}"/>">
	<input type="hidden" id="scValue" name="scValue" value="<c:out value="${vo.scValue}"/>">
	<input type="hidden" id="oymbSeq" name="oymbSeq" value="<c:out value="${vo.oymbSeq}"/>">
	<input type="hidden" id="scOptionDate" name="scOptionDate" value="<c:out value="${vo.scOptionDate}"/>">
	<input type="hidden" id="scDateStart" name="scDateStart" value="<c:out value="${vo.scDateStart}"/>">
	<input type="hidden" id="scDateEnd" name="scDateEnd" value="<c:out value="${vo.scDateEnd}"/>">

		<div class="row">
			<header class="navbar navbar-dark sticky-top bg-light ml-auto">

				<div class="col-auto col-sm-5">
					<h1>&nbsp&nbsp&nbspALL LIVE YOUNG</h1>
				</div>
				
				<div class="col-auto d-md-none">

					<div class="container-fluid">
						<button
							class="navbar-toggler position-relative d-md-none collapsed"
							type="button" data-bs-toggle="collapse"
							data-bs-target="#sidebarMenu" aria-controls="sidebarMenu"
							aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

					</div>


				</div>
				<div class="col-10 col-sm-3">

					
				</div>
				<div class="col-2 col-sm-3">
					

				</div>

				<div class="col-auto col-sm-1">

					
						<a href="#" class="nav-link"><i
								class="fas fa-sign-out-alt text-danger fa-lg"></i></a>
					
				</div>


			</header>
		</div>




			<div class="container-fluid">
		
<main>

<br>
	<div class="container">
		<nav aria-label="breadcrumb">
			<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">?????? ??????</a></li>
						<li class="breadcrumb-item"><a href="#">?????? ?????????</a></li>
						<li class="breadcrumb-item"><a href="#">?????? ?????? ??????</a></li>
						<li class="breadcrumb-item active" aria-current="page">?????? ?????? ??????</li>
					</ol>
				</nav>
		</nav><br><br><br><br><br>
<a href="javascript:goSubmit();">
					<button type="button" id="" class="btn btn-outline-success btn-lg"><i class="fa-solid fa-circle-check"></i></button></a>
<a href="javascript:goView();">
					<button type="button" id="" class="btn btn-outline-primary btn-lg"><i class="fa-solid fa-user"></i></button></a>
					<br><hr><br>
		<div class="row">

			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">?????? (??????)</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="text" class="form-control" id="oymbName" name="oymbName" value="<c:out value="${item.oymbName}"/>">
			</div>
			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">?????? (??????)</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="text" class="form-control" id="oymbNameEng" name="oymbNameEng" value="<c:out value="${item.oymbNameEng}"/>">
					<div id="NameEngHelpBlock" class="form-text">??????:????????? 'nr'</div>
			</div>
		
		</div>

		<div class="row">

			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">?????????</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="text" class="form-control" id="oymbId" name="oymbId" value="<c:out value="${item.oymbId}"/>">
			</div>
			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">?????????</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="text" class="form-control" id="oymbNickName" name="oymbNickName" value="<c:out value="${item.oymbNickName}"/>">
			</div>

		</div>

		<div class="row">

			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">????????????</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="password" id="oymbPassword" name="oymbPassword" class="form-control" aria-describedby="passwordHelpBlock" value="<c:out value="${item.oymbPassword}"/>">
					<div id="passwordHelpBlock" class="form-text">8-20????????? ?????? ????????????, ??????, ??????????????? ???????????? ??????</div>
			</div>
			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">???????????? ??????</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="password" id="" name="" class="form-control" aria-describedby="passwordHelpBlock">
					<div id="passwordHelpBlock" class="form-text"></div>
			</div>

		</div>

		<div class="row">

			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">????????????</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="text" class="form-control" id="" name="" value="">
			</div>
			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">??????</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<select class="form-select" id="oymbGenderCd" name="oymbGenderCd">
				<option value="" selected>::??????::</option>
					<c:forEach items="${codeGender}" var="itemGender" varStatus="statusGender">
			<option value="<c:out value="${itemGender.oycdSeq}"/>"<c:if test="${item.oymbGenderCd eq itemGender.oycdSeq }">selected</c:if>><c:out value="${itemGender.oycdName}"/></option>	
							</c:forEach>
			</select>
			</div>

		</div>


		<div class="row">

			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">???????????? ??????</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<div class="mb-3">
					<select class="form-select" id="oyjqQuestionCd" name="oyjqQuestionCd">
				<option value="" selected>::??????::</option>
					<c:forEach items="${codeJoinQna}" var="itemJoinQna" varStatus="statusJoinQna">
			<option value="<c:out value="${itemJoinQna.oycdSeq}"/>"<c:if test="${item.oyjqQuestionCd eq itemJoinQna.oycdSeq }">selected</c:if>><c:out value="${itemJoinQna.oycdName}"/></option>	
							</c:forEach>
			</select>
				</div>
			</div>
			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">???????????? ??????</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="text" class="form-control" id="oyjqAnswer" name="oyjqAnswer" value="<c:out value="${item.oyjqAnswer}"/>">
			</div>

		</div>
		
		<div class="row">

		<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">??????</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
		<div class=input-group>
			<input type="text" class="form-control" id="oymaZipCode" name="oymaZipCode" placeholder="????????????" value="<c:out value="${item.oymaZipCode}"/>">
			<input type="button" class="btn btn-outline-dark" onclick="sample6_execDaumPostcode()" value="???????????? ??????"></div>
			<input type="text" class="form-control" id="oymaAddress1" name="oymaAddress1" placeholder="??????" value="<c:out value="${item.oymaAddress1}"/>">
			<input type="text" class="form-control" id="oymaAddress2" name="oymaAddress2" placeholder="????????????" value="<c:out value="${item.oymaAddress2}"/>">
			<input type="text" class="form-control" id="oymaAddress3" name="oymaAddress3" placeholder="????????????" value="<c:out value="${item.oymaAddress3}"/>">
		
		</div>

			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">??????</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<select class="form-select" id="oynaSeq" name="oynaSeq">
					<option value=" " >??????????????????</option>
					<option value="1" <c:if test="${item.oynaSeq eq 1 }">selected</c:if>>??????</option>
					<option value="2" <c:if test="${item.oynaSeq eq 2 }">selected</c:if>>??????</option>
					<option value="5" <c:if test="${item.oynaSeq eq 5 }">selected</c:if>>?????????</option>
					<option value="3" <c:if test="${item.oynaSeq eq 3 }">selected</c:if>>??????</option>
					<option value="4" <c:if test="${item.oynaSeq eq 4 }">selected</c:if>>??????</option>
					<option value="6" <c:if test="${item.oynaSeq eq 6 }">selected</c:if>>?????????</option>
					<option value="7" <c:if test="${item.oynaSeq eq 7 }">selected</c:if>>??????</option>
					<option value="8" <c:if test="${item.oynaSeq eq 8 }">selected</c:if>>??????</option>
				</select> <input type="text" class="form-control" id="" name="" placeholder="??? ??? ?????? ?????? ??????">
			</div>

	</div>
	
<c:forEach items="${listPhone}" var="item"
varStatus="statusTelecom">
<c:choose>
<c:when test="${item.oympDefaultNy eq 1}">
<c:set var="oympNumber1" value="${item.oympNumber}" />
<c:set var="oympTelecom1" value="${item.oympTelecomCd}" />
</c:when>
<c:when test="${item.oympDefaultNy eq 0}">
<c:set var="oympNumber0" value="${item.oympNumber}" />
<c:set var="oympTelecom0" value="${item.oympTelecomCd}" />
</c:when>
<c:otherwise></c:otherwise>
</c:choose>
</c:forEach>

</div>
<div class="row">
	<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
	<label for="formFile" class="form-label">?????????(??????)</label>
</div>

<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
<div class="input-group">
	<input type="hidden" id="oympDefaultNyArray0" name="oympDefaultNyArray" value="1">
	<select class="form-select" id="oympTelecomCdArray0" name="oympTelecomCdArray">
		<option selected>::?????????::</option>
		<c:forEach items="${codeTelecom}" var="itemTelecom" varStatus="statusTelecom">
<option value="<c:out value="${itemTelecom.oycdSeq}"/>"
<c:if test="${oympTelecom1 eq itemTelecom.oycdSeq }">selected</c:if>>
<c:out value="${itemTelecom.oycdName}" /></option>
</c:forEach></select>
<input type="text" class="form-control" id="oympNumberArray0" name="oympNumberArray" value="<c:out value="${oympNumber1}"/>" placeholder="'-'??????">
	</div>
</div>

<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
	<label for="formFile" class="form-label">?????????(??????)</label>
</div>
<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
<div class="input-group">
	<input type="hidden" id="oympDefaultNyArray1" name="oympDefaultNyArray" value="0">
	<select class="form-select" id="oympTelecomCdArray1" name="oympTelecomCdArray">
		<option selected>::?????????::</option>
		<c:forEach items="${codeTelecom}" var="itemTelecom" varStatus="statusTelecom">
<option value="<c:out value="${itemTelecom.oycdSeq}"/>"
<c:if test="${oympTelecom0 eq itemTelecom.oycdSeq }">selected</c:if>>
<c:out value="${itemTelecom.oycdName}" /></option>
</c:forEach></select>
<input type="text" class="form-control" id="oympNumberArray1" name="oympNumberArray" value="<c:out value="${oympNumber0}"/>" placeholder="'-'??????">
		</div>
	</div>
</div>


<c:forEach items="${listEmail}" var="item" varStatus="statusEmail">
<c:choose>
<c:when test="${item.oymeDefaultNy eq 1}">
<c:set var="oymeAccount1" value="${item.oymeEmailAccount}" />
<c:set var="oymeDomain1" value="${item.oymeEmailDomainCd}" />
</c:when>
<c:when test="${item.oymeDefaultNy eq 0}">
<c:set var="oymeAccount0" value="${item.oymeEmailAccount}" />
<c:set var="oymeDomain0" value="${item.oymeEmailDomainCd}" />
</c:when>
<c:otherwise></c:otherwise>
</c:choose>
</c:forEach>

<div class="row">

	<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
	<label for="formFile" class="form-label">????????? (??????)</label>
</div>
<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
<div class="input-group">
	<input type="hidden" id="oymeDefaultNyArray0" name="oymeDefaultNyArray" value="1">
	<input type="text" class="form-control" id="oymeEmailAccountArray0" name="oymeEmailAccountArray"  value="<c:out value="${oymeAccount1}"/>">
<span class="input-group-text">@</span>
<select class="form-select" id="oymeEmailDomainCdArray0" name="oymeEmailDomainCdArray">
	<option value="" selected>::??????::
		<c:forEach items="${codeEmail}" var="itemEmail" varStatus="statusEmail">
<option value="<c:out value="${itemEmail.oycdSeq}"/>"
<c:if test="${oymeDomain1 eq itemEmail.oycdSeq}">selected</c:if>>
<c:out value="${itemEmail.oycdName}" /></option>
</c:forEach></select>
	</div>
</div>

<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
	<label for="formFile" class="form-label">????????? (??????)</label>
</div>
<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
<div class="input-group">
	<input type="hidden" id="oymeDefaultNyArray1" name="oymeDefaultNyArray" value="0">
	<input type="text" class="form-control" id="oymeEmailAccountArray1" name="oymeEmailAccountArray"  value="<c:out value="${oymeAccount0}"/>">
<span class="input-group-text">@</span>
<select class="form-select" id="oymeEmailDomainCdArray1" name="oymeEmailDomainCdArray">
	<option value="" selected>::??????::
		<c:forEach items="${codeEmail}" var="itemEmail" varStatus="statusEmail">
<option value="<c:out value="${itemEmail.oycdSeq}"/>"
<c:if test="${oymeDomain0 eq itemEmail.oycdSeq}">selected</c:if>>
<c:out value="${itemEmail.oycdName}" /></option>
</c:forEach></select>
		</div>
	</div>

</div>
		
							<br>
							<hr>
							<br>
<div class="row">
								<div class="col-12 col-sm-4 col-lg-2"
									style="margin-top: 20px; margin-bottom: 20px;">
									<label for="formFile" class="form-label">????????????</label>
								</div>
								<div class="col-12 col-sm-8 col-lg-4"
									style="margin-top: 20px; margin-bottom: 20px;">
									<input type="radio" class="btn-check" id="" name=""
										autocomplete="off" value="141"> <label
										class="btn btn-outline-dark" for="??????">?????????</label> <input
										type="radio" class="btn-check" id="" name=""
										autocomplete="off" value="142"> <label
										class="btn btn-outline-dark" for="??????">??????</label> <input
										type="radio" class="btn-check" id="" name=""
										autocomplete="off" value="143"> <label
										class="btn btn-outline-dark" for="??????">??????</label> <input
										type="radio" class="btn-check" id="" name=""
										autocomplete="off" value="144"> <label
										class="btn btn-outline-dark" for="??????">??????</label> <input
										type="radio" class="btn-check" id="" name=""
										autocomplete="off" value="145"> <label
										class="btn btn-outline-dark" for="?????????">?????????</label>
								</div>
								<div class="col-12 col-sm-4 col-lg-2"
									style="margin-top: 20px; margin-bottom: 20px;">
									<label for="formFile" class="form-label">???????????????</label>
								</div>
								<div class="col-12 col-sm-8 col-lg-4"
									style="margin-top: 20px; margin-bottom: 20px;">
									<input type="radio" class="btn-check" id="" name=""
										autocomplete="off" value="146"> <label
										class="btn btn-outline-dark" for="spring">??? ???</label> <input
										type="radio" class="btn-check" id="" name=""
										autocomplete="off" value="147"> <label
										class="btn btn-outline-dark" for="summer">?????? ???</label> <input
										type="radio" class="btn-check" id="" name=""
										autocomplete="off" value="148"> <label
										class="btn btn-outline-dark" for="fall">?????? ???</label> <input
										type="radio" class="btn-check" id="" name=""
										autocomplete="off" value="149"> <label
										class="btn btn-outline-dark" for="winter">?????? ???</label>
								</div>
							</div>

							<div class="row">
								<div class="col-12 col-sm-4 col-lg-2"
									style="margin-top: 20px; margin-bottom: 20px;">
									<label for="formFile" class="form-label">?????? ??????</label>
								</div>
								<div class="col-12 col-sm-8 col-lg-4"
									style="margin-top: 20px; margin-bottom: 20px;">
									<input type="checkbox" class="btn-check" id="" name=""
										autocomplete="off" value="150"> <label
										class="btn btn-outline-dark" for="skinCare">?????? ??????</label> <input
										type="checkbox" class="btn-check" id="" name=""
										autocomplete="off" value="151"> <label
										class="btn btn-outline-dark" for="makeUp">????????????</label> <input
										type="checkbox" class="btn-check" id="" name=""
										autocomplete="off" value="152"> <label
										class="btn btn-outline-dark" for="hairCare">?????? ??????</label> <input
										type="checkbox" class="btn-check" id="" name=""
										autocomplete="off" value="153"> <label
										class="btn btn-outline-dark" for="bodyCare">?????? ??????</label> <input
										type="checkbox" class="btn-check" id="" name=""
										autocomplete="off" value="154"> <label
										class="btn btn-outline-dark" for="innerCare">?????? ??????</label>
								</div>
							</div>
							<br>
							<hr>
							<br>
							<div class="row">

								<div class="col-12 col-sm-4 col-lg-2"
									style="margin-top: 20px; margin-bottom: 20px;">
									<label for="formFile" class="form-label">????????? ????????????</label>
								</div>

								<div class="col-12 col-sm-8 col-lg-4"
									style="margin-top: 20px; margin-bottom: 20px;">
									<div class="input-group">
										<input type="radio" class="btn-check" id="" name=""
											autocomplete="off" value="1"> <label
											class="btn btn-outline-dark">??????</label> <input type="radio"
											class="btn-check" id="" name="" autocomplete="off" value="0">
										<label class="btn btn-outline-dark">?????????</label>
									</div>
								</div>

								<div class="col-12 col-sm-4 col-lg-2"
									style="margin-top: 20px; margin-bottom: 20px;">
									<label for="formFile" class="form-label">????????? ????????????</label>
								</div>

								<div class="col-12 col-sm-8 col-lg-4"
									style="margin-top: 20px; margin-bottom: 20px;">
									<div class="input-group">
										<input type="radio" class="btn-check" id="" name=""
											autocomplete="off" value="1"> <label
											class="btn btn-outline-dark">??????</label> <input type="radio"
											class="btn-check" id="" name="" autocomplete="off" value="0">
										<label class="btn btn-outline-dark">?????????</label>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-12 col-sm-4 col-lg-2"
									style="margin-top: 20px; margin-bottom: 20px;">
									<label for="formFile" class="form-label">PUSH ????????????</label>
								</div>
								<div class="col-12 col-sm-8 col-lg-4"
									style="margin-top: 20px; margin-bottom: 20px;">
									<div class="input-group">
										<input type="radio" class="btn-check" id="" name=""
											autocomplete="off" value="1"> <label
											class="btn btn-outline-dark">??????</label> <input type="radio"
											class="btn-check" id="" name="" autocomplete="off" value="0">
										<label class="btn btn-outline-dark">?????????</label>
									</div>
								</div>
								<div class="col-12 col-sm-4 col-lg-2"
									style="margin-top: 20px; margin-bottom: 20px;">
									<label for="formFile" class="form-label">???????????? ????????????</label>
								</div>
								<div class="col-12 col-sm-8 col-lg-4"
									style="margin-top: 20px; margin-bottom: 20px;">
									<input type="radio" class="btn-check" id="" name=""
										autocomplete="off" value="6"> <label
										class="btn btn-outline-dark" for="1???">1???</label> <input
										type="radio" class="btn-check" id="" name=""
										autocomplete="off" value="8"> <label
										class="btn btn-outline-dark" for="5???">5???</label> <input
										type="radio" class="btn-check" id="" name=""
										autocomplete="off" value="9"> <label
										class="btn btn-outline-dark" for="10???">10???</label> <input
										type="radio" class="btn-check" id="" name=""
										autocomplete="off" value="10"> <label
										class="btn btn-outline-dark" for="????????????">????????????</label>
								</div>
							</div>
							</main></div>
						

		<div class="container">
			<footer class="py-3 my-4">
				<ul class="nav justify-content-center border-bottom pb-3 mb-3">
					<li class="nav-item"><a href="#"
						class="nav-link px-2 text-muted">Home</a></li>
					<li class="nav-item"><a href="#"
						class="nav-link px-2 text-muted">Features</a></li>
					<li class="nav-item"><a href="#"
						class="nav-link px-2 text-muted">Pricing</a></li>
					<li class="nav-item"><a href="#"
						class="nav-link px-2 text-muted">FAQs</a></li>
					<li class="nav-item"><a href="#"
						class="nav-link px-2 text-muted">About</a></li>
				</ul>
				<p class="text-center text-muted">?? 2021 All Live Young, Inc</p>
			</footer>
		</div>

	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript">

function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

            // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
            // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
            var addr = ''; // ?????? ??????
            var extraAddr = ''; // ???????????? ??????

            //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
            if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
                addr = data.roadAddress;
            } else { // ???????????? ?????? ????????? ???????????? ??????(J)
                addr = data.jibunAddress;
            }

            // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
            if(data.userSelectedType === 'R'){
                // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
                // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
                if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // ???????????? ??????, ??????????????? ?????? ????????????.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // ????????? ??????????????? ?????? ????????? ?????????.
                document.getElementById("oymaAddress3").value = extraAddr;
            
            } else {
                document.getElementById("oymaAddress3").value = '';
            }

            // ??????????????? ?????? ????????? ?????? ????????? ?????????.
            document.getElementById("oymaZipCode").value = data.zonecode;
            document.getElementById("oymaAddress1").value = addr;
            // ????????? ???????????? ????????? ????????????.
            document.getElementById("oymaAddress2").focus();
        }
    }).open();
}

goView = function() {
	$("#formUpdt").attr("action", "/myapp/durian/durianView");
	$("#formUpdt").submit();
}

goSubmit = function() {
	$("#formUpdt").attr("action", "/myapp/durian/durianUpdt");
	$("#formUpdt").submit();
}

</script>


</body>
</html>