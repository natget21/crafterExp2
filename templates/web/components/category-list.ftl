<#import "/templates/system/common/crafter.ftl" as crafter />

<#assign categoriesTree = siteItemService.getSiteTree('/site/components/category', 1)>
                            

<div class="container-fluid">
    <div class="row px-xl-5 pb-3">
        <#if categoriesTree?has_content>
        <#list categoriesTree.childItems as category>
            <#assign categoryItem = siteItemService.getSiteItem(category.storeUrl) />
            
            <div class="col-md-4 col-sm-6 pb-1">
                <a class="text-decoration-none" href="/catalog?category=${categoryItem.queryValue('internal-name')?url}">
                    <div class="cat-item img-zoom d-flex flex-column align-items-center mb-4">
                        <div class="overflow-hidden" style="width: 100px; height: 100px;">
                            <img class="img-fluid" src="${categoryItem.queryValue('description_t')?default('/static-assets/img/default/category-default.jpg')}" alt="${categoryItem.queryValue('name_s')?default("")}">
                        </div>
                        <div class="flex-fill pl-3">
                            <h6 style="color: var(--primary-active)">${categoryItem.queryValue('name_s')?default("")}</h6>
                            <small class="text-body">${categoryItem.queryValue('description_t')?default("")}</small>
                        </div>
                    </div>
                </a>
            </div>
        </#list>
        <#else>
            <p>Non sono state trovate categorie</p>
        </#if>
    </div>
</div>
