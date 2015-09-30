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
						<p>${question.title }</p>
						<blockquote>
							<p>${question.description }</p>
							<p><a class="text-break" href="http://www.google.com/design/spec/material-design/introduction.html">http://www.google.com/design/spec/material-design/introduction.html</a></p>
						</blockquote>
						<p>Have a play with a <a href="http://daemonite.github.io/material/">working prototype of Material</a>, let us know what you think at the <a href="http://labs.daemon.com.au">Daemon Labs</a> forum.</p>
						
						<ul>
							<c:forEach items="${question.tags}" var="tag">
								<li>${tag.name}</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
