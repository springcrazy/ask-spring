<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>

<div class="content">
		<div class="content-heading">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-lg-push-3 col-sm-10 col-sm-push-1">
						<h1 class="heading">Welcome to Ask Network </h1>
					</div>
				</div>
			</div>
		</div>
				<div class="content-inner">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-lg-push-3 col-sm-10 col-sm-push-1">
						<p>Material is an HTML5 UI design based on Google Material.</p>
						<blockquote>
							<p>A visual language for our users that synthesizes the classic principles of good design with the innovation and possibility of technology and science. This is material design.</p>
							<p><a class="text-break" href="http://www.google.com/design/spec/material-design/introduction.html">http://www.google.com/design/spec/material-design/introduction.html</a></p>
						</blockquote>
						<p>Have a play with a <a href="http://daemonite.github.io/material/">working prototype of Material</a>, let us know what you think at the <a href="http://labs.daemon.com.au">Daemon Labs</a> forum.</p>
						<h2 class="content-sub-heading">Components</h2>
						<div class="tile-wrap tile-wrap-animation">
							<c:forEach items="${questions}" var="question">
								<div class="tile tile-collapse">
								<div class="tile-toggle" data-target="#${question.id}" data-toggle="tile">
									<div class="pull-left tile-side">
										<div class="avatar avatar-blue avatar-sm">
											<span class="icon icon-alarm"></span>
										</div>
									</div>
									<div class="tile-action" data-ignore="tile">
										<ul class="nav nav-list pull-right">
											<li>
												<a href="javascript:void(0)"><span class="access-hide">Add</span><span class="icon icon-edit"></span></a>
											</li>
											<li>
												<a href="javascript:void(0)"><span class="access-hide">Delete</span><span class="icon icon-delete"></span></a>
											</li>											
										</ul>
									</div>
									<div class="tile-inner">
										<div class="text-overflow">${question.title }</div>
									</div>
								</div>
								<div class="tile-active-show collapse" id="${question.id}">
									<div class="tile-sub">
										<p>Description<br>
											<small>
												${question.description }
											</small>
										</p>
									</div>
									<div class="tile-footer">
										<ul class="nav nav-list pull-left">
											<li>
												<a href='<spring:url value="/jobs/${question.id}"/>'><span class="icon icon-check"></span>&nbsp;Go</a>
											</li>
											<li>
												<a data-dismiss="tile" href="javascript:void(0)"><span class="icon icon-close"></span>&nbsp;Cancel</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
							</c:forEach>							
						</div>						
					</div>
				</div>
			</div>
		</div>
		
	</div>	

	