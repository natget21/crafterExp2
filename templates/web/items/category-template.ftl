<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="col-lg-3 col-md-4 col-sm-6 pb-1">
    <a class="text-decoration-none" href="">
        <div class="cat-item img-zoom d-flex align-items-center mb-4">
            <div class="overflow-hidden" style="width: 100px; height: 100px;">
                <img class="img-fluid" src="${contentModel.image_s?default("")}" alt="${contentModel.name_s?default("")}">
            </div>
            <div class="flex-fill pl-3">
                <h6>${contentModel.name_s?default("")}</h6>
                <small class="text-body">${contentModel.description_t?default("")}</small>
            </div>
        </div>
    </a>
</div>