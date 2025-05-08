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
        <img class="banner_img" src="static-assets/assets/servizi.png">
        <div class="container">
          <h1 class="best_taital text-center text-white p-0 dark">
            Test Before Invest
          </h1>
        </div>
      </div>
      <div
        class="layout_padding mx-auto justify-content-center col-11 col-md-9 px-0"
      >
        <h2 class="title_section pl-3 pl-md-0 col-md-6 mb-4">Cosa offriamo</h2>
        <ul class="mb-4">
          <li><p>Demo</p></li>
          <li><p>Accesso a Infrastrutture e Piattaforme Tecnologiche (as-a-service)</p></li>
          <li><p>Studi di Fattibilità</p></li>
          <li><p>Proof-of-Concept (PoC)</p></li>
          <li><p>Test e Validazione</p></li>
          <li><p>Progetti di Ricerca e Sviluppo</p></li>
        </ul>
        <p class="mb-4">
            <strong> Demo: </strong>
            Accesso a casi d’uso e dimostratori di soluzioni tecnologiche in
            fase pilota o in laboratori specializzati. Questo servizio aiuta
            le aziende a esplorare potenziali soluzioni prima di impegnarsi
            in investimenti significativi, consentendo di valutare
            l'efficacia e i benefici delle tecnologie.
        </p>
        <p class="mb-4">
            <strong>
              Accesso a Infrastrutture e Piattaforme Tecnologiche
              (as-a-service):
            </strong>
            Offerta di un accesso temporaneo a tecnologie avanzate e
            piattaforme in modalità "as-a-service", permettendo alle aziende
            di testare infrastrutture e soluzioni in ambienti controllati
            prima di decidere un'adozione su larga scala.
        </p>
        <p class="mb-4">
            <strong> Studi di Fattibilità: </strong>
            Servizi di analisi per valutare la fattibilità e il potenziale
            di un'idea o progetto, identificando le risorse, le tecnologie
            necessarie e le eventuali criticità per la sua realizzazione.
            Questo servizio aiuta a minimizzare i rischi prima di avviare un
            progetto.
        </p>
        <p class="mb-4">
            <strong> Proof-of-Concept (PoC): </strong>
            Progetti che mirano a sviluppare prototipi o dimostratori per
            verificare la fattibilità di un concetto o di una tecnologia.
            Questi progetti sono ideali per testare nuove idee e soluzioni
            prima di passare alla fase di sviluppo completo.
        </p>
        <p class="mb-4">
            <strong>Test e Validazione:</strong>
            Progetti di innovazione che permettono di testare, validare e
            ingegnerizzare soluzioni tecnologiche esistenti, in modo da
            garantirne l'efficacia e l'affidabilità in contesti industriali
            reali.
        </p>
        <p class="mb-4">
            <strong>Progetti di Ricerca e Sviluppo:</strong>
            Servizi di ricerca industriale o sviluppo sperimentale
            finalizzati a creare nuovi prodotti, processi o modelli di
            business. Questo servizio è pensato per supportare le aziende
            che vogliono investire in innovazione e trasformare idee in
            soluzioni pratiche.
        </p>
      </div>

    </div>





    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer-no-padding.ftl">

    
        <!-- Scripts -->
    <#include "/templates/web/fragments/scripts.ftl">

    <@crafter.body_bottom/>
</body>
</html>
