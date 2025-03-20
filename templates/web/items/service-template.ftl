<#import "/templates/system/common/crafter.ftl" as crafter />

<#assign subcategoryData = siteItemService.getSiteItem(contentModel.subcategory_o.item[0].key)>

<#assign serviceLink = "/detail?service=" + contentModel.queryValue('internal-name')?url +
"&p=" + contentModel.costo_s?default('0') +
"&n=" + contentModel.name_s?default('') +
"&g=" + subcategoryData.requireGDPRAcceptance_b?default('false') +
"&pri=" + subcategoryData.requireprivacyacceptance_b?default('false') />

<#assign tags = []>
  <#if subcategoryData.tags_o??>
    <#assign tags = subcategoryData.tags_o.item />
</#if>
    <#if (tags?size = 0)>
    <#assign tagsStr = "">
<#else>
 <#assign tagsStr = tags?map(t -> t.key)?join(",")>
</#if>
    <div class="product-item bg-light mb-4">
        <div class="product-img position-relative overflow-hidden">
            <#if contentModel.image_s?hasContent>
                <img class="img-fluid w-100" src="${contentModel.image_s?default("/static-assets/img/default/product-default.png")}" alt="${contentModel.name_s?default("")}">
            <#else>
                <img class="img-fluid w-100" src="/static-assets/img/default/product-default.png" alt="${contentModel.name_s?default("")}">            
            </#if>
            
            <div class="product-action">
                <!--<a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a> -->
                <a class="btn btn-outline-dark btn-square" href="${serviceLink}"><i class="fa fa-eye"></i></a>
            </div>
        </div>
        <div class="text-center py-4">
            <a class="h6 text-decoration-none text-truncate ellipsis" href="${serviceLink}">${contentModel.name_s?default("")}</a>
            <div class="d-flex align-items-center justify-content-center mt-2">
                <h5 data-tags="${tagsStr}">EUR ${contentModel.costo_s?default("0")}</h5><h6 class="text-muted ml-2"></h6>
            </div>
            <div class="d-flex align-items-center justify-content-center mb-1">
                <small class="fa fa-star text-primary mr-1"></small>
                <small class="fa fa-star text-primary mr-1"></small>
                <small class="fa fa-star text-primary mr-1"></small>
                <small class="fa fa-star text-primary mr-1"></small>
                <small class="fa fa-star text-primary mr-1"></small>
                <small>(99)</small>
            </div>
        </div>
    </div>

