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
    <link rel="stylesheet" href="/static-assets/css/news.css" />
    
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
          <h1 class="best_taital text-center text-white p-0">News</h1>
        </div>
      </div>
      <div
        class="news_section layout_padding d-flex mx-auto flex-column justify-content-center col-11 col-md-9 px-0"
      >
        <div class="card mb-4 mb-md-5 shadow-sm border-0">
          <div class="row g-0">
            <div class="col-md-5">
              <img
                src="https://www.edih4marche.eu/wp-content/uploads/elementor/thumbs/cyber-security-article-r3itn6mf44gxx1olsft3f0jnwfvacf3svkvdgomqvo.jpg"
                class="img-fluid rounded-start object-fit-cover h-100"
                alt="AI Matters"
              />
            </div>
            <div class="col-md-7">
              <div class="card-body d-flex flex-column h-100">
                <small class="text-muted d-block mb-1">3 Aprile, 2025</small>
                <h5 class="card-title fw-bold">
                  Roadshow AI MATTERS: “L’Ai che fa la differenza nel
                  manifatturiero”
                </h5>
                <p class="card-text">
                  Un'opportunità per conoscere da vicino soluzioni di
                  intelligenza artificiale dedicate al mondo manifatturiero.
                  Tappa marchigiana – Jesi, 10 aprile 2024
                </p>
                <div
                  class="flex-grow-1 d-flex align-items-end justify-content-center"
                >
                  <a
                    href="/news-detail"
                    class="btn btn-secondary btn-sm read_more rounded-pill"
                    >Scopri di piu'</a
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="card mb-4 mb-md-5 shadow-sm border-0">
          <div class="row g-0">
            <div class="col-md-5">
              <img
                src="https://www.edih4marche.eu/wp-content/uploads/elementor/thumbs/Immagine-2025-03-21-113701-r36l0v7qfy5ke2l0kv5iutd0177k5ot20ef6gzuhzo.png"
                class="img-fluid rounded-start object-fit-cover h-100"
                alt="AI Matters"
              />
            </div>
            <div class="col-md-7">
              <div class="card-body d-flex flex-column h-100">
                <small class="text-muted d-block mb-1">3 Aprile, 2025</small>
                <h5 class="card-title fw-bold">
                  Roadshow AI MATTERS: “L’Ai che fa la differenza nel
                  manifatturiero”
                </h5>
                <p class="card-text">
                  Un'opportunità per conoscere da vicino soluzioni di
                  intelligenza artificiale dedicate al mondo manifatturiero.
                  Tappa marchigiana – Jesi, 10 aprile 2024
                </p>
                <div
                  class="flex-grow-1 d-flex align-items-end justify-content-center"
                >
                  <a
                    href="#"
                    class="btn btn-secondary btn-sm read_more rounded-pill"
                    >Scopri di piu'</a
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="card mb-4 mb-md-5 shadow-sm border-0">
          <div class="row g-0">
            <div class="col-md-5">
              <img
                src="https://www.edih4marche.eu/wp-content/uploads/elementor/thumbs/immagine-notizia-evento-conf-macer-micozzi-r2491wgzopea0i1vucxs8mnofyi74trc4cpmspcdqs.png"
                class="img-fluid rounded-start object-fit-cover h-100"
                alt="AI Matters"
              />
            </div>
            <div class="col-md-7">
              <div class="card-body d-flex flex-column h-100">
                <small class="text-muted d-block mb-1">3 Aprile, 2025</small>
                <h5 class="card-title fw-bold">
                  Roadshow AI MATTERS: “L’Ai che fa la differenza nel
                  manifatturiero”
                </h5>
                <p class="card-text">
                  Un'opportunità per conoscere da vicino soluzioni di
                  intelligenza artificiale dedicate al mondo manifatturiero.
                  Tappa marchigiana – Jesi, 10 aprile 2024
                </p>
                <div
                  class="flex-grow-1 d-flex align-items-end justify-content-center"
                >
                  <a
                    href="#"
                    class="btn btn-secondary btn-sm read_more rounded-pill"
                    >Scopri di piu'</a
                  >
                </div>
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
