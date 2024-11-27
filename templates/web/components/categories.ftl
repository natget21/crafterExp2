<#import "/templates/system/common/crafter.ftl" as crafter />

<#assign categoriesTree = siteItemService.getSiteTree('/site/components/macro_category', 1)>
                            

<div class="container-fluid pt-5">
    <div class="text-center mb-4">
        <h2 class="section-title px-5"><span class="px-2">Shop by Categories</span></h2>
    </div>
    <div class="row px-xl-5 pb-3">
        <#if categoriesTree?has_content>
        <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
            <a class="text-decoration-none" href="">
                <div class="cat-item img-zoom d-flex align-items-center mb-4">
                    <div class="overflow-hidden" style="width: 100px; height: 100px;">
                        <img class="img-fluid" src="img/cat-2.jpg" alt="">
                    </div>
                    <div class="flex-fill pl-3">
                        <h6>Category Name</h6>
                        <small class="text-body">100 Products</small>
                    </div>
                </div>
            </a>
        </div>
        <#list categoriesTree.childItems as macro_category>
            <#assign categoryItem = siteItemService.getSiteItem(macro_category.storeUrl) />
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;">
                    <p class="text-center">${categoryItem.queryValue('name_s')}</p>
                    <a href="${categoryItem.queryValue('name_s')}" class="cat-img position-relative overflow-hidden mb-3">
                        <img class="img-fluid" src="${categoryItem.queryValue('image_s')}" alt="${categoryItem.queryValue('name_s')}">
                    </a>
                    <p class="text-center">${categoryItem.queryValue('description_t')?default("")}</p>
                </div>
            </div>
        </#list>
        <#else>
            <p>No categories found.</p>
        </#if>
    </div>
</div>
