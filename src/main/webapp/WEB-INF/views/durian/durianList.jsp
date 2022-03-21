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


	<form method="post" action="/myapp/durian/durianList">

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
							<li class="breadcrumb-item active" aria-current="page">회원
								리스트</li>
						</ol>
					</nav>

					<br> <br>
					<div class="bbb">
						<div class="container">

							<div class="row gx-2 gy-2">
								<div class="col-12 col-sm-4 col-lg-2">
														<select class="form-select" name="scOymbDelNy" id="scOymbDelNy">
							<option selected>::삭제여부::</option>
							<option value="1" <c:if test="${vo.scOymbDelNy eq 1 }">selected</c:if> >Y</option>
							<option value="0" <c:if test="${vo.scOymbDelNy eq 0 }">selected</c:if> >N</option>
						</select>	
								
								</div>
								<div class="col-12 col-sm-4 col-lg-2">
									<input type="text" name="scOymbName" class="form-control"
										id="scOymbName" placeholder="검색어" value="<c:out value="${vo.scOymbName}"/>">
								</div>

					

							</div>
							<br>
							<div class="row gx-2 gy-2">

								<div class="col-12 col-sm-4 col-lg-2">
									<select name="scOption" id="scOption" class="form-select">
										<option value="">::검색구분::
										<option value="1"
											<c:if test="${vo.scOption eq 1 }">selected</c:if>>한글


										
										<option value="2"
											<c:if test="${vo.scOption eq 2 }">selected</c:if>>영문


										
									</select>
								</div>
								<div class="col-12 col-sm-4 col-lg-2">
									<input type="text" name="scValue" id="scValue"
										class="form-control" placeholder="검색어" value="<c:out value="${vo.scValue}"/>">
								</div>


								<div class="col-12 col-sm-4 col-lg-2">
									<div style="text-align: left;">
										<input type="submit" id="btnSubmit" name="search"
											class="btn btn-outline-dark"> <a
											href="/myapp/durian/durianList"><button type="button"
												class="btn btn-outline-dark">초기화</button></a>

									</div>
								</div>
								<div class="col-12 col-sm-4 col-lg-2"></div>
								<div class="col-12 col-sm-4 col-lg-2"></div>
								<div class="col-12 col-sm-4 col-lg-2"></div>
								<div class="col-12 col-sm-4 col-lg-2"></div>

							</div>

						</div>
					</div>

					<br> <br>
					<div class="table-wrapper">
						<div class="container">

							<table class="table table-hover">
								<thead>
									<tr>
										<th scope="col">
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value=""
													id="flexCheckDefault">
											</div>
										</th>
										<th scope="col">회원번호</th>
										<th scope="col">회원등급</th>
										<th scope="col">이름</th>
										<th scope="col">아이디</th>
										<th scope="col">성별</th>
										<th scope="col">통신사</th>
										<th scope="col">연락처</th>
										<th scope="col">이메일</th>
										<th scope="col"></th>

									</tr>
								</thead>

								<tbody>
									<c:choose>
										<c:when test="${fn:length(list) eq 0}">
											<tr>
												<td class="text-center" colspan="9">There is no data!</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${list}" var="item" varStatus="status">
												<tr>
													<th scope="row">
														<div class="form-check">
															<input class="form-check-input" type="checkbox" value="s"
																id="flexCheckDefault">
														</div>
													</th>
													<th scope="row"><c:out value="${item.oymbSeq}" /></th>
													<td><c:out value="${item.oymbGrade}" /></td>
													<td><a
														href="/myapp/durian/durianView?oymbSeq=<c:out value="${item.oymbSeq}"/>"><c:out
																value="${item.oymbName}" /></a></td>
													<td><c:out value="${item.oymbId}" /></td>
													<td><c:out value="${item.oymbGender}" /></td>
													<td><c:out value="${item.oympTelecom}" /></td>
													<td><c:out value="${item.oympNumber}" /></td>
													<td><c:out value="${item.oymeEmailFull}" /></td>
													<td><div class="d-none">
															<c:out value="${item.oymbDelNy}" />
														</div></td>



												</tr>

											</c:forEach>
										</c:otherwise>
									</c:choose>
									<!-- <tr>
			
				<th scope="row">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault">
					</div>
				</th>
				<th scope="row">2</th>
				<td>이다다</td>
				<td>qwerty</td>
				<td>남</td>
				<td>01055555555</td>
				<td>qwerty@gmail.com</td>
			</tr>
			<tr>
				<th scope="row">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault">
					</div>
				</th>
				<th scope="row">3</th>
				<td>박라라</td>
				<td>zxcv1234</td>
				<td>남</td>
				<td>01022222222</td>
				<td>zxcv1234@hanmail.net</td>
			</tr>
			<tr>
				<th scope="row">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault">
					</div>
				</th>
				<th scope="row">4</th>
				<td>최마마</td>
				<td>poiuy</td>
				<td>여</td>
				<td>01066666666</td>
				<td>poiuy@naver.com</td>
			</tr>
			<tr>
				<th scope="row">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault">
					</div>
				</th>
				<th scope="row">5</th>
				<td>김바바</td>
				<td>asdf9988</td>
				<td>남</td>
				<td>01011111111</td>
				<td>asdf9988@naver.com</td>
			</tr> -->
								</tbody>
								<!-- <tfoot>
									<tr>
										<th scope="row"><button type="button" id="btnSubmit_del"
												class="btn btn-danger">&nbsp삭 제&nbsp</button></th>
										<td colspan="5">
										<td><div style="text-align: right;">

												<a
													href="/myapp/durian/durianForm?oymbSeq=<c:out value="${item.oymbSeq}"/>">
													<button type="button" class="btn btn-success">&nbsp등
														록&nbsp</button>
												</a>


											</div></td>
									</tr>
								</tfoot> -->
							</table>
							<div class="row">
								<div class="col-2">
									<button type="button" id="btnSubmit_del" class="btn btn-danger">&nbsp삭
										제&nbsp</button>
								</div>
								<div class="col-8"></div>
								<div class="col-2">
									<a
										href="/myapp/durian/durianForm?oymbSeq=<c:out value="${item.oymbSeq}"/>">
										<button type="button" class="btn btn-success">&nbsp등
											록&nbsp</button>
									</a>
								</div>

							</div>
						</div>
					</div>

					<nav aria-label="Page navigation example">
						<ul class="pagination">



							<c:if test="${vo.startPage gt vo.pageNumToShow}">
								<li class="page-item"><a class="page-link"
									style="color: black;"
									href="/myapp/durian/durianList?thisPage=${vo.startPage - 1}"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								</a></li>
							</c:if>
							<c:forEach begin="${vo.startPage}" end="${vo.endPage}"
								varStatus="i">
								<c:choose>
									<c:when test="${i.index eq vo.thisPage}">
										<li class="page-item active"><a class="page-link"
											style="color: black;"
											href="/myapp/durian/durianList?thisPage=${i.index}">${i.index}</a></li>
									</c:when>
									<c:otherwise>
										<li class="page-item"><a class="page-link"
											style="color: black;"
											href="/myapp/durian/durianList?thisPage=${i.index}">${i.index}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>


							<c:if test="${vo.endPage ne vo.totalPages}">
								<li class="page-item"><a class="page-link"
									style="color: black;"
									href="/myapp/durian/durianList?thisPage=${vo.endPage + 1}"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
								</a></li>
							</c:if>
						</ul>
					</nav>

					<!--  -->
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

	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	</script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/myapp/resources/js/validation.js"></script>

	<script type="text/javascript">
		$("#btnSubmit_del").on("click", function() {
			/* alert($("scOption").val()); */

			alert("삭제?");
			confirm("진짜 삭제? 복구 노노");
		});
	</script>
	<!-- <script type="text/javascript">
$("#btnSubmit").on("click", function(){
	alert($("#scOycgName").val());		// jquery 방식
});
</script> -->

	<script type="text/javascript">
		/* $("#btnSubmit").on("click", function(){

		 if(!checkNull($("#scValue"), $("#scValue").val(), "검색어를 입력해주세요."))return false;
		 });
		 */
	</script>
	<script type="text/javascript">
$("#btnSubmit").on("click", function(){

if(!checkNull($("#scOymbDelNy"), $("#scOymbDelNy").val(), "삭제 여부 체크 필수입니다."))return false;

if(!checkNull($("#scOymbName"), $("#scOymbName").val(), "검색어를 입력해주세요."))return false;

if(!checkNull($("#scValue"), $("#scValue").val(), "검색어를 입력해주세요."))return false;
});

</script>


</body>
</html>





