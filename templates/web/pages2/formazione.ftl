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
    <link rel="stylesheet" href="/static-assets/css/project.css" />
    
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
          <h1 class="best_taital text-center dark p-0">Formazione</h1>
        </div>
      </div>
      <div
        class="layout_padding mx-auto justify-content-center col-11 col-md-9 px-0"
      >
        <h2 class="title_section pl-3 pl-md-0 col-md-6 mb-4">Cosa offriamo</h2>
        <p class="mt-3">
          La formazione è un pilastro centrale per abilitare il cambiamento
          digitale. Questa categoria di servizi offre un’ampia gamma di attività
          formative rivolte a diversi target (imprese, pubbliche
          amministrazioni, professionisti), con contenuti aggiornati e modulati
          secondo i bisogni dei partecipanti. I percorsi includono corsi,
          seminari, workshop tematici e programmi di aggiornamento continuo,
          finalizzati allo sviluppo di competenze digitali trasversali e
          specialistiche. In dettaglio:
        </p>
        <ul class="mb-4">
          <li><p>Guide online e Videotutorial</p></li>
          <li><p>Corsi online</p></li>
          <li><p>Workshop</p></li>
          <li><p>Seminari</p></li>
          <li><p>Train the Trainer</p></li>
        </ul>
        <p class="mb-4">
          <strong> Guide online e Videotutorial: </strong>
          Creazione di materiali didattici on-demand, facilmente accessibili,
          per l’autoformazione degli utenti. Le guide online sono redatte in
          formato chiaro e operativo, mentre i videotutorial offrono supporto
          visuale e pratico. I contenuti sono aggiornati costantemente per
          seguire l’evoluzione tecnologica e favorire l’apprendimento autonomo.
        </p>
        <p class="mb-4">
          <strong> Corsi online: </strong>
          Realizzazione di corsi digitali strutturati, con moduli progressivi
          che affrontano aspetti teorici e pratici delle tecnologie impiegate
          nei dimostratori. I corsi sono fruibili su piattaforme e-learning e
          includono video-lezioni, quiz, documentazione tecnica e materiali di
          approfondimento. I contenuti sono pensati per utenti con diversi
          livelli di esperienza e vengono costantemente aggiornati.
        </p>
        <p class="mb-4">
          <strong> Workshop:</strong> Organizzazione di workshop interattivi, in
          presenza o online, focalizzati su tecnologie specifiche o ambiti
          applicativi concreti. L’obiettivo è facilitare l’apprendimento pratico
          attraverso sessioni formative dedicate e favorire il confronto diretto
          con esperti e stakeholder. I workshop possono includere anche seminari
          di approfondimento e momenti di co-progettazione.
        </p>
        <p class="mb-4">
          <strong>Seminari: </strong>Organizzazione di eventi formativi
          tematici, in presenza o online, finalizzati alla diffusione della
          cultura dell’innovazione digitale e all’approfondimento di tecnologie
          abilitanti per la transizione digitale. I seminari sono rivolti a
          imprese, pubbliche amministrazioni e stakeholder del territorio, e
          prevedono la partecipazione di esperti del settore, testimonianze
          aziendali e casi pratici. L’obiettivo è stimolare la consapevolezza e
          la conoscenza delle opportunità offerte dalla digitalizzazione,
          promuovendo l’adozione di soluzioni innovative.
        </p>
        <p class="mb-4">
          <strong> Train the Trainer:</strong> Percorso formativo rivolto a
          formatori, consulenti e referenti interni delle organizzazioni, con
          l’obiettivo di trasferire competenze metodologiche e contenuti tecnici
          per la diffusione autonoma della cultura digitale all’interno delle
          strutture di appartenenza. Il servizio fornisce strumenti didattici,
          materiali formativi e supporto metodologico per la replicabilità dei
          contenuti, favorendo la creazione di figure competenti in grado di
          svolgere attività di formazione interna sui temi dell’innovazione
          tecnologica e della trasformazione digitale.
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