<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

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
						<li class="breadcrumb-item active" aria-current="page">회원 조회</li>
					</ol>
				</nav>
				<br> <br>
				<inpeut type="hidden" class="form-control" name="oymbSeq"
					value=<c:out value="${item.oymbSeq}"/>>
				<div class="row">

					<!-- <input type="hidden" name="oycdDelNy" placeholder="0"> -->
					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">이름</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<input type="text" readonly class="form-control" name="oymbName"
							value=<c:out value="${item.oymbName}"/>>
					</div>

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">아이디</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<input type="text" readonly class="form-control" name="oymbId"
							value=<c:out value="${item.oymbId}"/>>
					</div>
					<a
						href="/myapp/durian/durianEdit?oymbSeq=<c:out value="${item.oymbSeq}"/>">수정</a>
				</div>

				<div class="row">

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">SNS</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<select class="form-select" aria-label="Default select example">
							<option selected>선택해주세요</option>
							<option>X</option>
							<option>인스타그램</option>
							<option>페이스북</option>
							<option>트위터</option>
						</select>
					</div>

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">SNS URL</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<input type="text" class="form-control" id="sns_url"
							placeholder="주소를 입력해주세요">
					</div>

				</div>

				<div class="row">

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">비밀번호</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<input type="password" readonly id="oymbPassword" class="form-control"
							aria-describedby="passwordHelpBlock" value=<c:out value="${item.oymbPassword}"/>>
						<div id="passwordHelpBlock" class="form-text">8-20자리의 영문
							대소문자, 숫자, 특수문자를 조합하여 설정</div>
					</div>

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">비밀번호 확인</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<input type="password" readonly id="oymbPassword" class="form-control"
							aria-describedby="passwordHelpBlock" value=<c:out value="${item.oymbPassword}"/>>
						<div id="passwordHelpBlock" class="form-text"></div>
					</div>

				</div>

				<div class="row">

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">비밀번호 질문</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<div class="mb-3">
							<select class="form-select" aria-label="Default select example">
								<option selected>선택해주세요</option>
								<option>question 1</option>
								<option>question 2</option>
								<option>question 3</option>
								<option>question 4</option>
								<option>question 5</option>
							</select>
						</div>
					</div>

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">비밀번호 답변</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<input type="text" readonly class="form-control" id="oyjqAnswer"
							value=<c:out value="${item.oyjqAnswer}"/>>
					</div>

				</div>

				<div class="row">

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">생년월일</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<input type="date" readonly id="" name="oymbDob" value=<c:out value="${item.oymbDob}"/>>
					</div>

					<div class="col-12 col-sm-4 col-lg-2">
						<label for="formFile" class="form-label">성별</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4">
						<input type="radio" class="btn-check" name="options-outlined1" id="man" autocomplete="off">
					<label class="btn btn-outline-dark" for="man">남자</label>
					<input type="radio" class="btn-check" name="options-outlined1" id="woman" autocomplete="off">
					<label class="btn btn-outline-dark" for="woman">여자</label>
					<input type="radio" class="btn-check" name="options-outlined1" id="etc" autocomplete="off">
					<label class="btn btn-outline-dark" for="etc">기타</label>

				
				</div>

			</div>

			<div class="row">

				<div class="col-12 col-sm-4 col-lg-2">
					<label for="formFile" class="form-label">주소</label>
				</div>
				<div class="col-12 col-sm-8 col-lg-4">
					<div class="input-group">
						<input type="text" readonly class="form-control" id="oymaAddress1"
							value=<c:out value="${item.oymaAddress1}"/>>
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
							<input type="text" readonly class="oymaAddress1" id="address2"
								 value=<c:out value="${item.oymaAddress1}"/>>
						</div>

						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">국적</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4">
							<select class="form-select" aria-label="Default select example">
								<option value="choose">선택해주세요</option>
								<option value="korea">한국</option>
								<option value="usa">미국</option>
								<option value="france">프랑스</option>
								<option value="uk">영국</option>
								<option value="germany">독일</option>
								<option value="japan">일본</option>
								<option value="italia">이탈리아</option>
								<option value="canada">캐나다</option>
							</select> <input type="text" class="form-control" id="address"
								placeholder="그 외 국가 직접 입력">
						</div>

					</div>

					<div class="row">

						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">휴대전화</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4">
							<div class="input-group">
								<select class="form-select form-select-sm"
									aria-label="Default select example">
									<option selected>통신사</option>
									<option>SKT</option>
									<option>KT</option>
									<option>Uplus</option>
									<option>알뜰폰</option>
								</select> <input type="text" class="form-control" id="mobile"
									placeholder="'-'제외">
							</div>
						</div>

						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">팩스</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4">
							<input type="text" class="form-control" id="fax"
								placeholder="'-'제외">
						</div>

					</div>


					<div class="row">

						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">이메일</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4">
							<div class="input-group">
								<input type="text" class="form-control" id="email"
									placeholder="이메일"> <span class="input-group-text">@</span>
								<select class="form-select" aria-label="Default select example">
									<option value="server" selected>선택해주세요
									<option value="Gmail">gmail.com
									<option value="Naver">naver.com
									<option value="Daum">hanmail.net
								</select>
							</div>
						</div>

						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">개인 홈페이지</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4">
							<input type="text" class="form-control" id="homepage"
								placeholder="주소를 입력해주세요">
						</div>

					</div>


					<div class="row">

						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">직업</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4">
							<input type="text" class="form-control" id="occupation"
								placeholder="직업">
						</div>
						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">선호하는 색상</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4">
							<input type="color" class="form-control form-control-color"
								id="favColor" value="#FF8200">
						</div>

					</div>


					<div class="row">

						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">결혼유무</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4">
							<div class="input-group">
								<div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" role="switch"
										id="flexSwitchCheckDefault"> <label
										class="form-check-label" for="flexSwitchCheckDefault">&nbsp;미혼</label>
								</div>
								&nbsp;&nbsp;
								<div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" role="switch"
										id="flexSwitchCheckDefault"> <label
										class="form-check-label" for="flexSwitchCheckDefault">&nbsp;기혼</label>
								</div>
							</div>
						</div>

						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">기념일</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4">
							<div class="input-group">
								<input type="date" id="" name="anniversary" placeholder="000000">&nbsp;&nbsp;
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault">해당없음</label>
								</div>
							</div>
						</div>

					</div>


					<div class="row">

						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">자녀유무</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4">
							<div class="input-group">
								<div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" role="switch"
										id="flexSwitchCheckDefault"> <label
										class="form-check-label" for="flexSwitchCheckDefault">&nbsp;유자녀</label>
								</div>
								&nbsp;&nbsp;
								<div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" role="switch"
										id="flexSwitchCheckDefault"> <label
										class="form-check-label" for="flexSwitchCheckDefault">&nbsp;무자녀</label>
								</div>
							</div>
						</div>

						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">추천인</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4">
							<input type="text" class="form-control" id="reference"
								placeholder="추천인">
						</div>

					</div>


					<div class="row">

						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">취미</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4">
							<div class="input-group">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 수집 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 인테리어 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 재태크 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 사진촬영 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 골프 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 공예 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 스킨스쿠버 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 베이킹 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 요리 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 악기연주 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 핸드드립 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 꽃꽂이 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 그림 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 와인 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 식물기르기 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 영화보기 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckChecked"> <label class="form-check-label"
										for="flexCheckChecked"> 드라이브 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckChecked"> <label class="form-check-label"
										for="flexCheckChecked"> 캠핑 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 요가 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 유튜브제작 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 바이크 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 테니스 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckChecked"> <label class="form-check-label"
										for="flexCheckChecked"> 등산 </label>
								</div>
							</div>
						</div>

						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">자기소개</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4">
							<textarea class="form-control" id="exampleFormControlTextarea1"
								rows="10" placeholder="간단한 자기소개 부탁드립니다"></textarea>
						</div>

					</div>
					<hr>
					<div class="col-12">
						<label for="formFile" class="form-label">프로젝트 참여 1</label>
					</div>
					<div class="row">
						<div class="form-floating col-sm-6">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="프로젝트명"> <label for="floatingInput">프로젝트명</label>
						</div>
						<div class="form-floating col-sm-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="참여기간"> <label for="floatingInput">프로젝트
								시작</label>
							<div id="HelpBlock" class="form-text">0000년00월</div>
						</div>
						<div class="form-floating col-sm-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="참여기간"> <label for="floatingInput">프로젝트
								종료</label>
						</div>
						<div class="form-floating col-sm-6">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="역할"> <label for="floatingPassword">역할</label>
						</div>
						<div class="form-floating col-sm-6">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="발주사"> <label for="floatingPassword">발주사</label>
						</div>
					</div>

					<hr>
					<div class="col-12">
						<label for="formFile" class="form-label">프로젝트 참여 2</label>
					</div>
					<div class="row">
						<div class="form-floating col-sm-6">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="프로젝트명"> <label for="floatingInput">프로젝트명</label>
						</div>
						<div class="form-floating col-sm-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="참여기간"> <label for="floatingInput">프로젝트
								시작</label>
							<div id="HelpBlock" class="form-text">0000년00월</div>
						</div>
						<div class="form-floating col-sm-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="참여기간"> <label for="floatingInput">프로젝트
								종료</label>
						</div>
						<div class="form-floating col-sm-6">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="역할"> <label for="floatingPassword">역할</label>
						</div>
						<div class="form-floating col-sm-6">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="발주사"> <label for="floatingPassword">발주사</label>
						</div>
					</div>

					<hr>
					<div class="col-12">
						<label for="formFile" class="form-label">프로젝트 참여 3</label>
					</div>
					<div class="row">
						<div class="form-floating col-sm-6">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="프로젝트명"> <label for="floatingInput">프로젝트명</label>
						</div>
						<div class="form-floating col-sm-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="참여기간"> <label for="floatingInput">프로젝트
								시작</label>
							<div id="HelpBlock" class="form-text">0000년00월</div>
						</div>
						<div class="form-floating col-sm-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="참여기간"> <label for="floatingInput">프로젝트
								종료</label>
						</div>
						<div class="form-floating col-sm-6">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="역할"> <label for="floatingPassword">역할</label>
						</div>
						<div class="form-floating col-sm-6">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="발주사"> <label for="floatingPassword">발주사</label>
						</div>
					</div>

					<hr>
					<div class="col-12">
						<label for="formFile" class="form-label">프로젝트 참여 4</label>
					</div>
					<div class="row">
						<div class="form-floating col-sm-6">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="프로젝트명"> <label for="floatingInput">프로젝트명</label>
						</div>
						<div class="form-floating col-sm-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="참여기간"> <label for="floatingInput">프로젝트
								시작</label>
							<div id="HelpBlock" class="form-text">0000년00월</div>
						</div>
						<div class="form-floating col-sm-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="참여기간"> <label for="floatingInput">프로젝트
								종료</label>
						</div>
						<div class="form-floating col-sm-6">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="역할"> <label for="floatingPassword">역할</label>
						</div>
						<div class="form-floating col-sm-6">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="발주사"> <label for="floatingPassword">발주사</label>
						</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-12">
							<label for="formFile" class="form-label">수신동의</label>
						</div>
						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">모바일 수신동의</label>
						</div>

						<div class="col-12 col-sm-4 col-lg-2">
							<div class="input-group">
								<div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" role="switch"
										id="flexSwitchCheckDefault"> <label
										class="form-check-label" for="flexSwitchCheckDefault">&nbsp;동의</label>
								</div>
								<div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" role="switch"
										id="flexSwitchCheckDefault"> <label
										class="form-check-label" for="flexSwitchCheckDefault">&nbsp;비동의</label>
								</div>
							</div>
						</div>

						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">이메일 수신동의</label>
						</div>

						<div class="col-12 col-sm-4 col-lg-2">
							<div class="input-group">
								<div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" role="switch"
										id="flexSwitchCheckDefault"> <label
										class="form-check-label" for="flexSwitchCheckDefault">&nbsp;동의</label>
								</div>
								<div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" role="switch"
										id="flexSwitchCheckDefault"> <label
										class="form-check-label" for="flexSwitchCheckDefault">&nbsp;비동의</label>
								</div>
							</div>
						</div>



						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">PUSH 수신동의</label>
						</div>

						<div class="col-12 col-sm-4 col-lg-2">
							<div class="input-group">
								<div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" role="switch"
										id="flexSwitchCheckDefault"> <label
										class="form-check-label" for="flexSwitchCheckDefault">&nbsp;동의</label>
								</div>
								<div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" role="switch"
										id="flexSwitchCheckDefault"> <label
										class="form-check-label" for="flexSwitchCheckDefault">&nbsp;비동의</label>
								</div>
							</div>
						</div>

						<div class="col-12 col-sm-4 col-lg-2">
							<label for="formFile" class="form-label">개인정보 유효기간</label>
						</div>

						<div class="col-12 col-sm-4 col-lg-2">
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault1"> <label
									class="form-check-label" for="flexRadioDefault1"> 1년 </label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault1"> <label
									class="form-check-label" for="flexRadioDefault1"> 3년 </label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault1"> <label
									class="form-check-label" for="flexRadioDefault1"> 5년 </label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault1"> <label
									class="form-check-label" for="flexRadioDefault1"> 10년 </label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault1"> <label
									class="form-check-label" for="flexRadioDefault1"> 평생 </label>
							</div>
						</div>
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

			</main>
		</div>
		</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>




</body>
</html>