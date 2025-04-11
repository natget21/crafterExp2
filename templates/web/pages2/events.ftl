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
        <div class="container">
          <h1 class="best_taital text-center text-white p-0">Eventi</h1>
        </div>
      </div>

      <div class="events layout_padding mx-auto col-11 col-md-9 px-0">
        <div class="row g-4">
          <div class="col-12 col-lg-4 pb-5">
            <div class="event_container position-relative">
              <div class="image-container">
                <div class="position-absolute image_overlay w-100">
                  <h5
                    class="position-absolute bottom-0 start-0 text-white px-3"
                  >
                    VIRTUALIA – Il Futuro digitale che ci attende
                  </h5>
                </div>
                <img
                  class="position-relative event_image"
                  src="https://dante-edih.clustersmile.it/wp-content/uploads/2024/06/Immagine-JPEG-1.jpeg"
                  alt="Event Image"
                />
              </div>
              <div
                class="position-absolute bottom-0 right-0 w-100 d-flex justify-content-end"
              >
                <button class="open_event btn btn-secondary rounded-pill">
                  Leggi
                </button>
              </div>
            </div>
          </div>
          <div class="col-12 col-lg-4 pb-5">
            <div class="event_container position-relative">
              <div class="image-container">
                <div class="position-absolute image_overlay w-100">
                  <h5
                    class="position-absolute bottom-0 start-0 text-white px-3"
                  >
                    VIRTUALIA – Il Futuro digitale che ci attende
                  </h5>
                </div>
                <img
                  class="position-relative event_image"
                  src="https://dante-edih.clustersmile.it/wp-content/uploads/2024/06/Immagine-JPEG-1.jpeg"
                  alt="Event Image"
                />
              </div>
              <div
                class="position-absolute bottom-0 right-0 w-100 d-flex justify-content-end"
              >
                <button class="open_event btn btn-secondary rounded-pill">
                  Leggi
                </button>
              </div>
            </div>
          </div>
          <div class="col-12 col-lg-4 pb-5">
            <div class="event_container position-relative">
              <div class="image-container">
                <div class="position-absolute image_overlay w-100">
                  <h5
                    class="position-absolute bottom-0 start-0 text-white px-3"
                  >
                    VIRTUALIA – Il Futuro digitale che ci attende
                  </h5>
                </div>
                <img
                  class="position-relative event_image"
                  src="https://dante-edih.clustersmile.it/wp-content/uploads/2024/06/Immagine-JPEG-1.jpeg"
                  alt="Event Image"
                />
              </div>
              <div
                class="position-absolute bottom-0 right-0 w-100 d-flex justify-content-end"
              >
                <button class="open_event btn btn-secondary rounded-pill">
                  Leggi
                </button>
              </div>
            </div>
          </div>
          <div class="col-12 col-lg-4 pb-5">
            <div class="event_container position-relative">
              <div class="image-container">
                <div class="position-absolute image_overlay w-100">
                  <h5
                    class="position-absolute bottom-0 start-0 text-white px-3"
                  >
                    VIRTUALIA – Il Futuro digitale che ci attende
                  </h5>
                </div>
                <img
                  class="position-relative event_image"
                  src="https://dante-edih.clustersmile.it/wp-content/uploads/2024/06/Immagine-JPEG-1.jpeg"
                  alt="Event Image"
                />
              </div>
              <div
                class="position-absolute bottom-0 right-0 w-100 d-flex justify-content-end"
              >
                <button class="open_event btn btn-secondary rounded-pill">
                  Leggi
                </button>
              </div>
            </div>
          </div>
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
