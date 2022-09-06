

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer"
<div class="container">
        <div class="row gutters-sm mt-4 ">
            <div class="col-sm-3"></div>
            <div class="col-md-6">
                <div class="card card-body mb-1"  >
                    <div class="row">
                        <div class="col-sm-12">
                            <h3 class="text-center mb-0"><i class="fa-solid fa-pencil"></i> Create Post</h3>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            <label for="body" class="mb-2"><b>Description:</b> <sup class="star-color">*</sup></label>
                            <textarea name="body" class="form-control form-control-lg mb-4" rows="7"></textarea>
                        </div>
                        <div class="col-sm-12 form-group mb-3">
                            <label for="photo" class="mb-2"><b>Photo:</b></label>
                            <input class="form-control" type="file" accept="image/png, image/jpeg" name="image" value="">
                        </div>
                        <div class="col-sm-12 form-group mb-1">
                            <label for="availability"><b>Availability:</b></label>
                            <input type="radio" name="availability" class="user" value="user">User
                            <input type="radio" name="availability" class="public" value="public">public
                        </div>
                        <div class="col-sm-9"></div>
                        <div class="col-sm-3 mt-1 mb-1">
                            <button type="submit" name="submit" class="btn btn-primary w-100"><i
                                    class="fas fa-check"></i> Create
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>