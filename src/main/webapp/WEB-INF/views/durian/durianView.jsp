<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>




<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>List.Durian</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


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
	justify-content: center; /* 수평 정렬 */
	align-items: center; /* 수직 정렬 */
	width: auto;
	height: auto;
	color: black;
	margin: 20px;

}



</style>
</head>
<body>
<form id="formView" name="formView" method="post" action="/myapp/durian/durianView">
	<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
	<input type="hidden" id="scOymbDelNy" name="scOymbDelNy" value="<c:out value="${vo.scOymbDelNy}"/>">
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
					<button class="navbar-toggler position-relative d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
					</button>
				</div>
			</div>
			
			<div class="col-10 col-sm-3">
				<input type="text" class="form-control me-2 search-input" placeholder="Search...">
			</div>
			
			<div class="col-2 col-sm-1">
				<button type="button" class="btn btn-secondary search-button">
					<i class="fas fa-search text-light"></i>
				</button>
			</div>

			<div class="col-auto col-sm-3">
				<ul class="nav">
					<li class="nav-item icon-parent">
						<a href="#" class="nav-link icon-bullet"><i class="fas fa-comments text-muted fa-lg"></i></a>
					</li>

					<li class="nav-item icon-parent">
						<a href="#" class="nav-link icon-bullet"><i class="fas fa-bell text-muted fa-lg"></i></a>
					</li>

					<li class="nav-item ml-auto"><a href="#" class="nav-link">
						<i class="fas fa-sign-out-alt text-danger fa-lg"></i></a>
					</li>
				</ul>
			</div>

		</header>
	</div>


	<div class="container-fluid">
		<main>
		<div class="row">
		<br>
			<div class="container">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">회원 관리</a></li>
						<li class="breadcrumb-item"><a href="#">회원 리스트</a></li>
						<li class="breadcrumb-item active" aria-current="page">회원 조회</li>
					</ol>
				</nav>
				
				</div>
				<br><hr><br>
				<a href="javascript:goList();">
				<button type="button" id="" class="btn btn-primary">목록</button></a> 
				<a href="javascript:goEdit();">
				<button type="button" id="" class="btn btn-success">수정</button></a>
				<a href="javascript:goDel();">
				<button type="button" id="" class="btn btn-danger">삭제(영구)</button></a>
				<a href="javascript:goHide();">
				<button type="button" id="" class="btn btn-danger">삭제(임시)</button></a>
				
				
				<br>
		<div class="row">

			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">이름 (한글)</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="text" class="form-control" id="oymbName" name="oymbName" value="<c:out value="${item.oymbName}"/>">
			</div>
			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">이름 (영문)</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="text" class="form-control" id="oymbNameEng" name="oymbNameEng" value="<c:out value="${item.oymbNameEng}"/>">
					<div id="NameEngHelpBlock" class="form-text">예시:김나리 'nr'</div>
			</div>
		
		</div>

		<div class="row">

			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">아이디</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="text" class="form-control" id="oymbId" name="oymbId" value="<c:out value="${item.oymbId}"/>">
			</div>
			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">닉네임</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="text" class="form-control" id="oymbNickName" name="oymbNickName" value="<c:out value="${item.oymbNickName}"/>">
			</div>

		</div>

		<div class="row">

			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">비밀번호</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="password" id="oymbPassword" name="oymbPassword" class="form-control" aria-describedby="passwordHelpBlock" value="<c:out value="${item.oymbPassword}"/>">
					<div id="passwordHelpBlock" class="form-text">8-20자리의 영문 대소문자, 숫자, 특수문자를 조합하여 설정</div>
			</div>
			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">비밀번호 확인</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="password" id="oymbPwdConfirm" class="form-control" aria-describedby="passwordHelpBlock" value="<c:out value="${item.oymbPassword}"/>">
					<div id="passwordHelpBlock" class="form-text"></div>
			</div>

		</div>

		<div class="row">

			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">생년월일</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="text" id="oymbDob" name="oymbDob" value="<c:out value="${item.oymbDob}"/>">
			</div>
			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">성별</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<select class="form-select" id="oymbGenderCd" name="oymbGenderCd">
				<option value=" " selected>::성별::</option>
					<c:forEach items="${codeGender}" var="itemGender" varStatus="statusGender">
			<option value="<c:out value="${itemGender.oycdSeq}"/>"<c:if test="${item.oymbGenderCd eq itemGender.oycdSeq }">selected</c:if>><c:out value="${itemGender.oycdName}"/></option>	
							</c:forEach>
			</select>
			</div>

		</div>

		<div class="row">

			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">비밀번호 질문</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<div class="mb-3">
					<select class="form-select">
						<option value=" " selected>::선택::</option>
						<option>question 1</option>
						<option>question 2</option>
						<option>question 3</option>
						<option>question 4</option>
						<option>question 5</option>
					</select>
				</div>
			</div>
			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">비밀번호 답변</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="text" class="form-control" id="" placeholder="비밀번호 힌트 답">
			</div>

		</div>
		
		<div class="row">

			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">주소</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<div class=input-group>
			<input type="text" class="form-control" id="oymaZipCode" value="<c:out value="${item.oymaZipCode}"/>">
			<input type="button" class="btn btn-outline-dark" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" class="form-control" id="oymaAddress1" value="<c:out value="${item.oymaAddress1}"/>"><br>
			<input type="text" class="form-control" id="oymaAddress2" value="<c:out value="${item.oymaAddress2}"/>">
			<input type="text" class="form-control" id="oymaAddress3" value="<c:out value="${item.oymaAddress3}"/>">
		</div>
			</div>

			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">국적</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<select class="form-select" id="oynaSeq" name="oynaSeq">
					<option value=" " >선택해주세요</option>
					<option value="1" <c:if test="${item.oynaSeq eq 1 }">selected</c:if>>한국</option>
					<option value="2" <c:if test="${item.oynaSeq eq 2 }">selected</c:if>>미국</option>
					<option value="5" <c:if test="${item.oynaSeq eq 5 }">selected</c:if>>프랑스</option>
					<option value="3" <c:if test="${item.oynaSeq eq 3 }">selected</c:if>>영국</option>
					<option value="4" <c:if test="${item.oynaSeq eq 4 }">selected</c:if>>독일</option>
					<option value="6" <c:if test="${item.oynaSeq eq 6 }">selected</c:if>>폴란드</option>
					<option value="7" <c:if test="${item.oynaSeq eq 7 }">selected</c:if>>호주</option>
					<option value="8" <c:if test="${item.oynaSeq eq 8 }">selected</c:if>>중국</option>
				</select> <input type="text" class="form-control" id="" placeholder="그 외 국가 직접 입력">
			</div>

	</div>

		
						<c:forEach items="${listPhone}" var="item" varStatus="statusTelecom">
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


						<div class="row">

							<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
								<label for="formFile" class="form-label">연락처 (필수)</label>
							</div>
							<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
								<div class="input-group">
									<select class="form-select form-select-sm mb-1"
										id="oympTelecomCd" name="oympTelecomCd">
										<option value="" selected>::통신사::</option>
										<c:forEach items="${codeTelecom}" var="itemTelecom"
											varStatus="statusTelecom">
											<option value="<c:out value="${itemTelecom.oycdSeq}"/>"
												<c:if test="${oympTelecom1 eq itemTelecom.oycdSeq}">selected</c:if>><c:out
													value="${itemTelecom.oycdName}" /></option>
										</c:forEach>
									</select> <input type="text" class="form-control" id="oympNumber" name="oympNumber" value="<c:out value="${oympNumber1}"/>">
								</div>
							</div>

							<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
								<label for="formFile" class="form-label">연락처 (선택)</label>
							</div>
							<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
								<div class="input-group">
									<select class="form-select form-select-sm mb-1"
										id="oympTelecomCd" name="oympTelecomCd">
										<option value="" selected>::통신사::</option>
										<c:forEach items="${codeTelecom}" var="itemTelecom"
											varStatus="statusTelecom">
											<option value="<c:out value="${itemTelecom.oycdSeq}"/>"
												<c:if test="${oympTelecom0 eq itemTelecom.oycdSeq}">selected</c:if>><c:out
													value="${itemTelecom.oycdName}" /></option>
										</c:forEach>
									</select> <input type="text" class="form-control" id="oympNumber"
										name="oympNumber" value="<c:out value="${oympNumber0}"/>">

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
				<label for="formFile" class="form-label">이메일 (필수)</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<div class="input-group">
					<input type="text" class="form-control" id="oymeEmailAccount" name="oymeEmailAccount" value="<c:out value="${oymeAccount1}"/>">
					<span class="input-group-text">@</span>
					<select class="form-select" id="oymeEmailDomainCd" name="oymeEmailDomainCd">
						<option value="" selected>::선택::
						<c:forEach items="${codeEmail}" var="itemEmail"
											varStatus="statusEmail">
											<option value="<c:out value="${itemEmail.oycdSeq}"/>"
												<c:if test="${oymeDomain1 eq itemEmail.oycdSeq}">selected</c:if>><c:out
													value="${itemEmail.oycdName}" /></option>
										</c:forEach>
					</select>
				</div>
			</div>

			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">이메일 (선택)</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<div class="input-group">
					<input type="text" class="form-control" id="oymeEmailAccount" name="oymeEmailAccount" value="<c:out value="${oymeAccount0}"/>">
					<span class="input-group-text">@</span>
					<select class="form-select" id="oymeEmailDomainCd" name="oymeEmailDomainCd">
						<option value="" selected>::선택::
						<c:forEach items="${codeEmail}" var="itemEmail"
											varStatus="statusEmail">
											<option value="<c:out value="${itemEmail.oycdSeq}"/>"
												<c:if test="${oymeDomain0 eq itemEmail.oycdSeq}">selected</c:if>><c:out
													value="${itemEmail.oycdName}" /></option>
										</c:forEach>
					</select>
				</div>
			</div>
			
		</div>
		
		<br><hr><br>

		<div class="row">

			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">피부타입</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="radio" class="btn-check" id="oymbSkinType" name="oymbSkinType" autocomplete="off">
					<label class="btn btn-outline-dark" for="민감">민감성</label>
				<input type="radio" class="btn-check" id="oymbSkinType" name="oymbSkinType" autocomplete="off">
					<label class="btn btn-outline-dark" for="지성">지성</label>
				<input type="radio" class="btn-check" id="oymbSkinType" name="oymbSkinType" autocomplete="off">
					<label class="btn btn-outline-dark" for="중성">중성</label>
				<input type="radio" class="btn-check" id="oymbSkinType" name="oymbSkinType" autocomplete="off">
					<label class="btn btn-outline-dark" for="건성">건성</label>
				<input type="radio" class="btn-check" id="oymbSkinType" name="oymbSkinType" autocomplete="off">
					<label class="btn btn-outline-dark" for="복합성">트러블</label>
			</div>
			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">퍼스널컬러</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="radio" class="btn-check" id="oymbPersonalColor" name="oymbPersonalColor" autocomplete="off">
					<label class="btn btn-outline-dark" for="spring">봄 웜</label>
				<input type="radio" class="btn-check" id="oymbPersonalColor" name="oymbPersonalColor" autocomplete="off">
					<label class="btn btn-outline-dark" for="summer">여름 쿨</label>
				<input type="radio" class="btn-check" id="oymbPersonalColor" name="oymbPersonalColor" autocomplete="off">
					<label class="btn btn-outline-dark" for="fall">가을 웜</label>
				<input type="radio" class="btn-check" id="oymbPersonalColor" name="oymbPersonalColor" autocomplete="off">
					<label class="btn btn-outline-dark" for="winter">겨울 쿨</label>
			</div>

		</div>

		<div class="row">
	
			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">관심 분야</label>
			</div>
			<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="checkbox" class="btn-check" id="oymbInterests" autocomplete="off">
					<label class="btn btn-outline-dark" for="skinCare">스킨 케어</label>
				<input type="checkbox" class="btn-check" id="oymbInterests" autocomplete="off">
					<label class="btn btn-outline-dark" for="makeUp">메이크업</label>
				<input type="checkbox" class="btn-check" id="oymbInterests" autocomplete="off">
					<label class="btn btn-outline-dark" for="hairCare">헤어 케어</label>
				<input type="checkbox" class="btn-check" id="oymbInterests" autocomplete="off">
					<label class="btn btn-outline-dark" for="bodyCare">바디 케어</label>
				<input type="checkbox" class="btn-check" id="oymbInterests" autocomplete="off">
					<label class="btn btn-outline-dark" for="innerCare">이너 케어</label>
			</div>
	
		</div>

	<br><hr><br>
				
		<div class="row">
		
			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">모바일 수신동의</label>
			</div>
			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<div class="input-group">
					<input type="radio" class="btn-check" id="oymbSmsConsent" name="oymbSmsConsent" autocomplete="off">
						<label class="btn btn-outline-dark" for="Y">동의</label>
					<input type="radio" class="btn-check" id="oymbSmsConsent" name="oymbSmsConsent" autocomplete="off">
						<label class="btn btn-outline-dark" for="N">비동의</label>
				</div>
			</div>
			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">이메일 수신동의</label>
			</div>
			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<div class="input-group">
					<input type="radio" class="btn-check" id="oymbEmailConsent" name="oymbEmailConsent" autocomplete="off">
						<label class="btn btn-outline-dark" for="Y">동의</label>
					<input type="radio" class="btn-check" id="oymbEmailConsent" name="oymbEmailConsent" autocomplete="off">
						<label class="btn btn-outline-dark" for="N">비동의</label>
				</div>
			</div>
			
		</div>

		<div class="row">

			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">PUSH 수신동의</label>
			</div>
			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<div class="input-group">
					<input type="radio" class="btn-check" id="oymbPushConsent" name="oymbPushConsent" autocomplete="off">
					<label class="btn btn-outline-dark" for="Y">동의</label> 
					<input type="radio" class="btn-check" id="oymbPushConsent" name="oymbPushConsent" autocomplete="off">
					<label class="btn btn-outline-dark" for="N">비동의</label>
				</div>
			</div>
		
		</div>
				
		<div class="row">

			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<label for="formFile" class="form-label">개인정보 유효기간</label>
			</div>

			<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
				<input type="radio" class="btn-check" id="oymbSaved" name="oymbSaved" autocomplete="off">
				<label class="btn btn-outline-dark" for="1년">1년</label>
				<input type="radio" class="btn-check" id="oymbSaved" name="oymbSaved" autocomplete="off">
				<label class="btn btn-outline-dark" for="5년">5년</label>
				<input type="radio" class="btn-check" id="oymbSaved" name="oymbSaved" autocomplete="off">
				<label class="btn btn-outline-dark" for="10년">10년</label>
				<input type="radio" class="btn-check" id="oymbSaved" name="oymbSaved" autocomplete="off">
				<label class="btn btn-outline-dark" for="평생회원">평생회원</label>
			</div>
		
		</div>
			</div>	
		</main>
	</div>

			
		<div class="container">
			<footer class="py-3 my-4">
				<ul class="nav justify-content-center border-bottom pb-3 mb-3">
					<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
					<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
					<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
					<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
					<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
				</ul>
				<p class="text-center text-muted">© 2021 All Live Young, Inc</p>
			</footer>
		</div>

</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript">
		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document.getElementById("oymaAddress3").value = extraAddr;

							} else {
								document.getElementById("oymaAddress3").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById("oymaZipCode").value = data.zonecode;
							document.getElementById("oymaAddress1").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("oymaAddress2")
									.focus();
						}
					}).open();
		}
		
		goList = function() {
			$("#formView").attr("action", "/myapp/durian/durianList");
			$("#formView").submit();
		}

		goEdit = function() {
			$("#formView").attr("action", "/myapp/durian/durianEdit");
			$("#formView").submit();
		}

		goDel = function() {
			$("#formView").attr("action", "/myapp/durian/durianDelete");
			$("#formView").submit();
		}

		goHide = function() {
			$("#formView").attr("action", "/myapp/durian/durianFelete");
			$("#formView").submit();
		}

	</script>

	
	
</body>
</html>