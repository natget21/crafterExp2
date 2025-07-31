<#import "/templates/system/common/crafter.ftl" as crafter />

<#assign link = "/detail?url=" + contentModel.storeUrl />
<#assign name = contentModel.name_s?default("Nessun nome") />
<#assign description = contentModel.contenuto_t?default("Nessuna descrizione.") />
<#assign image = contentModel.image_s?default("https://thumb.ac-illust.com/b1/b170870007dfa419295d949814474ab2_t.jpeg") />
<#assign facilitation = contentModel.agevolazione_b?default(false)?string("Possibile", "Non possibile") />
<#assign company = contentModel.company_s?default("Non specificata") />

<div class="container my-4">
    hello
</div>

