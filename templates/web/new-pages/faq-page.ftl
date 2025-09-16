<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
    <#include "/templates/web/fragments/head.ftl">
    <body>
        <@crafter.body_top/>
        <#include "/templates/web/fragments/header.ftl">
        <#include "/templates/web/fragments/navigation.ftl">
        
        <div class="banner_section banner_services layout_padding d-flex align-items-center">
            <img class="banner_img" src="static-assets/assets/faq.png">
            <div class="container">
                <h1 class="best_taital text-center text-white p-0 dark">Faq</h1>
            </div>
        </div>
        
        <h3 class="text-center text-primary">Hai dei dubbi? Consulta le domande frequenti</h3>
        
        <div class="accordion mb-3" id="accordion-1">
            <div class="accordion-item">
                <h2 class="accordion-header">
                    <button
                        class="accordion-button faq-question collapsed"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#registration-button-${item.id_s}"
                        aria-expanded="false"
                        aria-controls="registration-button-${item.id_s}"
                      >
                        Hello World
                      </button>
                </h2>
                <div id="registration-button-${item.id_s}" class="accordion-collapse collapse" data-bs-parent="#registration-${item.id_s}">
                    <div class="accordion-body row row-gap-5">
                        <div class="col-12 info">
                              <p class="fs-5 desc">Hello World</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>