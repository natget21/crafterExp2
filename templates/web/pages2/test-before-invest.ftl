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
          <li><p>Orientamento e Assessment</p></li>
          <li><p>Innovation Management</p></li>
          <li><p>Consulenza Manageriale</p></li>
          <li><p>Change Management</p></li>
          <li><p>Social Innovation Management</p></li>
          <li><p>Consulenza ICT</p></li>
          <li><p>Engineering</p></li>
        </ul>
        <p class="mb-4">
          <strong> Orientamento e Assessment: </strong>
          Questo servizio aiuta le aziende a identificare le loro necessità e
          priorità strategiche. Attraverso una valutazione approfondita, si
          analizzano le sfide tecnologiche e organizzative per creare un piano
          d'azione personalizzato che favorisca l'adozione di soluzioni
          innovative.
        </p>
        <p class="mb-4">
          <strong> Innovation Management </strong>
          Si tratta di un supporto strategico volto a definire le priorità
          aziendali in ambito tecnologico e organizzativo. Include attività come
          lo scouting di tecnologie emergenti, la selezione delle soluzioni più
          adatte e la gestione di progetti di innovazione. Questo servizio
          supporta le aziende nel miglioramento continuo dei loro processi,
          prodotti e servizi attraverso l'adozione di tecnologie
          all'avanguardia.
        </p>
        <p class="mb-4">
          <strong> Consulenza Manageriale:</strong>Aiuta le aziende a
          ottimizzare la loro gestione interna, attraverso una guida esperta
          nella riorganizzazione dei processi aziendali, la gestione delle
          risorse e la definizione di strategie per affrontare sfide
          competitive. È indirizzata a migliorare l'efficienza e la produttività
          complessiva dell'azienda.
        </p>
        <p class="mb-4">
          <strong>Change Management: </strong>Supporta le aziende nel processo
          di cambiamento organizzativo, aiutando a gestire transizioni
          complesse, come l'adozione di nuove tecnologie o la riorganizzazione
          dei processi. Il servizio include la gestione della comunicazione, il
          coinvolgimento dei dipendenti e il monitoraggio dei risultati.
        </p>
        <p class="mb-4">
          <strong> Social Innovation Management:</strong>Si focalizza sullo
          sviluppo di soluzioni innovative che abbiano un impatto positivo sulla
          società, promuovendo la sostenibilità e l'inclusione sociale. Questo
          tipo di consulenza aiuta le aziende a implementare pratiche
          responsabili e socialmente orientate, creando valore anche a livello
          sociale.
        </p>
        <p class="mb-4">
          <strong>Consulenza ICT: </strong>Consulenza focalizzata sulle
          tecnologie dell'informazione e della comunicazione (ICT), essenziale
          per le aziende che desiderano ottimizzare la loro infrastruttura
          tecnologica e migliorare la gestione dei dati e delle informazioni,
          con l'obiettivo di favorire l'integrazione di soluzioni digitali
          avanzate.
        </p>
        <p class="mb-4">
          <strong>Engineering: </strong>Servizi tecnici e ingegneristici per
          progettare, sviluppare e implementare soluzioni tecnologiche avanzate.
          Questo include attività di progettazione hardware e software, nonché
          l'ottimizzazione di sistemi e processi industriali attraverso
          l'adozione di nuove tecnologie.
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
