<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<a href="/myapp/member/memberForm?oymbSeq=<c:out value="${item.oymbSeq}"/>">등록</a>

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
				href="/myapp/member/memberView?oymbSeq=<c:out value="${item.oymbSeq}"/>"><c:out
					value="${item.oymbName}" /></a> | <c:out value="${item.oymbId}" />
			<br>

		</c:forEach>
	</c:otherwise>
</c:choose>
<div class="row gx-2 gy-2">
	<div class="col-12 col-sm-4 col-lg-2">
		<select name="scOptionDate" id="scOptionDate"
			class="form-select">
			<option value="">::검색구분::
				<option value="1"
				<c:if test="${vo.scOptionDate eq 1 }">selected</c:if>>등록일</option>

	
	
<option value="2"
	<c:if test="${vo.scOptionDate eq 2 }">selected</c:if>>수정일</option>

	
	
<option value="3"
	<c:if test="${vo.scOptionDate eq 3 }">selected</c:if>>생년월일</option>



		
	
</select>
</div>
<div class="col-12 col-sm-4 col-lg-2">
	<input type="text" id="scDateStart" name="scDateStart"
	class="form-control" placeholder="시작"
	value="<c:out value="${vo.scValue}"/>">
</div>
<div class="col-12 col-sm-4 col-lg-2">
	<input type="text" id="scDateEnd" name="scDateEnd"
	class="form-control" placeholder="종료"
	value="<c:out value="${vo.scValue}"/>">
	</div>
</div>

<br>

<div class="row gx-2 gy-2">
	<div class="col-12 col-sm-4 col-lg-2">
		<select class="form-select" name="scOymbDelNy" id="scOymbDelNy">
			<option value="">::삭제여부::</option>
			<option value="1"
			<c:if test="${vo.scOymbDelNy eq 1 }">selected</c:if>>Y</option>
<option value="0"
<c:if test="${vo.scOymbDelNy eq 0 }">selected</c:if>>N</option>
	</select>

</div>

<div class="col-12 col-sm-4 col-lg-2">
	<select name="scOption" id="scOption" class="form-select">
		<option value="">::검색구분::</option>
		
	<option value="1"
		<c:if test="${vo.scOption eq 1 }">selected</c:if>>이름</option>
<option value="2"
	<c:if test="${vo.scOption eq 2 }">selected</c:if>>영문이름</option>
<option value="3"
	<c:if test="${vo.scOption eq 3 }">selected</c:if>>성별</option>
<option value="4"
	<c:if test="${vo.scOption eq 4 }">selected</c:if>>회원등급</option>

</select>
</div>
<div class="col-12 col-sm-4 col-lg-2">
	<input type="text" id="scValue" name="scValue"
	class="form-control" placeholder="검색어"
	value="<c:out value="${vo.scValue}"/>">
</div>


<div class="col-12 col-sm-4 col-lg-2">
	<div style="text-align: left;">
						<input type="submit" id="btnSubmit" name="search"
						class="btn btn-outline-dark" value="검색"> <a
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
</div>
	<br>
<hr>
<br>
	<div class="table-wrapper">
		<div class="container"
		style="
margin-left: 100px;
margin-right: 100px;
margin-top: 50px;
margin-bottom: 50px;">

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
					<th scope="col">이름(영문)</th>
					<th scope="col">아이디</th>
					<th scope="col">성별</th>
					<th scope="col">통신사</th>
					<th scope="col">연락처</th>
					<th scope="col">이메일</th>
					<th scope="col">삭제여부</th>

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
															id="">
													</div>
												</th>
												<th scope="row"><c:out value="${item.oymbSeq}"/></th>
												<td><c:out value="${item.oymbGradeCd}"/></td>
												<td><a href="javascript:goView(<c:out value="${item.oymbSeq}"/>);">
														<c:out value="${item.oymbName}" />
												</a></td>
												<td><c:out value="${item.oymbNameEng}" /></td>
												<td><c:out value="${item.oymbId}" /></td>
												<td><c:out value="${item.oymbGenderCd}" /></td>
												<td><c:out value="${item.oympTelecomCd}" /></td>
												<td><c:out value="${item.oympNumber}" /></td>
												<td><c:out value="${item.oymeEmailFull}" /></td>
												<td><c:choose>
														<c:when test="${item.oymbDelNy eq 0 }">O</c:when>
														<c:otherwise>X</c:otherwise>
													</c:choose></td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</tbody>
		</table>