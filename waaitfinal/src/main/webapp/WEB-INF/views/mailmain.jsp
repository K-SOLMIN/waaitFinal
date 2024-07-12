<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Email Application - Mazer Admin Dashboard</title>
    
    <link rel="shortcut icon" href="data:image/svg+xml,%3csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2033%2034'%20fill-rule='evenodd'%20stroke-linejoin='round'%20stroke-miterlimit='2'%20xmlns:v='https://vecta.io/nano'%3e%3cpath%20d='M3%2027.472c0%204.409%206.18%205.552%2013.5%205.552%207.281%200%2013.5-1.103%2013.5-5.513s-6.179-5.552-13.5-5.552c-7.281%200-13.5%201.103-13.5%205.513z'%20fill='%23435ebe'%20fill-rule='nonzero'/%3e%3ccircle%20cx='16.5'%20cy='8.8'%20r='8.8'%20fill='%2341bbdd'/%3e%3c/svg%3e" type="image/x-icon">
    <link rel="shortcut icon" href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACEAAAAiCAYAAADRcLDBAAAEs2lUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4KPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iWE1QIENvcmUgNS41LjAiPgogPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIgogICAgeG1sbnM6ZXhpZj0iaHR0cDovL25zLmFkb2JlLmNvbS9leGlmLzEuMC8iCiAgICB4bWxuczp0aWZmPSJodHRwOi8vbnMuYWRvYmUuY29tL3RpZmYvMS4wLyIKICAgIHhtbG5zOnBob3Rvc2hvcD0iaHR0cDovL25zLmFkb2JlLmNvbS9waG90b3Nob3AvMS4wLyIKICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIKICAgIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIgogICAgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZUV2ZW50IyIKICAgZXhpZjpQaXhlbFhEaW1lbnNpb249IjMzIgogICBleGlmOlBpeGVsWURpbWVuc2lvbj0iMzQiCiAgIGV4aWY6Q29sb3JTcGFjZT0iMSIKICAgdGlmZjpJbWFnZVdpZHRoPSIzMyIKICAgdGlmZjpJbWFnZUxlbmd0aD0iMzQiCiAgIHRpZmY6UmVzb2x1dGlvblVuaXQ9IjIiCiAgIHRpZmY6WFJlc29sdXRpb249Ijk2LjAiCiAgIHRpZmY6WVJlc29sdXRpb249Ijk2LjAiCiAgIHBob3Rvc2hvcDpDb2xvck1vZGU9IjMiCiAgIHBob3Rvc2hvcDpJQ0NQcm9maWxlPSJzUkdCIElFQzYxOTY2LTIuMSIKICAgeG1wOk1vZGlmeURhdGU9IjIwMjItMDMtMzFUMTA6NTA6MjMrMDI6MDAiCiAgIHhtcDpNZXRhZGF0YURhdGU9IjIwMjItMDMtMzFUMTA6NTA6MjMrMDI6MDAiPgogICA8eG1wTU06SGlzdG9yeT4KICAgIDxyZGY6U2VxPgogICAgIDxyZGY6bGkKICAgICAgc3RFdnQ6YWN0aW9uPSJwcm9kdWNlZCIKICAgICAgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWZmaW5pdHkgRGVzaWduZXIgMS4xMC4xIgogICAgICBzdEV2dDp3aGVuPSIyMDIyLTAzLTMxVDEwOjUwOjIzKzAyOjAwIi8+CiAgICA8L3JkZjpTZXE+CiAgIDwveG1wTU06SGlzdG9yeT4KICA8L3JkZjpEZXNjcmlwdGlvbj4KIDwvcmRmOlJERj4KPC94OnhtcG1ldGE+Cjw/eHBhY2tldCBlbmQ9InIiPz5V57uAAAABgmlDQ1BzUkdCIElFQzYxOTY2LTIuMQAAKJF1kc8rRFEUxz9maORHo1hYKC9hISNGTWwsRn4VFmOUX5uZZ36oeTOv954kW2WrKLHxa8FfwFZZK0WkZClrYoOe87ypmWTO7dzzud97z+nec8ETzaiaWd4NWtYyIiNhZWZ2TvE946WZSjqoj6mmPjE1HKWkfdxR5sSbgFOr9Ll/rXoxYapQVik8oOqGJTwqPL5i6Q5vCzeo6dii8KlwpyEXFL519LjLLw6nXP5y2IhGBsFTJ6ykijhexGra0ITl5bRqmWU1fx/nJTWJ7PSUxBbxJkwijBBGYYwhBgnRQ7/MIQIE6ZIVJfK7f/MnyUmuKrPOKgZLpEhj0SnqslRPSEyKnpCRYdXp/9++msneoFu9JgwVT7b91ga+LfjetO3PQ9v+PgLvI1xkC/m5A+h7F32zoLXug38dzi4LWnwHzjeg8UGPGbFfySvuSSbh9QRqZ6H+Gqrm3Z7l9zm+h+iafNUV7O5Bu5z3L/wAdthn7QIme0YAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAJTSURBVFiF7Zi9axRBGIefEw2IdxFBRQsLWUTBaywSK4ubdSGVIY1Y6HZql8ZKCGIqwX/AYLmCgVQKfiDn7jZeEQMWfsSAHAiKqPiB5mIgELWYOW5vzc3O7niHhT/YZvY37/swM/vOzJbIqVq9uQ04CYwCI8AhYAlYAB4Dc7HnrOSJWcoJcBS4ARzQ2F4BZ2LPmTeNuykHwEWgkQGAet9QfiMZjUSt3hwD7psGTWgs9pwH1hC1enMYeA7sKwDxBqjGnvNdZzKZjqmCAKh+U1kmEwi3IEBbIsugnY5avTkEtIAtFhBrQCX2nLVehqyRqFoCAAwBh3WGLAhbgCRIYYinwLolwLqKUwwi9pxV4KUlxKKKUwxC6ZElRCPLYAJxGfhSEOCz6m8HEXvOB2CyIMSk6m8HoXQTmMkJcA2YNTHm3congOvATo3tE3A29pxbpnFzQSiQPcB55IFmFNgFfEQeahaAGZMpsIJIAZWAHcDX2HN+2cT6r39GxmvC9aPNwH5gO1BOPFuBVWAZue0vA9+A12EgjPadnhCuH1WAE8ivYAQ4ohKaagV4gvxi5oG7YSA2vApsCOH60WngKrA3R9IsvQUuhIGY00K4flQG7gHH/mLytB4C42EgfrQb0mV7us8AAMeBS8mGNMR4nwHamtBB7B4QRNdaS0M8GxDEog7iyoAguvJ0QYSBuAOcAt71Kfl7wA8DcTvZ2KtOlJEr+ByyQtqqhTyHTIeB+ONeqi3brh+VgIN0fohUgWGggizZFTplu12yW8iy/YLOGWMpDMTPXnl+Az9vj2HERYqPAAAAAElFTkSuQmCC" type="image/png">
    

  <link rel="stylesheet" crossorigin href="${path }/resources/assets/compiled/css/application-email.css">
  <link rel="stylesheet" crossorigin href="${path }/resources/assets/compiled/css/app.css">
  <link rel="stylesheet" crossorigin href="${path }/resources/assets/compiled/css/app-dark.css">
</head>

<body>
    <script src="${path }/resources/assets/static/js/initTheme.js"></script>
	<div id="app">
		<div id="main">
			<header class="mb-3">
				<a href="#" class="burger-btn d-block d-xl-none"> <i
					class="bi bi-justify fs-3"></i>
				</a>
			</header>

			<div class="page-heading email-application overflow-hidden">
				<div class="page-title">
					<div class="row">
						<div class="col-12 col-md-6 order-md-1 order-last">
							<h3>Email Application</h3>
							<p class="text-subtitle text-muted">A full inbox-ui for you
								to implement messaging.</p>
						</div>
						<div class="col-12 col-md-6 order-md-2 order-first">
							<nav aria-label="breadcrumb"
								class="breadcrumb-header float-start float-lg-end">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
									<li class="breadcrumb-item active" aria-current="page">Email
										Application</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
				<section class="section content-area-wrapper">
					<div class="sidebar-left">
						<div class="sidebar">
							<div class="sidebar-content email-app-sidebar d-flex">
								<!-- sidebar close icon -->
								<span class="sidebar-close-icon"> <i class="bi bi-x"></i>
								</span>
								<!-- sidebar close icon -->
								<div class="email-app-menu">
									<div class="form-group form-group-compose">
										<!-- compose button  -->
										<button type="button"
											class="btn btn-primary btn-block my-4 compose-btn">
											<i class="bi bi-plus"></i> Compose
										</button>
									</div>
									<div class="sidebar-menu-list ps">
										<!-- sidebar menu  -->
										<div class="list-group list-group-messages">
											<a href="#" class="list-group-item pt-0 active"
												id="-menu">
												<div class="fonticon-wrap d-inline me-3">

													<svg class="bi" width="1.5em" height="1.5em"
														fill="currentColor">
                                            <use
															xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#envelope" />
                                        </svg>
												</div>  <span
												class="badge bg-light-primary badge-pill badge-round float-right mt-50">5</span>
											</a> <a href="#" class="list-group-item">
												<div class="fonticon-wrap d-inline me-3">

													<svg class="bi" width="1.5em" height="1.5em"
														fill="currentColor">
                                            <use
															xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#archive" />
                                        </svg>
												</div> Sent
											</a> <a href="#" class="list-group-item">
												<div class="fonticon-wrap d-inline me-3">

													<svg class="bi" width="1.5em" height="1.5em"
														fill="currentColor">
                                            <use
															xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#pencil" />
                                        </svg>
												</div> Draft
											</a> <a href="#" class="list-group-item">
												<div class="fonticon-wrap d-inline me-3">

													<svg class="bi" width="1.5em" height="1.5em"
														fill="currentColor">
                                            <use
															xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#star" />
                                        </svg>
												</div> Starred
											</a> <a href="#" class="list-group-item">
												<div class="fonticon-wrap d-inline me-3">

													<svg class="bi" width="1.5em" height="1.5em"
														fill="currentColor">
                                            <use
															xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#info-circle" />
                                        </svg>
												</div> Spam <span
												class="badge bg-light-danger badge-pill badge-round float-right mt-50">3</span>
											</a> <a href="#" class="list-group-item">
												<div class="fonticon-wrap d-inline me-3">
													<svg class="bi" width="1.5em" height="1.5em"
														fill="currentColor">
                                            <use
															xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#trash" />
                                        </svg>
												</div> Trash
											</a>
										</div>
										<!-- sidebar menu  end-->

										<!-- sidebar label start -->
										<label class="sidebar-label">Labels</label>
										<div class="list-group list-group-labels">
											<a href="#"
												class="list-group-item d-flex justify-content-between align-items-center">
												Product <span class="bullet bullet-success bullet-sm"></span>
											</a> <a href="#"
												class="list-group-item d-flex justify-content-between align-items-center">
												Work <span class="bullet bullet-primary bullet-sm"></span>
											</a> <a href="#"
												class="list-group-item d-flex justify-content-between align-items-center">
												Misc <span class="bullet bullet-warning bullet-sm"></span>
											</a> <a href="#"
												class="list-group-item d-flex justify-content-between align-items-center">
												Family <span class="bullet bullet-danger bullet-sm"></span>
											</a> <a href="#"
												class="list-group-item d-flex justify-content-between align-items-center">
												Design <span class="bullet bullet-info bullet-sm"></span>
											</a>
										</div>
										<!-- sidebar label end -->
										<div class="ps__rail-x" style="left: 0px; bottom: 0px;">
											<div class="ps__thumb-x" tabindex="0"
												style="left: 0px; width: 0px;"></div>
										</div>
										<div class="ps__rail-y" style="top: 0px; right: 0px;">
											<div class="ps__thumb-y" tabindex="0"
												style="top: 0px; height: 0px;"></div>
										</div>
									</div>
								</div>
							</div>
							<!-- User new mail right area -->
							<div class="compose-new-mail-sidebar ps">
								<div class="card shadow-none quill-wrapper p-0">
									<div class="card-header">
										<h3 class="card-title" id="emailCompose">New Message</h3>
										<button type="button"
											class="close close-icon email-compose-new-close-btn">
											<i class="bi bi-x"></i>
										</button>
									</div>
									<!-- form start -->
									<form action="#" id="compose-form">
										<div class="card-content">
											<div class="card-body pt-0">
												<div class="form-group pb-50">
													<label for="emailfrom">from</label> <input type="text"
														id="emailfrom" class="form-control"
														placeholder="user@example.com" disabled="">
												</div>
												<div class="form-label-group">
													<input type="email" id="emailTo" class="form-control"
														placeholder="To" required=""> <label for="emailTo">To</label>
												</div>
												<div class="form-label-group">
													<input type="text" id="emailSubject" class="form-control"
														placeholder="Subject"> <label for="emailSubject">Subject</label>
												</div>
												<div class="form-label-group">
													<input type="text" id="emailCC" class="form-control"
														placeholder="CC"> <label for="emailCC">CC</label>
												</div>
												<div class="form-label-group">
													<input type="text" id="emailBCC" class="form-control"
														placeholder="BCC"> <label for="emailBCC">BCC</label>
												</div>
												<!-- Compose mail Quill editor -->
												<div class="snow-container border rounded p-50">
													<div class="compose-editor mx-75 ql-container ql-snow">
														<div class="ql-editor ql-blank" data-gramm="false"
															data-placeholder="Type something....."
															contenteditable="true">
															<p>
																<br>
															</p>
														</div>
														<div class="ql-clipboard" tabindex="-1"
															contenteditable="true"></div>
														<div class="ql-tooltip ql-hidden">
															<a class="ql-preview" target="_blank" href="about:blank"></a><input
																type="text" data-formula="e=mc^2"
																data-link="https://quilljs.com" data-video="Embed URL"><a
																class="ql-action"></a><a class="ql-remove"></a>
														</div>
													</div>
													<div class="d-flex justify-content-end">
														<div class="compose-quill-toolbar pb-0 ql-toolbar ql-snow">
															<span class="ql-formats me-0">
																<button class="ql-bold" type="button">
																	<svg viewBox="0 0 18 18">
                                                            <path
																			class="ql-stroke"
																			d="M5,4H9.5A2.5,2.5,0,0,1,12,6.5v0A2.5,2.5,0,0,1,9.5,9H5A0,0,0,0,1,5,9V4A0,0,0,0,1,5,4Z">
                                                            </path>
                                                            <path
																			class="ql-stroke"
																			d="M5,9h5.5A2.5,2.5,0,0,1,13,11.5v0A2.5,2.5,0,0,1,10.5,14H5a0,0,0,0,1,0,0V9A0,0,0,0,1,5,9Z">
                                                            </path>
                                                        </svg>
																</button>
																<button class="ql-italic" type="button">
																	<svg viewBox="0 0 18 18">
                                                            <line
																			class="ql-stroke" x1="7" x2="13" y1="4" y2="4"></line>
                                                            <line
																			class="ql-stroke" x1="5" x2="11" y1="14" y2="14">
                                                            </line>
                                                            <line
																			class="ql-stroke" x1="8" x2="10" y1="14" y2="4">
                                                            </line>
                                                        </svg>
																</button>
																<button class="ql-underline" type="button">
																	<svg viewBox="0 0 18 18">
                                                            <path
																			class="ql-stroke"
																			d="M5,3V9a4.012,4.012,0,0,0,4,4H9a4.012,4.012,0,0,0,4-4V3">
                                                            </path>
                                                            <rect
																			class="ql-fill" height="1" rx="0.5" ry="0.5"
																			width="12" x="3" y="15"></rect>
                                                        </svg>
																</button>
																<button class="ql-link" type="button">
																	<svg viewBox="0 0 18 18">
                                                            <line
																			class="ql-stroke" x1="7" x2="11" y1="7" y2="11">
                                                            </line>
                                                            <path
																			class="ql-even ql-stroke"
																			d="M8.9,4.577a3.476,3.476,0,0,1,.36,4.679A3.476,3.476,0,0,1,4.577,8.9C3.185,7.5,2.035,6.4,4.217,4.217S7.5,3.185,8.9,4.577Z">
                                                            </path>
                                                            <path
																			class="ql-even ql-stroke"
																			d="M13.423,9.1a3.476,3.476,0,0,0-4.679-.36,3.476,3.476,0,0,0,.36,4.679c1.392,1.392,2.5,2.542,4.679.36S14.815,10.5,13.423,9.1Z">
                                                            </path>
                                                        </svg>
																</button>
																<button class="ql-image" type="button">
																	<svg viewBox="0 0 18 18">
                                                            <rect
																			class="ql-stroke" height="10" width="12" x="3" y="4">
                                                            </rect>
                                                            <circle
																			class="ql-fill" cx="6" cy="7" r="1"></circle>
                                                            <polyline
																			class="ql-even ql-fill"
																			points="5 12 5 11 7 9 8 10 11 7 13 9 13 12 5 12">
                                                            </polyline>
                                                        </svg>
																</button>
															</span>
														</div>
													</div>
												</div>
												<div class="form-group mt-2">
													<div class="custom-file">
														<input type="file" class="custom-file-input"
															id="emailAttach"> <label
															class="custom-file-label" for="emailAttach">Attach
															File</label>
													</div>
												</div>
											</div>
										</div>
										<div class="card-footer d-flex justify-content-end pt-0">
											<button type="reset"
												class="btn btn-light-secondary cancel-btn me-1">
												<i class="bi bi-x me-3"></i> <span
													class="d-sm-inline d-none">Cancel</span>
											</button>
											<button type="submit" class="btn-send btn btn-primary">
												<i class="bi bi-send me-3"></i> <span
													class="d-sm-inline d-none">Send</span>
											</button>
										</div>
									</form>
									<!-- form start end-->
								</div>
								<div class="ps__rail-x" style="left: 0px; bottom: 0px;">
									<div class="ps__thumb-x" tabindex="0"
										style="left: 0px; width: 0px;"></div>
								</div>
								<div class="ps__rail-y" style="top: 0px; right: 0px;">
									<div class="ps__thumb-y" tabindex="0"
										style="top: 0px; height: 0px;"></div>
								</div>
							</div>
							<!--/ User Chat profile right area -->
						</div>
					</div>
					<div class="content-right">
						<div class="content-overlay"></div>
						<div class="content-wrapper">
							<div class="content-header row"></div>
							<div class="content-body">
								<!-- email app overlay -->
								<div class="app-content-overlay"></div>
								<div class="email-app-area">
									<!-- Email list Area -->
									<div class="email-app-list-wrapper">
										<div class="email-app-list">
											<div class="email-action">
												<!-- action left start here -->
												<div class="action-left d-flex align-items-center">
													<!-- select All checkbox -->
													<div
														class="checkbox checkbox-shadow checkbox-sm selectAll me-3">
														<input type="checkbox" id="checkboxsmall"
															class='form-check-input'> <label
															for="checkboxsmall"></label>
													</div>
													<!-- delete unread dropdown -->
													<ul class="list-inline m-0 d-flex">
														<li class="list-inline-item mail-delete">
															<button type="button" class="btn btn-icon action-icon"
																data-toggle="tooltip">
																<span class="fonticon-wrap"> <svg class="bi"
																		width="1.5em" height="1.5em" fill="currentColor">
                                                            <use
																			xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#trash" />
                                                        </svg>
																</span>
															</button>
														</li>
														<li class="list-inline-item mail-unread">
															<button type="button" class="btn btn-icon action-icon">
																<span class="fonticon-wrap d-inline"> <svg
																		class="bi" width="1.5em" height="1.5em"
																		fill="currentColor">
                                                            <use
																			xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#envelope" />
                                                        </svg>
																</span>
															</button>
														</li>
														<li class="list-inline-item">
															<div class="dropdown">
																<button type="button"
																	class="dropdown-toggle btn btn-icon action-icon"
																	id="folder" data-toggle="dropdown" aria-haspopup="true"
																	aria-expanded="false">
																	<span class="fonticon-wrap"> <svg class="bi"
																			width="1.5em" height="1.5em" fill="currentColor">
                                                                <use
																				xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#folder" />
                                                            </svg>
																	</span>
																</button>
																<div class="dropdown-menu dropdown-menu-right"
																	aria-labelledby="folder">
																	<a class="dropdown-item" href="#"><i
																		class="bi bi-edit"></i> Draft</a> <a class="dropdown-item"
																		href="#"><i class="bi bi-info-circle"></i>Spam</a> <a
																		class="dropdown-item" href="#"><i
																		class="bi bi-trash"></i>Trash</a>
																</div>
															</div>
														</li>
														<li class="list-inline-item">
															<div class="dropdown">
																<button type="button"
																	class="btn btn-icon dropdown-toggle action-icon"
																	id="tag" data-toggle="dropdown" aria-haspopup="true"
																	aria-expanded="false">
																	<span class="fonticon-wrap"> <svg class="bi"
																			width="1.5em" height="1.5em" fill="currentColor">
                                                                <use
																				xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#tag" />
                                                            </svg>
																	</span>
																</button>
																<div class="dropdown-menu dropdown-menu-right"
																	aria-labelledby="tag">
																	<a href="#" class="dropdown-item align-items-center">
																		<span class="bullet bullet-success bullet-sm"></span>
																		<span>Product</span>
																	</a> <a href="#" class="dropdown-item align-items-center">
																		<span class="bullet bullet-primary bullet-sm"></span>
																		<span>Work</span>
																	</a> <a href="#" class="dropdown-item align-items-center">
																		<span class="bullet bullet-warning bullet-sm"></span>
																		<span>Misc</span>
																	</a> <a href="#" class="dropdown-item align-items-center">
																		<span class="bullet bullet-danger bullet-sm"></span> <span>Family</span>
																	</a> <a href="#" class="dropdown-item align-items-center">
																		<span class="bullet bullet-info bullet-sm"></span> <span>
																			Design</span>
																	</a>
																</div>
															</div>
														</li>
													</ul>
												</div>
												<!-- action left end here -->

												<!-- action right start here -->
												<div
													class="action-right d-flex flex-grow-1 align-items-center justify-content-around">
													<div class="sidebar-toggle d-block d-lg-none">
														<button class="btn btn-sm btn-outline-primary">
															<i class="bi bi-list fs-5"></i>
														</button>
													</div>
													<!-- search bar  -->
													<div class="email-fixed-search flex-grow-1">

														<div
															class="form-group position-relative  mb-0 has-icon-left">
															<input type="text" class="form-control"
																placeholder="Search email..">
															<div class="form-control-icon">
																<svg class="bi" width="1.5em" height="1.5em"
																	fill="currentColor">
                                                        <use
																		xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#search" />
                                                    </svg>
															</div>
														</div>
													</div>
													<!-- pagination and page count -->
												</div>
											</div>
											<!-- / action right -->
<script>
	const goMailDetail = (e) => {
		const mailNo = e.currentTarget.id;
		location.assign("${path }/mail/maildetail.do?mailNo=" + mailNo);
	}
</script>
											<!-- email user list start -->
											<div class="email-user-list list-group ps ps--active-y">
												<ul class="users-list-wrapper media-list">
													<c:if test="${not empty mails }">
														<c:forEach var="mail" items="${mails }" >
															<%-- <c:set var="favoriteIconUrl" value="${mail.mailStatus eq '즐겨찾기' ? path + '/resources/assets/static/images/bootstrap-icons.svg#star-fill' : path + '/resources/assets/static/images/bootstrap-icons.svg#star'}"/> --%>
															<li
																class=<c:if test="${mail.mailReadStatus eq 'Y' }">"media mail-read"</c:if>
																<c:if test="${mail.mailReadStatus ne 'Y' }">"media"</c:if>
																id="${mail.mailNo }" onclick="goMailDetail(event)">
																<div class="user-action">
																	<div class="checkbox-con me-3">
																		<div class="checkbox checkbox-shadow checkbox-sm">
																			<input type="checkbox" id="checkboxsmall1"
																				class='form-check-input'> <label
																				for="checkboxsmall1"></label>
																		</div>
																	</div>
																	<span
																		class=<c:if test="${mail.mailStatus eq '즐겨찾기' }" >
	                                                    			"favorite text-warning"
	                                                            </c:if>
																		<c:if test="${mail.mailStatus != '즐겨찾기' }" >
	                                                            	"favorite"
	                                                            </c:if>>
	                                                            
																		<svg class="bi" width="1.5em" height="1.5em"
																			fill="currentColor">
	                                                        <use
																				xlink:href=<c:if test="${mail.mailStatus eq '즐겨찾기' }" >
	                                                            				"${path }/resources/assets/static/images/bootstrap-icons.svg#star-fill"
	                                                            			</c:if>
																				<c:if test="${mail.mailStatus != '즐겨찾기' }" >
	                                                            				"${path }/resources/assets/static/images/bootstrap-icons.svg#star"
	                                                            			</c:if> />
	                                                    </svg>
																	</span>
																</div>
																<div class="pr-50">
																	<div class="avatar">
																		<img
																			src="${path }/resources/assets/compiled/jpg/1.jpg"
																			alt="avtar img holder">
																	</div>
																</div>
																<div class="media-body">
																	<div class="user-details">
																		<div class="mail-items">
																			<span class="list-group-item-text text-truncate">${mail.senderMailAddress }
																				${mail.senderName }</span>
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
													</c:if>

													<li class="media mail-read">
														<div class="user-action">
															<div class="checkbox-con me-3">
																<div class="checkbox checkbox-shadow checkbox-sm">
																	<input type="checkbox" id="checkboxsmall12"
																		class='form-check-input'> <label
																		for="checkboxsmall12"></label>
																</div>
															</div>
															<span class="favorite"> <svg class="bi"
																	width="1.5em" height="1.5em" fill="currentColor">
                                                        <use
																		xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#star" />
                                                    </svg>
															</span>
														</div>
														<div class="pr-50">
															<div class="avatar">
																<img class="rounded-circle"
																	src="${path }/resources/assets/compiled/jpg/3.jpg"
																	alt="Generic placeholder image">
															</div>
														</div>
														<div class="media-body">
															<div class="user-details">
																<div class="mail-items">
																	<span class="list-group-item-text text-truncate mb-0">
																		Know Yourself Your Inner Power </span>
																</div>
																<div class="mail-meta-item">
																	<span class="float-right"> <span
																		class="mail-date">21 Mar</span>
																	</span>
																</div>
															</div>
															<div class="mail-message">
																<p class="list-group-item-text mb-0 truncate">Hope
																	your like it, or feel free to comment, feedback or
																	rebound !</p>
																<div class="mail-meta-item">
																	<span class="float-right"> <span
																		class="bullet bullet-warning bullet-sm"></span>
																	</span>
																</div>
															</div>
														</div>
													</li>
												</ul>
												<!-- email user list end -->

												<!-- no result when nothing to show on list -->
												<c:if test="${empty mails }">
													<div class="no-results">
														<i class="bi bi-error-circle font-large-2"></i>
														<h5>No Items Found</h5>
													</div>
													<div class="ps__rail-x" style="left: 0px; bottom: 0px;">
														<div class="ps__thumb-x" tabindex="0"
															style="left: 0px; width: 0px;"></div>
													</div>
													<div class="ps__rail-y"
														style="top: 0px; height: 733px; right: 0px;">
														<div class="ps__thumb-y" tabindex="0"
															style="top: 0px; height: 567px;"></div>
													</div>
												</c:if>
											</div>
										</div>
									</div>
									<!--/ Email list Area -->

									<!-- Detailed Email View -->
									<div class="email-app-details">
										<!-- email detail view header -->
										<div class="email-detail-header">
											<div class="email-header-left d-flex align-items-center mb-1">
												<span class="go-back me-3"> <span
													class="fonticon-wrap d-inline"> <i
														class="fas fa-chevron-left"></i>
												</span>
												</span>
												<h5 class="email-detail-title font-weight-normal mb-0">
													Advertising Internet Online <span
														class="badge bg-light-danger badge-pill ms-1">PRODUCT</span>
												</h5>
											</div>
											<div class="email-header-right mb-1 ms-2 pl-1">
												<ul class="list-inline m-0">
													<li class="list-inline-item">
														<button class="btn btn-icon action-icon">
															<span class="fonticon-wrap"> <i
																class="fas fa-trash"></i>
															</span>
														</button>
													</li>
													<li class="list-inline-item">
														<button class="btn btn-icon action-icon">
															<span class="fonticon-wrap"> <svg class="bi"
																	width="1.5em" height="1.5em" fill="currentColor">
                                                        <use
																		xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#envelope" />
                                                    </svg>
															</span>
														</button>
													</li>
													<li class="list-inline-item">
														<div class="dropdown">
															<button class="btn btn-icon dropdown-toggle action-icon"
																id="open-mail-menu" data-toggle="dropdown"
																aria-haspopup="true" aria-expanded="false">
																<span class="fonticon-wrap"> <i
																	class="fas fa-folder"></i>
																</span>
															</button>
															<div class="dropdown-menu dropdown-menu-right"
																aria-labelledby="open-mail-menu">
																<a class="dropdown-item" href="#"><i
																	class="bi bi-edit"></i> Draft</a> <a class="dropdown-item"
																	href="#"><i class="bi bi-info-circle"></i> Spam</a> <a
																	class="dropdown-item" href="#"><i
																	class="bi bi-trash"></i> Trash</a>
															</div>
														</div>
													</li>
													<li class="list-inline-item">
														<div class="dropdown">
															<button class="btn btn-icon dropdown-toggle action-icon"
																id="open-mail-tag" data-toggle="dropdown"
																aria-haspopup="true" aria-expanded="false">
																<span class="fonticon-wrap"> <i
																	class="fas fa-tag"></i>
																</span>
															</button>
															<div class="dropdown-menu dropdown-menu-right"
																aria-labelledby="open-mail-tag">
																<a href="#" class="dropdown-item align-items-center">
																	<span class="bullet bullet-success bullet-sm"></span>
																	Product
																</a> <a href="#" class="dropdown-item align-items-center">
																	<span class="bullet bullet-primary bullet-sm"></span>
																	Work
																</a> <a href="#" class="dropdown-item align-items-center">
																	<span class="bullet bullet-warning bullet-sm"></span>
																	Misc
																</a> <a href="#" class="dropdown-item align-items-center">
																	<span class="bullet bullet-danger bullet-sm"></span>
																	Family
																</a> <a href="#" class="dropdown-item align-items-center">
																	<span class="bullet bullet-info bullet-sm"></span>
																	Design
																</a>
															</div>
														</div>
													</li>
													<li class="list-inline-item"><span
														class="no-of-list d-none d-sm-block ms-1">1-10 of
															653</span></li>
													<li class="list-inline-item">
														<button
															class="btn btn-icon email-pagination-prev action-icon">
															<i class="bi bi-chevron-left"></i>
														</button>
													</li>
													<li class="list-inline-item">
														<button
															class="btn btn-icon email-pagination-next action-icon">
															<i class="bi bi-chevron-right"></i>
														</button>
													</li>
												</ul>
											</div>
										</div>
										<!-- email detail view header end-->
										<div class="email-scroll-area ps ps--active-y">
											<!-- email details  -->
											<div class="row">
												<div class="col-12">
													<div class="collapsible email-detail-head">
														<div class="card collapse-header" role="tablist">
															<div id="headingCollapse5"
																class="card-header d-flex justify-content-between align-items-center"
																data-toggle="collapse" role="tab"
																data-target="#collapse5" aria-expanded="false"
																aria-controls="collapse5">
																<div class="collapse-title media">
																	<div class="pr-1">
																		<div class="avatar me-3">
																			<img
																				src="${path }/resources/assets/compiled/jpg/8.jpg"
																				alt="avtar img holder" width="30" height="30">
																		</div>
																	</div>
																	<div class="media-body mt-25">
																		<span class="text-primary">Elnora Reese</span> <span
																			class="d-sm-inline d-none">
																			&lt;elnora@gmail.com&gt;</span> <small
																			class="text-muted d-block">to Lois Jimenez</small>
																	</div>
																</div>
																<div
																	class="information d-sm-flex d-none align-items-center">
																	<small class="text-muted me-3">15 Jul 2019,
																		10:30</small> <span class="favorite"> <i
																		class="bi bi-star me-3"></i>
																	</span>
																	<div class="dropdown">
																		<a href="#" class="dropdown-toggle"
																			id="fisrt-open-submenu" data-toggle="dropdown"
																			aria-haspopup="true" aria-expanded="false"> <i
																			class="bi bi-dots-vertical-rounded me-0"></i>
																		</a>
																		<div class="dropdown-menu dropdown-menu-right"
																			aria-labelledby="fisrt-open-submenu">
																			<a href="#" class="dropdown-item mail-reply"> <i
																				class="bi bi-share"></i> Reply
																			</a> <a href="#" class="dropdown-item"> <i
																				class="bi bi-redo"></i> Forward
																			</a> <a href="#" class="dropdown-item"> <i
																				class="bi bi-info-circle"></i> Report Spam
																			</a>
																		</div>
																	</div>
																</div>
															</div>
															<div id="collapse5" role="tabpanel"
																aria-labelledby="headingCollapse5" class="collapse">
																<div class="card-content">
																	<div class="card-body py-1">
																		<p class="text-bold-500">Greetings!</p>
																		<p>Lorem Ipsum is simply dummy text of the
																			printing and typesetting industry. Lorem Ipsum has
																			been the industry's standard dummy text ever since
																			the 1500s, when an unknown printer took a galley of
																			type and scrambled it to make a type specimen book.</p>
																		<p>It has survived not only five centuries, but
																			also the leap into electronic typesetting, remaining
																			essentially unchanged.</p>
																		<p class="mb-0">Sincerely yours,</p>
																		<p class="text-bold-500">Envato Design Team</p>
																	</div>
																	<div class="card-footer pt-0 border-top">
																		<label class="sidebar-label">Attached Files</label>
																		<ul class="list-unstyled mb-0">
																			<li class="cursor-pointer pb-25"><img
																				src="../../../app-assets/static/images/icon/psd.png"
																				alt="psd.png" height="30"> <small
																				class="text-muted ms-1 attchement-text">uikit-design.psd</small>
																			</li>
																			<li class="cursor-pointer"><img
																				src="../../../app-assets/static/images/icon/sketch.png"
																				alt="sketch.png" height="30"> <small
																				class="text-muted ms-1 attchement-text">uikit-design.sketch</small>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
														<div class="card collapse-header" role="tablist">
															<div id="headingCollapse6"
																class="card-header d-flex justify-content-between align-items-center"
																data-toggle="collapse" role="tab"
																data-target="#collapse6" aria-expanded="false"
																aria-controls="collapse6">
																<div class="collapse-title media">
																	<div class="pr-1">
																		<div class="avatar me-3">
																			<img
																				src="${path }/resources/assets/static/images/faces/19.jpg"
																				alt="avtar img holder" width="30" height="30">
																		</div>
																	</div>
																	<div class="media-body mt-25">
																		<span class="text-primary">Lois Jimenez </span> <span
																			class="d-sm-inline d-none">
																			&lt;lois_jim@gmail.com&gt;</span> <small
																			class="text-muted d-block">to Elnora Reese</small>
																	</div>
																</div>
																<div
																	class="information d-sm-flex d-none align-items-center">
																	<i class="bi bi-paperclip me-3"></i> <small
																		class="text-muted me-3">10 Jul 2019, 10:30</small> <span
																		class="favorite"> <i class="bi bi-star me-3"></i>
																	</span>
																	<div class="dropdown">
																		<a href="#" class="dropdown-toggle"
																			id="second-open-submenu" data-toggle="dropdown"
																			aria-haspopup="true" aria-expanded="false"> <i
																			class="bi bi-dots-vertical-rounded me-0"></i>
																		</a>
																		<div class="dropdown-menu dropdown-menu-right"
																			aria-labelledby="second-open-submenu">
																			<a href="#" class="dropdown-item mail-reply"> <i
																				class="bi bi-share"></i> Reply
																			</a> <a href="#" class="dropdown-item"> <i
																				class="bi bi-redo"></i> Forward
																			</a> <a href="#" class="dropdown-item"> <i
																				class="bi bi-info-circle"></i> Report Spam
																			</a>
																		</div>
																	</div>
																</div>
															</div>
															<div id="collapse6" role="tabpanel"
																aria-labelledby="headingCollapse7" class="collapse">
																<div class="card-content">
																	<div class="card-body py-1">
																		<p class="text-bold-500">Greetings!</p>
																		<p>Successful businesses have many things in
																			common, today we’ll look at the big ‘R’of recognition
																			and how a digital advertising network may help.
																			Recognition can be illustrated by two individuals
																			entering a crowded room at a party. Both walk to the
																			far side of the room, one of them slips through the
																			crowd easily and unnoticed as they reach the far
																			side.</p>
																		<p>Gummies sweet tart marzipan lemon drops donut
																			pie. Chocolate cake gingerbread jujubes gingerbread
																			chocolate cake tart bear claw apple pie jelly-o.
																			Gummies biscuit brownie marshmallow oat cake tootsie
																			roll bear claw topping. Oat cake sesame snaps icing
																			cupcake wafer tiramisu jelly-o sugar plum carrot cake
																		</p>
																		<p class="mb-0">Sincerely yours,</p>
																		<p class="text-bold-500">Envato Design Team</p>
																	</div>
																	<div class="card-footer pt-0 border-top">
																		<label class="sidebar-label">Attached Files</label>
																		<ul class="list-unstyled mb-0">
																			<li class="cursor-pointer pb-25"><img
																				src="../../../app-assets/static/images/icon/psd.png"
																				alt="psd.png" height="30"> <small
																				class="text-muted ms-1 attchement-text">uikit-design.psd</small>
																			</li>
																			<li class="cursor-pointer"><img
																				src="../../../app-assets/static/images/icon/sketch.png"
																				alt="sketch.png" height="30"> <small
																				class="text-muted ms-1 attchement-text">uikit-design.sketch</small>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
														<div class="card collapse-header open" role="tablist">
															<div id="headingCollapse7"
																class="card-header d-flex justify-content-between align-items-center"
																data-toggle="collapse" role="tab"
																data-target="#collapse7" aria-expanded="false"
																aria-controls="collapse7">
																<div class="collapse-title media">
																	<div class="pr-1">
																		<div class="avatar me-3">
																			<img
																				src="${path }/resources/assets/compiled/jpg/8.jpg"
																				alt="avtar img holder" width="30" height="30">
																		</div>
																	</div>
																	<div class="media-body mt-25">
																		<span class="text-primary">Elnora Reese</span> <span
																			class="d-sm-inline d-none">&lt;elnora@gmail.com&gt;</span>
																		<small class="text-muted d-block">to Lois
																			Jimenez</small>
																	</div>
																</div>
																<div
																	class="information d-sm-flex d-none align-items-center">
																	<small class="text-muted me-3">05 Jul 2019,
																		10:30</small> <span class="favorite text-warning"> <svg
																			class="bi" width="1.5em" height="1.5em"
																			fill="currentColor">
                                                                <use
																				xlink:href="${path }/resources/assets/static/images/bootstrap-icons.svg#star-fill" />
                                                            </svg>
																	</span>
																	<div class="dropdown">
																		<a href="#" class="dropdown-toggle"
																			id="third-open-menu" data-toggle="dropdown"
																			aria-haspopup="true" aria-expanded="false"> <i
																			class="bi bi-dots-vertical-rounded me-0"></i>
																		</a>
																		<div class="dropdown-menu dropdown-menu-right"
																			aria-labelledby="second-open-submenu">
																			<a href="#" class="dropdown-item mail-reply"> <i
																				class="bi bi-share"></i> Reply
																			</a> <a href="#" class="dropdown-item"> <i
																				class="bi bi-redo"></i> Forward
																			</a> <a href="#" class="dropdown-item"> <i
																				class="bi bi-info-circle"></i> Report Spam
																			</a>
																		</div>
																	</div>
																</div>
															</div>
															<div id="collapse7" role="tabpanel"
																aria-labelledby="headingCollapse7" class="collapse show">
																<div class="card-content">
																	<div class="card-body py-1">
																		<p class="text-bold-500">Greetings!</p>
																		<p>It is a long established fact that a reader
																			will be distracted by the readable content of a page
																			when looking at its layout.The point of using Lorem
																			Ipsum is that it has a more-or-less normal
																			distribution of letters, as opposed to using 'Content
																			here, content here',making it look like readable
																			English.</p>
																		<p>There are many variations of passages of Lorem
																			Ipsum available, but the majority have suffered
																			alteration in some form, by injected humour, or
																			randomised words which don't look even slightly
																			believable.</p>
																		<p class="mb-0">Sincerely yours,</p>
																		<p class="text-bold-500">Envato Design Team</p>
																	</div>
																	<div class="card-footer pt-0 border-top">
																		<label class="sidebar-label">Attached Files</label>
																		<ul class="list-unstyled mb-0">
																			<li class="cursor-pointer pb-25"><img
																				src="../../../app-assets/static/images/icon/psd.png"
																				alt="psd.png" height="30"> <small
																				class="text-muted ms-1 attchement-text">uikit-design.psd</small>
																			</li>
																			<li class="cursor-pointer"><img
																				src="../../../app-assets/static/images/icon/sketch.png"
																				alt="sketch.png" height="30"> <small
																				class="text-muted ms-1 attchement-text">uikit-design.sketch</small>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- email details  end-->
											<div class="row px-2 mb-4">
												<!-- quill editor for reply message -->
												<div class="col-12 px-0">
													<div class="card shadow-none border rounded">
														<div class="card-body quill-wrapper">
															<span>Reply to Lois Jimenez</span>
															<div class="snow-container" id="detail-view-quill">
																<div class="detail-view-editor ql-container ql-snow">
																	<div class="ql-editor ql-blank" data-gramm="false"
																		data-placeholder="Type something....."
																		contenteditable="true">
																		<p>
																			<br>
																		</p>
																	</div>
																	<div class="ql-clipboard" tabindex="-1"
																		contenteditable="true"></div>
																	<div class="ql-tooltip ql-hidden">
																		<a class="ql-preview" target="_blank"
																			href="about:blank"></a><input type="text"
																			data-formula="e=mc^2" data-link="https://quilljs.com"
																			data-video="Embed URL"><a class="ql-action"></a><a
																			class="ql-remove"></a>
																	</div>
																</div>
																<div class="d-flex justify-content-end">
																	<div class="detail-quill-toolbar ql-toolbar ql-snow">
																		<span class="ql-formats me-3">
																			<button class="ql-bold" type="button">
																				<svg viewBox="0 0 18 18">
                                                                        <path
																						class="ql-stroke"
																						d="M5,4H9.5A2.5,2.5,0,0,1,12,6.5v0A2.5,2.5,0,0,1,9.5,9H5A0,0,0,0,1,5,9V4A0,0,0,0,1,5,4Z">
                                                                        </path>
                                                                        <path
																						class="ql-stroke"
																						d="M5,9h5.5A2.5,2.5,0,0,1,13,11.5v0A2.5,2.5,0,0,1,10.5,14H5a0,0,0,0,1,0,0V9A0,0,0,0,1,5,9Z">
                                                                        </path>
                                                                    </svg>
																			</button>
																			<button class="ql-italic" type="button">
																				<svg viewBox="0 0 18 18">
                                                                        <line
																						class="ql-stroke" x1="7" x2="13" y1="4" y2="4"></line>
                                                                        <line
																						class="ql-stroke" x1="5" x2="11" y1="14" y2="14"></line>
                                                                        <line
																						class="ql-stroke" x1="8" x2="10" y1="14" y2="4"></line>
                                                                    </svg>
																			</button>
																			<button class="ql-underline" type="button">
																				<svg viewBox="0 0 18 18">
                                                                        <path
																						class="ql-stroke"
																						d="M5,3V9a4.012,4.012,0,0,0,4,4H9a4.012,4.012,0,0,0,4-4V3">
                                                                        </path>
                                                                        <rect
																						class="ql-fill" height="1" rx="0.5" ry="0.5"
																						width="12" x="3" y="15"></rect>
                                                                    </svg>
																			</button>
																			<button class="ql-link" type="button">
																				<svg viewBox="0 0 18 18">
                                                                        <line
																						class="ql-stroke" x1="7" x2="11" y1="7" y2="11"></line>
                                                                        <path
																						class="ql-even ql-stroke"
																						d="M8.9,4.577a3.476,3.476,0,0,1,.36,4.679A3.476,3.476,0,0,1,4.577,8.9C3.185,7.5,2.035,6.4,4.217,4.217S7.5,3.185,8.9,4.577Z">
                                                                        </path>
                                                                        <path
																						class="ql-even ql-stroke"
																						d="M13.423,9.1a3.476,3.476,0,0,0-4.679-.36,3.476,3.476,0,0,0,.36,4.679c1.392,1.392,2.5,2.542,4.679.36S14.815,10.5,13.423,9.1Z">
                                                                        </path>
                                                                    </svg>
																			</button>
																			<button class="ql-image" type="button">
																				<svg viewBox="0 0 18 18">
                                                                        <rect
																						class="ql-stroke" height="10" width="12" x="3"
																						y="4"></rect>
                                                                        <circle
																						class="ql-fill" cx="6" cy="7" r="1">
                                                                        </circle>
                                                                        <polyline
																						class="ql-even ql-fill"
																						points="5 12 5 11 7 9 8 10 11 7 13 9 13 12 5 12">
                                                                        </polyline>
                                                                    </svg>
																			</button>
																		</span>
																	</div>
																	<button class="btn btn-primary send-btn">
																		<i class="bi bi-send me-3"></i> <span
																			class="d-none d-sm-inline"> Send</span>
																	</button>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="ps__rail-x" style="left: 0px; bottom: 0px;">
												<div class="ps__thumb-x" tabindex="0"
													style="left: 0px; width: 0px;"></div>
											</div>
											<div class="ps__rail-y"
												style="top: 0px; height: 736px; right: 0px;">
												<div class="ps__thumb-y" tabindex="0"
													style="top: 0px; height: 626px;"></div>
											</div>
										</div>
									</div>
									<!--/ Detailed Email View -->
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>

			<footer>
				<div class="footer clearfix mb-0 text-muted">
					<div class="float-start">
						<p>2023 &copy; Mazer</p>
					</div>
					<div class="float-end">
						<p>
							Crafted with <span class="text-danger"><i
								class="bi bi-heart-fill icon-mid"></i></span> by <a
								href="https://saugi.me">Saugi</a>
						</p>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="${path }/resources/assets/static/js/components/dark.js"></script>
	<script
		src="${path }/resources/assets/extensions/perfect-scrollbar/perfect-scrollbar.min.js"></script>


	<script src="${path }/resources/assets/compiled/js/app.js"></script>



	<script>
    document.querySelector('.sidebar-toggle').addEventListener('click', () => {
        document.querySelector('.email-app-sidebar').classList.toggle('show')
    })
    document.querySelector('.sidebar-close-icon').addEventListener('click', () => {
        document.querySelector('.email-app-sidebar').classList.remove('show')
    })
    document.querySelector('.compose-btn').addEventListener('click', () => {
        document.querySelector('.compose-new-mail-sidebar').classList.add('show')
    })
    document.querySelector('.email-compose-new-close-btn').addEventListener('click', () => {
        document.querySelector('.compose-new-mail-sidebar').classList.remove('show')
    })
    
</script>
</body>

</html>