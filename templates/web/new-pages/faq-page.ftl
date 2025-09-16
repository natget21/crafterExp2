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
        
        <div class="container">
            <h3 class="text-center text-primary">Hai dei dubbi? Consulta le domande frequenti</h3>
        
            <div class="accordion mb-3" id="accordion-1">
                <div class="accordion-item">
                    <h2 class="accordion-header">
                        <button
                            class="accordion-button faq-question collapsed"
                            style="background-color: red;"
                            type="button"
                            data-bs-toggle="collapse"
                            data-bs-target="#accordion-button-1"
                            aria-expanded="false"
                            aria-controls="accordion-button-1"
                          >
                            Hello World Title
                          </button>
                    </h2>
                    <div id="accordion-button-1" class="accordion-collapse collapse" data-bs-parent="accordion-1" style="background-color: red;">
                        <div class="accordion-body row row-gap-5">
                            <div class="col-12 info">
                                  <p class="fs-5 desc">Hello World</p>
                            </div>
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