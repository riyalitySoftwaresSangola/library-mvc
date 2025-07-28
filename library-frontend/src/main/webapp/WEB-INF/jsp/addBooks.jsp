<jsp:include page="modules/header.jsp"/>	

<!--start page wrapper -->
<div class="page-wrapper">
	<div class="page-content">
		<div class="row">
			<div class="col-10 mx-auto">
				<div class="card">
					<div class="card-body p-4">
						<h5 class="mb-4">Add New Book</h5>
						<form class="row g-3" method="post" action="AddNewBooks">

							<!-- Book Title -->
							<div class="col-md-6">
								<label for="title" class="form-label">Title</label>
								<input type="text" class="form-control" id="title" name="title" placeholder="Book Title" required>
							</div>

							<!-- Author -->
							<div class="col-md-6">
								<label for="author" class="form-label">Author</label>
								<input type="text" class="form-control" id="author" name="author" placeholder="Author Name" required>
							</div>

							<!-- Category -->
					<div class="col-md-4">
    <label for="category" class="form-label">Category</label>
    <select id="categorySelect" class="form-select" name="category" onchange="handleCategoryChange()" required>
        <option selected disabled>Choose...</option>
        <option value="Novel">Novel</option>
        <option value="Science">Science</option>
        <option value="History">History</option>
        <option value="Technology">Technology</option>
        <option value="Other">Other</option>
    </select>
</div>

<div class="col-md-4" id="newCategoryDiv" style="display: none;">
    <label for="newCategory" class="form-label">New Category</label>
    <input type="text" id="newCategory" name="newCategory" class="form-control" placeholder="Enter new category">
</div>




							<!-- ISBN -->
							<div class="col-md-4">
								<label for="isbn" class="form-label">ISBN</label>
								<input type="text" class="form-control" id="isbn" name="isbn" placeholder="ISBN Number" required>
							</div>

							<!-- Edition -->
							<div class="col-md-4">
								<label for="edition" class="form-label">Edition</label>
								<input type="text" class="form-control" id="edition" name="edition" placeholder="e.g. 1st, 2nd" required>
							</div>

							<!-- Publisher -->
							<div class="col-md-6">
								<label for="publisher" class="form-label">Publisher</label>
								<input type="text" class="form-control" id="publisher" name="publisher" placeholder="Publisher Name" required>
							</div>

							<!-- Price -->
							<div class="col-md-6">
								<label for="price" class="form-label">Price (₹)</label>
								<input type="number" class="form-control" id="price" name="price" placeholder="Enter Price" required>
							</div>

							<!-- Number of Copies -->
							<div class="col-md-4">
								<label for="copies" class="form-label">Number of Copies</label>
								<input type="number" class="form-control" id="copies" name="copies" placeholder="e.g. 10" min="1" required>
							</div>

							<!-- Submit Buttons -->
							<div class="col-md-12">
								<div class="d-md-flex d-grid align-items-center gap-3 mt-3">
									<button type="submit" class="btn btn-primary px-4">Submit</button>
									<button type="reset" class="btn btn-light px-4">Reset</button>
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
<script>
    function handleCategoryChange() {
        const select = document.getElementById("categorySelect");
        const newCatDiv = document.getElementById("newCategoryDiv");

        if (select.value === "Other") {
            newCatDiv.style.display = "block";
        } else {
            newCatDiv.style.display = "none";
            document.getElementById("newCategory").value = ""; // clear
        }
    }
</script>

<jsp:include page="modules/footer.jsp"/>	
