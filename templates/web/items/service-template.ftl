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
          <p data-tags="${tagsStr}" style="max-width: 280px; max-height: 20px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;" class="mb-0 text-muted">EUR ${contentModel.costo_s?default("0")}</p>
        </div>
    
        <!-- Bottone -->
        <div class="col-auto">
          <a href="#" class="btn btn-info rounded-pill text-white px-4">
            SCOPRI DI PIÙ
          </a>
        </div>
      </div>
    </div>