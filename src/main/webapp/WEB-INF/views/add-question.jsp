<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
					<div class="col-lg-4 col-lg-push-4 col-sm-6 col-sm-push-3">
						<div class="card-wrap">
							<div class="card">
								<div class="card-main">
									<div class="card-header">
										<div class="card-inner">
											<h1 class="card-heading">Ask Question</h1>
										</div>
									</div>
									<div class="card-inner">										
										<form:form commandName="question" class="form">
											<div class="form-group form-group-label">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<label class="floating-label" for="login-username">Title</label>
														<form:input path="title" cssClass="form-control"/>
													</div>
												</div>
											</div>
											<div class="form-group form-group-label">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<label class="floating-label" for="login-username">Description</label>
														<form:textarea path="description" cssClass="form-control"/>
													</div>
												</div>
											</div>
											
											<div class="form-group form-group-label">
												<div class="row">											
													<div class="col-md-10 col-md-push-1">													
													    <label class="floating-label" for="login-username">Tags</label>
														<form:input path="tags" cssClass="form-control" id="c-input-search"/>
													</div>
												</div>
											</div>
											
											<div class="form-group">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<button class="btn btn-block btn-blue waves-button waves-effect waves-light">Post Question</button>
													</div>
												</div>
											</div>									
										</form:form>
									</div>
								</div>
							</div>
						</div>						
					</div>
				</div>
			</div>
		</div>
		<script>
  $(document).ready(function() {

	$('#n-input-search').autocomplete({
		serviceUrl: '${pageContext.request.contextPath}/getTags',
		paramName: "tagName",
		delimiter: ",",
	   transformResult: function(response) {
		    	
		return {      	
		  //must convert json to javascript object before process
		  suggestions: $.map($.parseJSON(response), function(item) {		            	
		      return { value: item.categoryName, data: item.id };
		   })		            
		 };
		}		    
	 });				
  });
  </script>
	</div>		
	