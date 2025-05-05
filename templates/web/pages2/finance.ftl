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
    <link rel="stylesheet" href="/static-assets/css/finance.css" />
    
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
            Access to Finance
          </h1>
        </div>
      </div>
      <div
        class="explanation layout_padding mx-auto d-flex flex-column flex-md-row justify-content-center col-11 col-md-9 px-0"
      >
        <h2 class="title_section pl-3 pl-md-0 col-md-6">Cosa offriamo</h2>
        <div class="col-md-6">
          <ul class="list-group">
            <li class="list-group-item">
              <strong> Finanza Agevolata ed Europrogettazione: </strong> Un
              servizio altamente specializzato che supporta le aziende nella
              definizione e preparazione di progetti per accedere a
              finanziamenti pubblici, nazionali ed europei. Comprende la
              creazione del concept di progetto, la stesura della documentazione
              amministrativa, la costruzione di partenariati internazionali,
              l'analisi dei costi e la gestione delle fasi di rendicontazione,
              nonché le attività di comunicazione e sfruttamento dei risultati
              del progetto.
            </li>
            <li class="list-group-item">
              <strong> Accesso al Credito: </strong> Consulenza mirata per
              aiutare le imprese a sviluppare una strategia di finanziamento che
              si adatti alle loro necessità, incluso il supporto nella
              preparazione di pitch per investitori, l'assessment finanziario e
              la preparazione di documentazione per l'accesso a linee di credito
              private o pubbliche.
            </li>
            <li class="list-group-item">
              <strong> Crowdfunding: </strong> Servizi per supportare le aziende
              nella creazione e gestione di campagne di crowdfunding, un'opzione
              di finanziamento sempre più popolare per progetti innovativi.
              Questo servizio include la pianificazione della campagna, la
              creazione di contenuti e la gestione delle relazioni con i
              donatori o investitori.
            </li>
            <li class="list-group-item">
              <strong> Misure Fiscali: </strong> Consulenza per sfruttare le
              opportunità fiscali a disposizione delle aziende, inclusi
              incentivi, agevolazioni e deduzioni fiscali che possono
              contribuire a ridurre i costi operativi e favorire l'adozione di
              nuove tecnologie.
            </li>
            <li class="list-group-item">
              <strong> Corporate Finance: </strong> Consulenza strategica per la
              gestione finanziaria aziendale, che include attività come la
              pianificazione finanziaria, l'analisi delle performance e
              l'ottimizzazione delle risorse economiche, con l'obiettivo di
              supportare la crescita e la competitività dell'azienda.
            </li>
          </ul>
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
