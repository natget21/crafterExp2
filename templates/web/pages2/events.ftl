<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">

<#import "/templates/system/common/crafter.ftl" as crafter />
<head>
    <meta charset="utf-8">
    <!--<title>${contentModel.title_t}</title> -->
    <title>Ideale</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <!-- Favicon -->
    <link href="/static-assets/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">  

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/static-assets/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/static-assets/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/static-assets/css/style.css" rel="stylesheet">
    
    <link rel="stylesheet" href="/static-assets/css/general-style.css" />
    <link rel="stylesheet" href="/static-assets/css/events.css" />
    
    <@crafter.head/>
</head>

<body>
<@crafter.body_top/>

    <#include "/templates/web/fragments/header.ftl">
    
    <!-- Navigation Section --> 
    <#include "/templates/web/fragments/navigation.ftl">
    <#include "/templates/web/fragments/static-navigation.ftl">
    
    <div class="content pb-5">
      <div
        class="banner_section banner_services layout_padding d-flex align-items-center"
      >
        <img class="banner_img" src="static-assets/assets/eventi.png">
        <div class="container">
          <h1 class="best_taital text-center text-white p-0 dark">Eventi</h1>
        </div>
      </div>

      <div class="events layout_padding mx-auto col-11 col-md-9 px-0">
        <#if contentModel.sottotitolo_s?? && contentModel.sottotitolo_s?has_content>
            <h2 class="title_section mb-4 text-center"> ${contentModel.sottotitolo_s}</h2>
        </#if>
        <div class="row g-4">
            <#if contentModel.eventi_o?? && contentModel.eventi_o?has_content>
                <#list contentModel.eventi_o.item as item>
                  <div class="col-12 col-lg-6 pb-5 d-flex justify-content-center">
                    <div class="event_container position-relative">
                      <div class="image-container">
                        <div class="position-absolute image_overlay w-100">
                          <#if item.titolo_t?? && item.titolo_t?has_content>
                              <h5
                                class="position-absolute bottom-0 start-0 text-white px-3"
                              >
                                ${item.titolo_t}
                              </h5>
                          </#if>
                        </div>
                        <#if item.imagepath_t?? && item.imagepath_t?has_content>
                            <img
                              class="position-relative event_image"
                              src="${item.imagepath_t}"
                              alt="Event Image"
                            />
                        </#if>
                      </div>
                      <div
                        class="position-absolute bottom-0 right-0 w-100 d-flex justify-content-end"
                      >
                        <button class="open_event btn btn-secondary rounded-pill" onclick="window.location.href='/event-detail?id=${item.id_s}'">
                          Leggi
                        </button>
                      </div>
                    </div>
                  </div>
                </#list>
            </#if>
        </div>
      </div>
    </div>






    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer-no-padding.ftl">

    
        <!-- Scripts -->
    <#include "/templates/web/fragments/scripts.ftl">

    <@crafter.body_bottom/>
</body>
</html>
