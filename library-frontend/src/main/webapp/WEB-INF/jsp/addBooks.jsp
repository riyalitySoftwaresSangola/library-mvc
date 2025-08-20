<jsp:include page="modules/header.jsp"/>

<div class="page-wrapper">
    <div class="page-content">
        <div class="row">
            <div class="col-10 mx-auto">
                <div class="card">
                    <div class="card-body p-4">
                        <h5 class="mb-4">Add New Book</h5>
                        
                        <!-- Display success/error messages -->
                        <div th:if="${success}" class="alert alert-success" role="alert">
                            ${success}
                        </div>
                        <div th:if="${error}" class="alert alert-danger" role="alert">
                            ${error}
                        </div>
                        
                        <form class="row g-3" method="post" action="AddNewBooks">
                            <!-- Title -->
                            <div class="col-md-6">
                                <label for="title" class="form-label">Title</label>
                                <input type="text" class="form-control" id="title" name="title" 
                                       placeholder="Book Title" required>
                            </div>

                            <!-- Author -->
                            <div class="col-md-6">
                                <label for="author" class="form-label">Author</label>
                                <input type="text" class="form-control" id="author" name="author" 
                                       placeholder="Author Name" required>
                            </div>

                            <!-- Category -->
                            <div class="col-md-6">
                                <label for="categoryName" class="form-label">Category</label>
                                <input type="text" class="form-control" id="categoryName" name="categoryName" 
                                       placeholder="e.g., Fiction, Science, History" required>
                            </div>

                            <!-- ISBN -->
                            <div class="col-md-6">
                                <label for="isbn" class="form-label">ISBN</label>
                                <input type="text" class="form-control" id="isbn" name="isbn" 
                                       placeholder="ISBN Number" required>
                            </div>

                            <!-- Edition -->
                            <div class="col-md-4">
                                <label for="edition" class="form-label">Edition</label>
                                <input type="text" class="form-control" id="edition" name="edition" 
                                       placeholder="e.g. 1st, 2nd" required>
                            </div>

                            <!-- Publisher -->
                            <div class="col-md-4">
                                <label for="publisher" class="form-label">Publisher</label>
                                <input type="text" class="form-control" id="publisher" name="publisher" 
                                       placeholder="Publisher Name" required>
                            </div>

                            <!-- Price -->
                            <div class="col-md-4">
                                <label for="price" class="form-label">Price (₹)</label>
                                <input type="number" step="0.01" class="form-control" id="price" name="price" 
                                       placeholder="Enter Price" required>
                            </div>

                            <!-- Number of Copies -->
                            <div class="col-md-6">
                                <label for="copies" class="form-label">Number of Copies</label>
                                <input type="number" class="form-control" id="copies" name="copies" 
                                       placeholder="e.g. 10" min="1" required>
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

<jsp:include page="modules/footer.jsp"/>