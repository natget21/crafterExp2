<div class="container-fluid pt-5">
    <div class="text-center mb-4">
        <h2 class="section-title px-5"><span class="px-2">Our Products</span></h2>
    </div>
    <div class="row px-xl-5">
        <#list crafter.content.query("/component/product") as product>
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="card product-item border-0 mb-4">
                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                        <a href="${product.link}">
                            <img class="img-fluid w-100" src="${product.image}" alt="${product.name}">
                        </a>
                    </div>
                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                        <h6 class="text-truncate mb-3">${product.name}</h6>
                        <div class="d-flex justify-content-center">
                            <h6>${product.price}</h6>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="${product.link}" class="btn btn-sm text-dark p-0">
                            <i class="fas fa-eye text-primary mr-1"></i>View Details
                        </a>
                        <a href="#" class="btn btn-sm text-dark p-0">
                            <i class="fas fa-shopping-cart text-primary mr-1"></i>Add to Cart
                        </a>
                    </div>
                </div>
            </div>
        </#list>
    </div>
</div>
