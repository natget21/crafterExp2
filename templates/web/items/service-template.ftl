<#import "/templates/system/common/crafter.ftl" as crafter />

<#assign link = "/detail?url=" + contentModel.storeUrl />
<#assign name = contentModel.name_s?default("Nessun nome") />
<#assign description = contentModel.contenuto_t?default("Nessuna descrizione.") />
<#assign image = contentModel.image_s?default("https://thumb.ac-illust.com/b1/b170870007dfa419295d949814474ab2_t.jpeg") />
<#assign facilitation = contentModel.agevolazione_b?default(false)?string("Possibile", "Non possibile") />
<#assign company = contentModel.company_s?default("Non specificata") />

<div class="container my-4">
    <div class="row">
        <div class="col-md-auto">
            <img src="${image}" alt="Servizio ${name}" style="height: 100px; object-fit: cover;">
        </div>
        
        <div class="col d-flex flex-column justify-content-between">
            <h4 class="mb-1 fw-semibold">${name}</h4>
            <p class="mb-2 text-muted small" style="display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical; overflow: hidden;">
                ${description}
            </p>
                   
            <p class="mb-2 text-muted small">
              <strong>Azienda</strong>: ${company}
            </p>
    
            <p class="mb-2 text-muted small">
                <strong>Agevolazione</strong>: ${facilitation}
            </p>
        </div>
        
        <div class="text-end mt-auto">
            <a href="${link}" class="btn btn-secondary rounded-pill text-white px-4">
              SCOPRI DI PIÙ
            </a>
        </div>
        
    </div>
</div>

