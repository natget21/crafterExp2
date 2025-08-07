<#import "/templates/system/common/crafter.ftl" as crafter />

<#assign link = "/course?id=" + contentModel.storeUrl />
<#assign productId = contentModel.productid_s?default("") />
<#assign name = contentModel.name_s?default("Nessun nome") />
<#assign description = contentModel.descrizione_t?default("Nessuna descrizione.") />
<#assign image = contentModel.image_s?default("https://thumb.ac-illust.com/b1/b170870007dfa419295d949814474ab2_t.jpeg") />
<#assign facilitation = contentModel.agevolazione_b?default(false)?string("Possibile", "Non possibile") />
<#assign partnerId = contentModel.partnerId_s?default("") />

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
                   
            <p class="mb-2 text-muted small d-flex">
              <strong>Azienda</strong>
              <span id="${productId}" class="ms-1"></span>
            </p>
    
            <p class="mb-2 text-muted small d-flex">
                <strong>Agevolazione</strong>
                <span class="ms-1">${facilitation}</span>
            </p>
        </div>
        
        <div class="text-end mt-auto">
            <a href="${link}" class="btn btn-secondary rounded-pill text-white px-4">
              SCOPRI DI PIÙ
            </a>
        </div>
        
    </div>
</div>

<script>
    document.addEventListener("DOMContentLoaded", async function() {
        const span = document.getElementById("${productId}");
        if(!span) { return; }
        const url = "https://api.shortcut.uno/v1/Ideale-partner/findOne?partnerId=${partnerId}";
        const headers = { "Authorization": "Bearer ${token}" };
        const response = await fetch(url, { method: 'GET', headers });
        if(response.ok) {
            const partner = await response.json();
            span.innerText = partner.partnerAzienda ?? "${partnerId}";
        }
        else { span.innerText = "${partnerId}"; }
    });
</script>

