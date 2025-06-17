
	<jsp:include page="modules/header.jsp"/>	
		
		<!--start page wrapper -->
		<div class="page-wrapper">
			<div class="page-content">
				<div class="row">
                   <div class="col-10 mx-auto">
                   
                   		<div class="card">
							<div class="card-body p-4">
								<h5 class="mb-4">Vertical Form</h5>
								<form class="row g-3" method="post" action="AddNewBooks">
									<div class="col-md-6">
										<label for="input1" class="form-label">Title</label>
										<input type="text" class="form-control" id="input1" placeholder="Title">
									</div>
									<div class="col-md-6">
										<label for="input2" class="form-label">Author</label>
										<input type="text" class="form-control" id="input2" placeholder="Author">
									</div>
								<div class="col-md-4">
										<label for="input9" class="form-label">Category</label>
										<select id="input9" class="form-select">
											<option selected>Choose...</option>
											<option>One</option>
											<option>Two</option>
											<option>Three</option>
										</select>
									</div>
									<div class="col-md-12">
										<label for="input4" class="form-label">ISBN</label>
										<input type="email" class="form-control" id="input4" placeholder="ISBN">
									</div>
									<div class="col-md-12">
										<label for="input5" class="form-label">Publisher</label>
										<input type="password" class="form-control" id="input5" placeholder="Publisher">
									</div>
									<div class="col-md-12">
										<label for="input6" class="form-label">Edition</label>
										<input type="password" class="form-control" id="input5" placeholder="Edition">
									</div>
									
									<div class="col-md-6">
										<label for="input8" class="form-label">Price</label>
										<input type="text" class="form-control" id="input8" placeholder="Price">
									</div>
									
								
							
									<div class="col-md-12">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" id="input12">
											<label class="form-check-label" for="input12">Check me out</label>
										</div>
									</div>
									<div class="col-md-12">
										<div class="d-md-flex d-grid align-items-center gap-3">
											<button type="button" class="btn btn-primary px-4">Submit</button>
											<button type="button" class="btn btn-light px-4">Reset</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					 
				   </div>
				   
				</div>
				
			</div>
		</div>
		<!--end page wrapper -->
		
		<jsp:include page="modules/footer.jsp"/>	
		