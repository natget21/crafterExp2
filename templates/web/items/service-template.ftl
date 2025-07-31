<#import "/templates/system/common/crafter.ftl" as crafter />

<#assign serviceLink = "/detail?url=" + contentModel.storeUrl />
<#assign serviceName = contentModel.name_s?default("Nessun nome") />
<#assign serviceDescription = contentModel.contenuto_t?default("Nessuna descrizione.") />
<#assign serviceImage = contentModel.image_s?default("https://thumb.ac-illust.com/b1/b170870007dfa419295d949814474ab2_t.jpeg") />
<#assign serviceFacilitation = contentModel.agevolazione_b?default(false)?string("Possibile", "Non possibile") />
<#assign company = contentModel.company_s?default("Nessuna azienda") />

<div class="container my-4">
  <div class="row">
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
       <#if company != ''>
            <p class="mb-2 text-muted small">
              <strong>Azienda</strong>: ${company}
            </p>
        </#if>
        <p class="mb-2 text-muted small">
          <strong>Agevolazione</strong>: ${serviceFacilitation}
        </p>
      </div>

      <div class="text-end mt-auto">
        <a href="${serviceLink}" class="btn btn-secondary rounded-pill text-white px-4">
          SCOPRI DI PIÙ
        </a>
      </div>
      
    </div>
  </div>
</div>

