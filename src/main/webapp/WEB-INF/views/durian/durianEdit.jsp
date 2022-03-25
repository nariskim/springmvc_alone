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


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">


<script src="https://kit.fontawesome.com/893e1f7eb8.js"
	crossorigin="anonymous"></script>

<style type="text/css">
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
}

.aaa {
	margin-bottom: 15%;
}

.pagination {
	justify-content: center;
}

.ccc {
	display: inline;
}
</style>
</head>
<body>
	<form method="post" action="/myapp/durian/durianUpdt">

	<input type="hidden"name="thisPage" value="<c:out value="${vo.thisPage}"/>">
	<input type="hidden" name="scOption" value="<c:out value="${vo.scOption}"/>">
	<input type="hidden" name="scValue" value="<c:out value="${vo.scValue}"/>">	
	<input type="hidden" name="oymbSeq" value= "<c:out value="${item.oymbSeq}"/>">

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

					<input type="text" class="form-control me-2 search-input"
						placeholder="Search...">
				</div>
				<div class="col-2 col-sm-1">
					<button type="button" class="btn btn-secondary search-button">
						<i class="fas fa-search text-light"></i>
					</button>

				</div>

				<div class="col-auto col-sm-3">

					<ul class="nav">
						<li class="nav-item icon-parent"><a href="#"
							class="nav-link icon-bullet"><i
								class="fas fa-comments text-muted fa-lg"></i></a></li>


						<li class="nav-item icon-parent"><a href="#"
							class="nav-link icon-bullet"><i
								class="fas fa-bell text-muted fa-lg"></i></a></li>

						<li class="nav-item ml-auto"><a href="#" class="nav-link"><i
								class="fas fa-sign-out-alt text-danger fa-lg"></i></a></li>
					</ul>
				</div>


			</header>
		</div>





		<div class="container-fluid">
			<div class="row">
				<nav id="sidebarMenu"
					class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse show">
					<div class="position-sticky pt-3">
						<ul class="navbar-nav flex-column mt-4">
							<!-- Dashboard -->
							<li class="nav-item"><a href="#"
								class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
									class="fas fa-home text-dark fg-lg mr-3"></i>&nbsp&nbsp홈
							</a></li>
							<!-- Profile -->
							<li class="nav-item"><a href="#"
								class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
									class="fas fa-shopping-cart text-dark fg-lg mr-3"></i>&nbsp&nbsp상품
									등록
							</a></li>
							<!-- Inbox -->
							<li class="nav-item"><a href="#"
								class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
									class="fas fa-truck-fast text-dark fg-lg mr-3"></i>&nbsp&nbsp주문
									/ 배송
							</a></li>
							<!-- Sales -->
							<li class="nav-item"><a href="#"
								class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
									class="fas fa-calendar-check text-dark fg-lg mr-3"></i>&nbsp&nbsp스케줄
							</a></li>
							<!-- Analytics -->
							<li class="nav-item"><a href="#"
								class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
									class="fas fa-chart-line text-dark fg-lg mr-3"></i>&nbsp&nbsp판매
									현황
							</a></li>
							<!-- Tables -->
							<li class="nav-item"><a href="#"
								class="nav-link text-dark p-3 mb-2 current"> <i
									class="fas fa-user fa-table text-dark fg-lg mr-3"></i>&nbsp&nbsp회원
									관리
							</a></li>
							<!-- Settings -->
							<li class="nav-item"><a href="#"
								class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
									class="fas fa-headphones text-dark fg-lg mr-3"></i>&nbsp&nbsp고객
									문의
							</a></li>
							<!-- Documentations -->
							<li class="nav-item"><a href="#"
								class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
									class="fas fa-table fa-file-alt text-dark fg-lg mr-3"></i>&nbsp&nbsp게시판
									관리
							</a></li>
						</ul>

					</div>
				</nav>

				<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
					<br>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">회원 관리</a></li>
							<li class="breadcrumb-item"><a
								href="/myapp/durian/durianList">회원 리스트</a></li>
							<li class="breadcrumb-item"><a
								href="/myapp/durian/durianView">회원 조회</a></li>
							<li class="breadcrumb-item active">회원 변경</li>
						</ol>
					</nav>
					<br> <br>
					<input type="submit" value="제출">
					<div class="row">

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">이름 (한글)</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<input type="text" class="form-control" id="oymbName"
							name="oymbName" value="<c:out value="${item.oymbName}"/>">
					</div>

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">이름 (영문)</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<input type="text" class="form-control" id="oymbNameEng"
							name="oymbNameEng" value="<c:out value="${item.oymbNameEng}"/>">
						<div id="NameEngHelpBlock" class="form-text">예시:김나리 'nr'</div>
					</div>
				</div>

				<div class="row">

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">아이디</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<input type="text" class="form-control" id="oymbId" name="oymbId"
							value="<c:out value="${item.oymbId}"/>">

					</div>

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">닉네임</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<input type="text" class="form-control" id="oymbNickName"
							name="oymbNickName" value="<c:out value="${item.oymbNickName}"/>">
					</div>

				</div>

				<div class="row">

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">비밀번호</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<input type="password" id="oymbPassword" name="oymbPassword"
							class="form-control" aria-describedby="passwordHelpBlock"
							 value="<c:out value="${item.oymbPassword}"/>">
						<div id="passwordHelpBlock" class="form-text">8-20자리의 영문
							대소문자, 숫자, 특수문자를 조합하여 설정</div>
					</div>

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">비밀번호 확인</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<input type="password" id="oymbPwdConfirm" class="form-control"
							aria-describedby="passwordHelpBlock" placeholder="비밀번호 확인">
						<div id="passwordHelpBlock" class="form-text"></div>
					</div>

				</div>

				<div class="row">

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">생년월일</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<input type="date" id="" name="">
					</div>

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">성별</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<input type="radio" class="btn-check" id="" name="" autocomplete="off" value="3">
						<label class="btn btn-outline-dark">남자</label>
						<input type="radio" class="btn-check" id="" name="" autocomplete="off" value="4">
						<label class="btn btn-outline-dark">여자</label>
						<input type="radio" class="btn-check" id="" name="" autocomplete="off" value="5">
						<label class="btn btn-outline-dark">기타</label>
					</div>

				</div>

				<div class="row">

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">비밀번호 질문</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<div class="mb-3">
							<select class="form-select" id="" name="">
								<option selected>선택해주세요</option>
								<option value="17">question 1</option>
								<option value="18">question 2</option>
								<option value="19">question 3</option>
								<option value="20">question 4</option>
								<option value="21">question 5</option>
							</select>
						</div>
					</div>

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">비밀번호 답변</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<input type="text" class="form-control" id=""
							placeholder="비밀번호 힌트 답">
					</div>

				</div>



				<div class="row">

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">주소</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<div class="input-group">
							<input type="text" class="form-control" id="address"
								placeholder="주소를 입력해주세요">
							<button class="btn btn-outline-dark" type="button"
								id="button-addon1" data-bs-toggle="modal"
								data-bs-target="#exampleModal">주소 찾기</button>
							<!--MODAL -->
							<div class="modal fade" id="exampleModal" tabindex="-1"
								aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">주소 검색</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<h3 style="text-align: center">주소 검색</h3>
											<br> <br>
											<div class="input-group mb-3">
												<input class="form-control" type="text" placeholder="주소 입력">
												<br> <a href="https://map.naver.com/v5"
													class="btn btn-outline-secondary" role="button"
													id="button-addon2">검색</a>
											</div>
											<p>도로명, 건물명 또는 지번 중 편한 방법으로 검색하세요.</p>
											<p>예) 건물명 : 방배동 우성아파트</p>
											<p>도로명 : 테헤란로 152</p>
											<p>지역번 : 역삼동 737</p>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-bs-dismiss="modal">닫기</button>
											<button type="button" class="btn btn-primary">확인</button>
										</div>
									</div>
								</div>
							</div>
							<!-- MODAL END -->
						</div>
						<input type="text" class="form-control" id="address"
							placeholder="상세 주소">
					</div>

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">국적</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<select class="form-select" id="" name="">
							<option value="choose">선택해주세요</option>
							<option value="1">한국</option>
							<option value="2">미국</option>
							<option value="5">프랑스</option>
							<option value="3">영국</option>
							<option value="4">독일</option>
							<option value="6">폴란드</option>
							<option value="7">호주</option>
							<option value="8">중국</option>
						</select> <input type="text" class="form-control" id="address"
							placeholder="그 외 국가 직접 입력">
					</div>

				</div>

				<div class="row">

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">연락처 (필수)</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<div class="input-group">
							<select class="form-select" id="oympTelecomCd" name="oympTelecomCd">
				<option value="" selected>선택해주세요</option>
					<c:forEach items="${codeTelecom}" var="itemTelecom" varStatus="statusTelecom">
			<option value="<c:out value="${itemTelecom.oycdSeq}"/>" <c:if test="${item.oympTelecomCd eq itemTelecom.oycdSeq }">selected</c:if> ><c:out value="${itemTelecom.oycdName}"/></option>	
							</c:forEach>
			</select>
			<input type="text" class="form-control" id="oympNumber" name="oympNumber" value="<c:if test="${vo.oympDefaultNy eq 1 }"><c:out value="${item.oympNumber}"/></c:if>">
						</div>
					</div>

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">연락처 (선택)</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<div class="input-group">
							<select class="form-select" id="oympTelecomCd" name="oympTelecomCd">
				<option value="" selected>선택해주세요</option>
					<c:forEach items="${codeTelecom}" var="itemTelecom" varStatus="statusTelecom">
			<option value="<c:out value="${itemTelecom.oycdSeq}"/>" <c:if test="${item.oympTelecomCd eq itemTelecom.oycdSeq }">selected</c:if> ><c:out value="${itemTelecom.oycdName}"/></option>	
							</c:forEach>
			</select>
			<input type="text" class="form-control" id="oympNumber" name="oympNumber" value="<c:if test="${vo.oympDefaultNy eq 0 }"><c:out value="${item.oympNumber}"/></c:if>">
						</div>

					</div>


					<div class="row">

						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">이메일 (필수)</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4">
							<div class="input-group">
								<input type="text" class="form-control" id="oymeEmailAccount" name="oymeEmailAccount" placeholder="이메일">
									<span class="input-group-text">@</span>
									<select class="form-select" id="" name="">
									<option selected>선택해주세요
									<option value="35">gmail.com
									<option value="36">naver.com
									<option value="37">hanmail.net
									<option value="155">직접입력
								</select>
							</div>
						</div>

						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">이메일 (선택)</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4">
							<div class="input-group">
								<input type="text" class="form-control" id="oymeEmailAccount"
									name="oymeEmailAccount" placeholder="이메일"> <span
									class="input-group-text">@</span> <select class="form-select"
									id="oymeEmailDomainCd" name="oymeEmailDomainCd">
									<option selected>선택해주세요
									<option value="35">gmail.com
									<option value="36">naver.com
									<option value="37">hanmail.net
									<option value="155">직접입력
								</select>
							</div>
						</div>
					</div>


					<div class="row">
						<div class="col-12 col-sm-6 col-lg-2">
							<label for="formFile" class="form-label">피부타입</label>
						</div>
						<div class="col-12 col-sm-6 col-lg-4">
							<input type="radio" class="btn-check" id="oymbSkinTypeCd" name="oymbSkinTypeCd" autocomplete="off" value="141">
							<label class="btn btn-outline-dark" for="민감">민감성</label>
							<input type="radio" class="btn-check" id="oymbSkinTypeCd" name="oymbSkinTypeCd" autocomplete="off" value="142">
							<label class="btn btn-outline-dark" for="지성">지성</label>
							<input type="radio" class="btn-check" id="oymbSkinTypeCd" name="oymbSkinTypeCd" autocomplete="off" value="143">
							<label class="btn btn-outline-dark" for="중성">중성</label>
							<input type="radio" class="btn-check" id="oymbSkinTypeCd" name="oymbSkinTypeCd" autocomplete="off" value="144">
							<label class="btn btn-outline-dark" for="건성">건성</label>
							<input type="radio" class="btn-check" id="oymbSkinTypeCd" name="oymbSkinTypeCd" autocomplete="off" value="145">
							<label class="btn btn-outline-dark" for="복합성">트러블</label>
						</div>
						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">퍼스널컬러</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4">
							<input type="radio" class="btn-check" id="oymbPersonalColorCd" name="oymbPersonalColor" autocomplete="off" value="146">
							<label class="btn btn-outline-dark" for="spring">봄 웜</label>
							<input type="radio" class="btn-check" id="oymbPersonalColorCd" name="oymbPersonalColor" autocomplete="off" value="147">
							<label class="btn btn-outline-dark" for="summer">여름 쿨</label>
							<input type="radio" class="btn-check" id="oymbPersonalColorCd" name="oymbPersonalColor" autocomplete="off" value="148">
							<label class="btn btn-outline-dark" for="fall">가을 웜</label>
							<input type="radio" class="btn-check" id="oymbPersonalColorCd" name="oymbPersonalColor" autocomplete="off" value="149">
							<label class="btn btn-outline-dark" for="winter">겨울 쿨</label>
						</div>
					</div>
					
					<div class="row">
						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">관심 분야</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4">
							<input type="checkbox" class="btn-check" id="oymbInterestsCd" autocomplete="off" value="150">
							<label class="btn btn-outline-dark" for="skinCare">스킨 케어</label>
							<input type="checkbox" class="btn-check" id="oymbInterestsCd" autocomplete="off" value="151">
							<label class="btn btn-outline-dark" for="makeUp">메이크업</label>
							<input type="checkbox" class="btn-check" id="oymbInterestsCd" autocomplete="off" value="152">
							<label class="btn btn-outline-dark" for="hairCare">헤어 케어</label>
							<input type="checkbox" class="btn-check" id="oymbInterestsCd" autocomplete="off" value="153">
							<label class="btn btn-outline-dark" for="bodyCare">바디 케어</label>
							<input type="checkbox" class="btn-check" id="oymbInterestsCd" autocomplete="off" value="154">
							<label class="btn btn-outline-dark" for="innerCare">이너 케어</label>
						</div>
					</div><hr>
					
					<div class="row">
						<div class="col-12">
							<label for="formFile" class="form-label">수신동의</label>
						</div>
						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">모바일 수신동의</label>
						</div>
					
						<div class="col-12 col-sm-4 col-lg-2">
							<div class="input-group">
								<input type="radio" class="btn-check" id="oymbSmsConsentNy" name="oymbSmsConsent" autocomplete="off" value="1">
								<label class="btn btn-outline-dark">동의</label>
								<input type="radio" class="btn-check" id="oymbSmsConsentNy" name="oymbSmsConsent" autocomplete="off" value="0">
								<label class="btn btn-outline-dark">비동의</label>
							</div>
						</div>
					
						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">이메일 수신동의</label>
						</div>
					
						<div class="col-12 col-sm-4 col-lg-2">
							<div class="input-group">
								<input type="radio" class="btn-check" id="oymbEmailConsentNy" name="oymbEmailConsentNy" autocomplete="off" value="1">
								<label class="btn btn-outline-dark">동의</label>
								<input type="radio" class="btn-check" id="oymbEmailConsentNy" name="oymbEmailConsentNy" autocomplete="off" value="0"> 
								<label class="btn btn-outline-dark">비동의</label>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">PUSH 수신동의</label>
						</div>
						<div class="col-12 col-sm-4 col-lg-2">
							<div class="input-group">
								<input type="radio" class="btn-check" id="oymbPushConsentNy" name="oymbPushConsentNy" autocomplete="off" value="1">
								<label class="btn btn-outline-dark">동의</label>
								<input type="radio" class="btn-check" id="oymbPushConsentNy" name="oymbPushConsentNy" autocomplete="off" value="0">
								<label class="btn btn-outline-dark">비동의</label>
							</div>
						</div>
						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">개인정보 유효기간</label>
						</div>
						<div class="col-12 col-sm-4 col-lg-2">
								<input type="radio" class="btn-check" id="oymbSavedCd" name="oymbSaved" autocomplete="off" value="6">
							<label class="btn btn-outline-dark" for="1년">1년</label>
							<input type="radio" class="btn-check" id="oymbSaved" name="oymbSaved" autocomplete="off" value="8">
							<label class="btn btn-outline-dark" for="5년">5년</label>
							<input type="radio" class="btn-check" id="oymbSaved" name="oymbSaved" autocomplete="off" value="9">
							<label class="btn btn-outline-dark" for="10년">10년</label>
							<input type="radio" class="btn-check" id="oymbSaved" name="oymbSaved" autocomplete="off" value="10">
							<label class="btn btn-outline-dark" for="평생회원">평생회원</label>
						</div>
					</div>
				</div>		
			</main>
		</div>
	</div>
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
				<p class="text-center text-muted">© 2021 All Live Young, Inc</p>
			</footer>
		</div>

	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>




</body>
</html>