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
        <img class="banner_img" src="/static-assets/assets/servizi.png" />
        <div class="container">
          <h1 class="best_taital text-center dark p-0">
            Consulenza su accesso ai finanziamenti
          </h1>
        </div>
      </div>
      <div
        class="layout_padding mx-auto justify-content-center col-11 col-md-9 px-0"
      >
        <h2 class="title_section pl-3 pl-md-0 col-md-6 mb-4">Cosa offriamo</h2>
        <p class="mt-3">
          L’attività di consulenza su accesso ai finanziamenti prevede
          l’erogazione di servizi che mirano a facilitare l’accesso a risorse
          strategiche per l’innovazione, contribuendo a trasformare le idee in
          progetti concreti e sostenibili.
        </p>
        <ul class="mb-4">
          <li>
            <p>Accesso ai finanziamenti</p>
          </li>
          <li>
            <p>Sviluppo dei progetti</p>
          </li>
        </ul>
        <p class="mb-4">
          <strong> Accesso ai finanziamenti: </strong>
          Servizio di consulenza finalizzato a supportare enti e imprese
          nell’individuazione delle opportunità di finanziamento pubblico e
          privato a livello regionale, nazionale ed europeo. Comprende la
          mappatura dei bandi attivi e futuri, l’analisi di fattibilità rispetto
          ai requisiti di accesso, l’assistenza alla compilazione della
          modulistica e la predisposizione della documentazione necessaria.
          L’obiettivo è facilitare l’accesso a risorse economiche utili a
          sostenere i progetti di innovazione tecnologica e digitale.
        </p>
        <p class="mb-4">
          <strong>Sviluppo dei progetti: </strong>
          Supporto specialistico alla definizione e allo sviluppo di progetti di
          innovazione in risposta a bandi di finanziamento. Il servizio include
          l’analisi dei fabbisogni progettuali, la costruzione del partenariato,
          la redazione tecnica ed economica della proposta, la pianificazione
          delle attività, la definizione del piano di lavoro e degli indicatori
          di impatto. Viene offerta assistenza anche in fase di gestione e
          rendicontazione del progetto, con l’obiettivo di aumentare le
          probabilità di successo e la qualità della proposta presentata.
        </p>
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
