<%-- <%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<a href="/myapp/durian/durianForm?oymbSeq=<c:out value="${item.oymbSeq}"/>">등록</a>

<br>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">

			<c:out value="${item.oymbSeq}" /> | <a
				href="/myapp/durian/durianView?oymbSeq=<c:out value="${item.oymbSeq}"/>"><c:out
					value="${item.oymbName}" /></a> | <c:out value="${item.oymbId}" />
			<br>

		</c:forEach>
	</c:otherwise>
</c:choose> --%>

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
	background-color: orange;
	border-radius: 5px;
}
.current {
	background-color: orange;
	border-radius: 7px;
	box-shadow: 2px 5px 10px gray;
}
.current:hover {
	background-color: orange;
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
	border-bottom: 2px solid orange;
}
.search-button {
	border-radius: 50%;
	padding: 10px 16px;
	transition: all .4s;
}
.search-button:hover {
	background-color: white;
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
	background-color: red;
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
	<form action="" method="post" id="" name=""
		enctype="multipart/form-data">


		<div class="row">
			<header class="navbar navbar-dark sticky-top bg-dark ml-auto">

				<div class="col-auto col-sm-5">
					<a class="navbar-brand me-0 px-3" href="#">All Live Young </a>
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
				<div class="col-6 col-sm-3">

					<input type="text" class="form-control me-2 search-input"
						placeholder="Search...">
				</div>
				<div class="col-6 col-sm-1">
					<button type="button" class="btn btn-dark search-button">
						<i class="fas fa-search text-danger"></i>
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
								class="nav-link text-dark p-3 mb-2 current"> <i
									class="fas fa-home text-dark fg-lg mr-3"></i>Dashboard
							</a></li>
							<!-- Profile -->
							<li class="nav-item"><a href="#"
								class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
									class="fas fa-user text-dark fg-lg mr-3"></i>Profile
							</a></li>
							<!-- Inbox -->
							<li class="nav-item"><a href="#"
								class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
									class="fas fa-envelope text-dark fg-lg mr-3"></i>Inbox
							</a></li>
							<!-- Sales -->
							<li class="nav-item"><a href="#"
								class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
									class="fas fa-shopping-cart text-dark fg-lg mr-3"></i>Sales
							</a></li>
							<!-- Analytics -->
							<li class="nav-item"><a href="#"
								class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
									class="fas fa-chart-line text-dark fg-lg mr-3"></i>Analytics
							</a></li>
							<!-- Tables -->
							<li class="nav-item"><a href="#"
								class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
									class="fas fa-table text-dark fg-lg mr-3"></i>Tables
							</a></li>
							<!-- Settings -->
							<li class="nav-item"><a href="#"
								class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
									class="fas fa-wrench text-dark fg-lg mr-3"></i>Settings
							</a></li>
							<!-- Documentations -->
							<li class="nav-item"><a href="#"
								class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
									class="fas fa-file-alt text-dark fg-lg mr-3"></i>Documentation
							</a></li>
						</ul>

					</div>
				</nav>

				<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
					<br>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">홈</a></li>
							<li class="breadcrumb-item active" aria-current="page">회원관리</li>
						</ol>
					</nav>
					<br> <br>
					<div class="bbb">
						<div class="container">
							<div class="row gx-2 gy-2">
								<div class="col-12 col-sm-4 col-lg-2">
									<select class="form-select" aria-label="Default select example">
										<option selected>삭제여부</option>
										<option value="1">One</option>
										<option value="2">Two</option>
										<option value="3">Three</option>
									</select>
								</div>
								<div class="col-12 col-sm-4 col-lg-2">
									<select class="form-select" aria-label="Default select example">
										<option selected>날짜</option>
										<option value="1">One</option>
										<option value="2">Two</option>
										<option value="3">Three</option>
									</select>
								</div>
								<div class="col-12 col-sm-4 col-lg-2">
									<input type="text" class="form-control"
										id="exampleFormControlInput1" placeholder="시작일">
								</div>
								<div class="col-12 col-sm-4 col-lg-2">
									<input type="text" class="form-control"
										id="exampleFormControlInput1" placeholder="종료일">
								</div>
								<div class="col-12 col-sm-4 col-lg-2"></div>
								<div class="col-12 col-sm-4 col-lg-2"></div>
							</div>
							<br>
							<div class="row gx-2 gy-2">
								<div class="col-12 col-sm-4 col-lg-2">
									<select class="form-select" aria-label="Default select example">
										<option selected>검색구분</option>
										<option value="1">One</option>
										<option value="2">Two</option>
										<option value="3">Three</option>
									</select>
								</div>
								<div class="col-12 col-sm-4 col-lg-2">
									<input type="text" class="form-control"
										id="exampleFormControlInput1" placeholder="검색어">
								</div>
								<div class="col-12 col-sm-4 col-lg-2">
									<div style="text-align: left;">
										<button type="button" class="btn btn-outline-secondary">
											<a href="#"><img src="./search.svg"></a>
										</button>
										<button type="button" class="btn btn-outline-secondary">
											<a href="#"><img
												src="./arrow-clockwise.svg"></a>
										</button>
									</div>
								</div>
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
										<th scope="col">#</th>
										<th scope="col">Name</th>
										<th scope="col">Id</th>
										<th scope="col">Gender</th>
										<th scope="col">Phone</th>
										<th scope="col">Email</th>

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
													<td><a
														href="/myapp/durian/durianView?oymbSeq=<c:out value="${item.oymbSeq}"/>"><c:out
																value="${item.oymbName}" /></a></td>
													<td><c:out value="${item.oymbId}" /></td>
													<td><c:out value="${item.oymbGenderCd}" /></td>
													<td><c:out value="${item.oympNumber}" /></td>
													<td><c:out value="${item.oymeEmailFull}" /></td>

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
								<tfoot>
									<tr>
										<th scope="row"><button type="button"
												class="btn btn-danger btn-sm">
												<a href="#"><img
													src="/trash-fill.svg"></a>
											</button></th>
										<td colspan="5">
										<td><div style="text-align: right;">
												<button type="button" class="btn btn btn-light btn-sm">
													<a
														href="/myapp/durian/durianForm?oymbSeq=<c:out value="${item.oymbSeq}"/>">
														<img src=".person-plus-fill.svg">
													</a>
												</button>
												<button type="button" class="btn btn btn-light btn-sm">
													<a href="#"><img
														src="./info-circle.svg"></a>
												</button>
												<button type="button" class="btn btn btn-light btn-sm">
													<a href="#"><img src="gear.svg"></a>
												</button>
											</div></td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>

					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<li class="page-item"><a class="page-link"
								style="color: black;" href="#" aria-label="Previous"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
							<li class="page-item active" aria-current="page"><a
								class="page-link" style="color: black;" href="#">1</a></li>
							<li class="page-item"><a class="page-link"
								style="color: black;" href="#">2</a></li>
							<li class="page-item"><a class="page-link"
								style="color: black;" href="#">3</a></li>
							<li class="page-item"><a class="page-link"
								style="color: black;" href="#">4</a></li>
							<li class="page-item"><a class="page-link"
								style="color: black;" href="#">5</a></li>
							<li class="page-item"><a class="page-link"
								style="color: black;" href="#" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
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




</body>
</html>
