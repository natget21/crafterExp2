<#import "/templates/system/common/crafter.ftl" as crafter />

<#assign categoriesTree = siteItemService.getSiteTree('/site/components/macro_category', 1)>
                            

<div class="container-fluid pt-5">
    <div class="text-center mb-4">
        <h2 class="section-title px-5"><span class="px-2">Shop by Categories</span></h2>
    </div>
    <div class="row px-xl-5 pb-3">
        <#if categoriesTree?has_content>
        <#list categoriesTree.childItems as macro_category>
            <#assign categoryItem = siteItemService.getSiteItem(macro_category.storeUrl) />
            <div class="col-lg-3 col-md-4 col-sm-6 pb-1">
                <a class="text-decoration-none" href="">
                    <div class="cat-item img-zoom d-flex align-items-center mb-4">
                        <div class="overflow-hidden" style="width: 100px; height: 100px;">
                            <img class="img-fluid" src="${categoryItem.queryValue('image_s')}" alt="${categoryItem.queryValue('name_s')}">
                        </div>
                        <div class="flex-fill pl-3">
                            <h6>${categoryItem.queryValue('name_s')}</h6>
                            <small class="text-body">${categoryItem.queryValue('description_t')?default("")}</small>
                        </div>
                    </div>
                </a>
            </div>
        </#list>
        <#else>
            <p>No categories found.</p>
        </#if>
    </div>
</div>
