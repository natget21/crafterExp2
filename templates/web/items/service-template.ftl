<#import "/templates/system/common/crafter.ftl" as crafter />

<#assign subcategoryData = siteItemService.getSiteItem(contentModel.subcategory_o.item[0].key)>

<!--
<#assign serviceLink = "/detail?service=" + contentModel.queryValue('internal-name')?url +
"&price=" + contentModel.costo_s?default('0') +
"&name=" + contentModel.name_s?default('Nessun Nome') +
"&pid=" + contentModel.productid_s?default('Nessun Codice') +
"&cup=" + contentModel.cup_s?default('Nessun CUP') +
"&facilitation=" + contentModel.agevolazione_b?default(false)?string("true", "false") +
"&gdpr=" + subcategoryData.requireGDPRAcceptance_b?default(false)?string("true", "false") +
"&privacy=" + subcategoryData.requireprivacyacceptance_b?default(false)?string("true", "false") +
"&notes=" + contentModel.notes_t?default('Nessuna Nota') +
"&description=" + contentModel.contenuto_t?default('Nessuna Descrizione') +
"&image=" + contentModel.image_s?default('https://dante-edih.clustersmile.it/wp-content/uploads/2024/06/Immagine-JPEG-1.jpeg') +
"&item="+contentModel.storeUrl?url?default('')/>
-->

<#assign serviceLink = "/detail?url=" + contentModel.storeUrl />
<#assign serviceId = contentModel.objectId?default('ID') />
<#assign serviceName = contentModel.name_s?default('Senza nome') />
<#assign serviceDescription = contentModel.contenuto_t?default('Nessuna descrizione') />
<#assign serviceImage = contentModel.image_s?default('https://thumb.ac-illust.com/b1/b170870007dfa419295d949814474ab2_t.jpeg') />
<#assign serviceFacilitation = contentModel.agevolazione_b?default(false)?string("Possibile", "Non possibile") />

<script>
  var description = "${serviceDescription}";
  console.log("test", description);
</script>

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

  <div class="row g-3">
    <!-- Immagine -->
    <div class="col-md-auto">
      <img src="${serviceImage}" alt="Servizio ${serviceName}" style="height: 100px; object-fit: cover;">
    </div>

    <!-- Testo + bottone -->
    <div class="col d-flex flex-column justify-content-between">
      <div>
        <h4 class="mb-1 fw-semibold">
          ${serviceName}
        </h4>

        <p data-tags="${tagsStr}"
           class="mb-2 text-muted small"
           style="display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical; overflow: hidden;">
           ${serviceDescription}
       </p>
       <#if contentModel.company_s>
        <p class="mb-2 text-muted small">
          <strong>Azienda</strong>: ${contentModel.company_s}
        </p>
        <#if>
        <p class="mb-2 text-muted small">
          <strong>Agevolazione</strong>: ${serviceFacilitation}
        </p>
      </div>

      <!-- Pulsanti -->
      <div class="text-end mt-auto">
        <a href="${serviceLink}" class="btn btn-secondary rounded-pill text-white px-4">
          SCOPRI DI PIÙ
        </a>
        <!--
        <a href="${serviceLink}" class="btn btn-secondary rounded-pill text-white px-4">
          <i class="fa fa-cart-plus"></i>
        </a>
        -->
      </div>
    </div>
  </div>
</div>

