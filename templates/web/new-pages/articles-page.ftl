<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
    <#include "/templates/web/fragments/head.ftl">
    <body>
        <@crafter.body_top/>
        <#include "/templates/web/fragments/header.ftl">
        <#include "/templates/web/fragments/navigation.ftl">
        
        <div class="banner_section banner_services layout_padding d-flex align-items-center">
            <img class="banner_img" src="static-assets/assets/news.png">
            <div class="container">
                <h1 class="best_taital text-center text-white p-0 dark">News</h1>
            </div>
        </div>
 
        <div class="container mb-5">
            <#assign articles = siteItemService.getSiteTree('/site/components/articles', 1)>
            <#list articles.childItems as child>
                <#assign article = siteItemService.getSiteItem(child.storeUrl) />
                <#assign title = article.title_s?default("Nessun titolo") />
                <#assign description = article.description_t?default("Nessuna descrizione") />
                <#assign date = article.date_dt?default("01/01/2000") />
                <#assign image = article.image_s?default("https://thumb.ac-illust.com/b1/b170870007dfa419295d949814474ab2_t.jpeg") />
                <div class="row g-0 border-bottom py-1">
                    <div class="col-md-5">
                        <img src="${image}" class="img-fluid rounded-start object-fit-cover h-100" alt="${title}">
                    </div>
                    <div class="col-md-7">
                        <div class="card-body d-flex flex-column h-100">
                            <small class="text-muted d-block mb-1">${date}</small>
                            <h5 class="card-title fw-bold text-primary">${title}</h5>
                            <p class="card-text">${description}</p>
                        </div>
                    </div>
                </div>
            </#list>
        </div>
        
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>