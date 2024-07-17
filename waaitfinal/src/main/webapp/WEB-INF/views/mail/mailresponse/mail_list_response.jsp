<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<c:if test="${not empty mails }">
	<ul class="users-list-wrapper media-list" id="mailListUlTag">
		<c:forEach var="mail" items="${mails }" >
			<%-- <c:set var="favoriteIconUrl" value="${mail.mailStatus eq '즐겨찾기' ? path + '/resources/assets/static/images/bootstrap-icons.svg#star-fill' : path + '/resources/assets/static/images/bootstrap-icons.svg#star'}"/> --%>
			<li
				class= <c:if test="${mail.mailReadStatus eq 'Y' }">"media mail-read"</c:if>
					   <c:if test="${mail.mailReadStatus ne 'Y' }">"media"</c:if>
				id="${mail.mailNo }" name="mailList">
				<div class="user-action">
					<div class="checkbox-con me-3">
						<div class="checkbox checkbox-shadow checkbox-sm">
							<!-- 메일 하나하나에 있는 체크박스 -->
							<input type="checkbox" name="checkMail" class='form-check-input' onclick="checkMail()" id="${mail.mailNo }"> 
						</div>
					</div>
					<button class="icon-button" onclick="addFavorite(event)">
					<span id="colorDecisionSpan" class=
						<c:if test="${mail.mailStatus eq '즐겨찾기' }" >
                                    	"favorite text-warning"
                                    </c:if>
						<c:if test="${mail.mailStatus != '즐겨찾기' }" >
                                    	"favorite"
                                    </c:if>
                            	>
						<svg class="bi" width="1.5em" height="1.5em" fill="currentColor">
                                        <use xlink:href=<c:if test="${mail.mailStatus eq '즐겨찾기' }" >
                                                  	"${path }/resources/assets/static/images/bootstrap-icons.svg#star-fill"
                                                  </c:if>
											<c:if test="${mail.mailStatus != '즐겨찾기' }" >
                                                  	"${path }/resources/assets/static/images/bootstrap-icons.svg#star"
                                               	</c:if> id="iconPath" 
                                  />
                                    </svg>
                                </span>
                                   </button>
				</div>
				<div class="pr-50">
					<div class="avatar">
						<img
							src="${path }/resources/assets/compiled/jpg/1.jpg"
							alt="avtar img holder">
					</div>
				</div>
				<div class="media-body" onclick="goMailDetail(event)">
					<div class="user-details">
						<div class="mail-items">
							<span class="list-group-item-text text-truncate">${mail.senderMailAddress } 보낸사람 : ${mail.senderName }</span>
						</div>
						<div class="mail-meta-item">
							<span class="float-right"> <span
								class="mail-date">${mail.mailWriteDate }</span>
							</span>
						</div>
					</div>
					<div class="mail-message">
						<p class="list-group-item-text truncate mb-0">
							${mail.mailTitle }</p>
						<div class="mail-meta-item">
							<span class="float-right"> <span
								class="bullet bullet-success bullet-sm"></span>
							</span>
						</div>
					</div>
				</div>
			</li>
		</c:forEach>
	</ul>
	<div id="bageParContainer">
		${pageBar }										
	</div>
</c:if>