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
    <link rel="stylesheet" href="/static-assets/css/services.css" />
    
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
          <h1 class="best_taital text-center text-white p-0">
            Prodotti Digitali
          </h1>
        </div>
      </div>
      <div
        class="services_section d-flex mx-auto flex-column justify-content-center col-11 col-md-9 px-0"
      >
        <h3 class="title_section layout_padding">Prodotti digitali:</h3>
        <div
          class="service mt-5 d-flex justify-content-between align-items-center"
        >
          <div
            class="d-flex flex-column align-items-center justify-content-center"
          >
            <h3 class="service_title text-center">E-services</h3>
            <p class="text-center">
              Si tratta di microservizi avanzati, facilmente accessibili tramite
              interfacce utente complete e progettati per rispondere alle
              esigenze specifiche del cliente finale. Questi servizi sono
              pensati per essere utilizzati immediatamente, senza necessità di
              configurazioni complesse, e possono essere integrati facilmente
              nei processi aziendali per ottimizzare la gestione e le
              operazioni.
            </p>
          </div>
          <img src="/static-assets/assets/assessment-1.jpg" alt="" />
        </div>
        <div class="service d-flex justify-content-between align-items-center">
          <div
            class="d-flex flex-column align-items-center justify-content-center"
          >
            <h3 class="service_title text-center">API</h3>
            <p class="text-center">
              Le API (Application Programming Interface) senza interfaccia
              grafica sono soluzioni pensate per le aziende che necessitano di
              integrare sistemi esterni o personalizzati. Queste API permettono
              una comunicazione diretta tra applicazioni diverse, senza dover
              gestire una complessa interfaccia utente, facilitando
              l'automazione e l'efficienza operativa.
            </p>
          </div>
          <img src="/static-assets/assets/test-before-invest-1.jpg" alt="" />
        </div>
      </div>
    </div>





    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer-no-padding.ftl">

    
        <!-- Scripts -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.4/dist/js/bootstrap.bundle.min.js" integrity="sha384-YUe2LzesAfftltw+PEaao2tjU/QATaW/rOitAq67e0CT0Zi2VVRL0oC4+gAaeBKu" crossorigin="anonymous"></script>
        <#include "/templates/web/fragments/scripts.ftl">

    <@crafter.body_bottom/>
</body>
</html>
