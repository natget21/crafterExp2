<#import "/templates/system/common/crafter.ftl" as crafter />

<#assign subcategoryData = siteItemService.getSiteItem(contentModel.subcategory_o.item[0].key)>

<#assign serviceLink = "/detail?service=" + contentModel.queryValue('internal-name')?url +
"&p=" + contentModel.costo_s?default('0') +
"&n=" + contentModel.name_s?default('') +
"&pid=" + contentModel.productid_s?default('') +
"&cup=" + contentModel.cud_s?default('') +
"&agev=" + contentModel.agevolazione_b?default(false)?string("true", "false") +
"&g=" + subcategoryData.requireGDPRAcceptance_b?default(false)?string("true", "false") +
"&pri=" + subcategoryData.requireprivacyacceptance_b?default(false)?string("true", "false")+
"&item="+contentModel.storeUrl?url?default('')/>

<#assign tags = []>
  <#if subcategoryData.tags_o??>
    <#assign tags = subcategoryData.tags_o.item?default([]) />
</#if>
    <#if (tags?size = 0)>
    <#assign tagsStr = "">
<#else>
 <#assign tagsStr = tags?map(t -> t.key)?join(",")>
</#if>
    <div class="container my-4">
      <div class="row align-items-center">
        <!-- Immagine -->
        <div class="col-auto">
          <img style="height: 100px" src="https://dante-edih.clustersmile.it/wp-content/uploads/2024/06/Immagine-JPEG-1.jpeg" alt="Servizio">
        </div>
    
        <!-- Testo -->
        <div class="col">
          <h5 class="mb-1 fw-semibold">${contentModel.name_s?default("")}</h5>
          <p data-tags="${tagsStr}" class="mb-0 text-muted">${tagsStr}">EUR ${contentModel.costo_s?default("0")}</p>
        </div>
    
        <!-- Bottone -->
        <div class="col-auto">
          <a href="#" class="btn btn-info rounded-pill text-white px-4">
            SCOPRI DI PIÙ
          </a>
        </div>
      </div>
    </div>

    <div class="product-item bg-light mb-4">
        <div class="product-img position-relative overflow-hidden">
            <#if contentModel.image_s?hasContent>
                <img class="img-fluid" style="height: 100px" src="${contentModel.image_s?default("/static-assets/img/default/product-default.png")}" alt="${contentModel.name_s?default("")}">
            <#else>
                <img class="img-fluid" style="height: 100px" src="https://dante-edih.clustersmile.it/wp-content/uploads/2024/06/Immagine-JPEG-1.jpeg" alt="${contentModel.name_s?default("")}">            
            </#if>
            
            <!--<div class="product-action">-->
                <!--<a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-shopping-cart"></i></a>
                <a class="btn btn-outline-dark btn-square" href=""><i class="far fa-heart"></i></a>
                <a class="btn btn-outline-dark btn-square" href=""><i class="fa fa-sync-alt"></i></a> -->
                <!--<a class="btn btn-outline-dark btn-square" href="${serviceLink}"><i class="fa fa-eye"></i></a>-->
            <!--</div>-->
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