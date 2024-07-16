<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="${path}/WEB-INF/views/common/header.jsp" />

<section class="section">
	<div class="card">
		<div class="card-header">
            <h2 class="card-title">
           	Work-Flow
			</h2>
        </div>
		<div class="card-body ">
			<div style="float: right;" class="mb-5">
				<div class="dropdown">
					<button class="btn icon icon-left btn-primary dropdown-toggle me-1" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit">
							<path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7">
							</path>
							<path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z">
							</path>
						</svg>
					Write
					</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton" style>
						<a class="dropdown-item" href="${path}/edoc/basicedoc?type=T01">내부보고서</a>
						<a class="dropdown-item" href="${path}/edoc/basicedoc?type=T02">지출결의서</a>
						<a class="dropdown-item" href="${path}/edoc/basicedoc?type=T03">출장신청서</a>
						<a class="dropdown-item" href="${path}/edoc/basicedoc?type=T04">휴가신청서</a>
					</div>
				</div>
			</div>
			<div>
	        	<table class="table" id="table1">
					<thead>
						<tr>
							<th>No</th>
							<th>Title</th>
							<th>Writer</th>
							<th>Submission Date</th>
							<th>Status</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty documents }">
							<c:forEach items="${documents }" var="d">
								<tr>
									<td>1</td>
									<td>${d.docTitle }</td>
									<td>${d.docWriter }</td>
									<td>${d.docDate }</td>
									<td>
										<span class="badge bg-light-primary">${d.approvalOne.appStat }</span>
									</td>
								</tr>
							</c:forEach>
						</c:if>
						
	                        
					</tbody>
				</table>
			</div>
		</div> 
	</div>    
	
</section>
<jsp:include page="${path}/WEB-INF/views/common/footer.jsp" />