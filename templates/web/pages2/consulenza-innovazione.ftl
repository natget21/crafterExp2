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

    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer-no-padding.ftl">

    
    <div class="content pb-5">
      <div
        class="banner_section banner_services layout_padding d-flex align-items-center"
      >
        <img class="banner_img" src="static-assets/assets/servizi.png" />
        <div class="container">
          <h1 class="best_taital text-center dark p-0">
            Consulenza su innovazione tecnologica di processo e di
            prodotto,networking e sensibilizzazione
          </h1>
        </div>
      </div>
      <div
        class="layout_padding mx-auto justify-content-center col-11 col-md-9 px-0"
      >
        <h2 class="title_section pl-3 pl-md-0 col-md-6 mb-4">Cosa offriamo</h2>
        <p class="mt-3">
          L’attività di consulenza su innovazione tecnologica di prodotto,
          networking e sensibilizzazione si articola in una serie di servizi e
          azioni integrate finalizzate a promuovere l’adozione di tecnologie
          innovative nei processi produttivi e nei prodotti/servizi offerti
          dalle imprese. Viene fornita consulenza mirata per supportare
          l’introduzione di soluzioni digitali, favorendo al contempo il
          networking tra attori dell’ecosistema dell’innovazione. L’attività
          comprende la creazione di comunità territoriali, il coinvolgimento
          attivo degli stakeholder e la raccolta di casi di successo, con
          l’obiettivo di generare consapevolezza, ispirazione e collaborazione.
          In questo contesto, la sensibilizzazione gioca un ruolo cruciale nel
          diffondere la cultura dell’innovazione, stimolando nuove sinergie tra
          pubblico, privato e ricerca.
        </p>
        <ul class="mb-4">
          <li>
            <p>Creazione della Comunità</p>
          </li>
          <li>
            <p>Coinvolgimento degli Stakeholder</p>
          </li>
          <li>
            <p>Creazione Repository casi di successo</p>
          </li>
        </ul>
        <p class="mb-4">
          <strong>Creazione della Comunità: </strong>
          Attività di animazione e facilitazione per la creazione di una
          community territoriale composta da imprese, enti pubblici, organismi
          di ricerca e stakeholder interessati all’innovazione digitale. Il
          servizio promuove l’incontro tra domanda e offerta di tecnologie, lo
          scambio di esperienze e la condivisione di buone pratiche, anche
          attraverso l’utilizzo di piattaforme digitali e l’organizzazione di
          eventi di networking. L’obiettivo è rafforzare le connessioni tra
          attori dell’ecosistema e favorire la collaborazione su progetti
          comuni.
        </p>
        <p class="mb-4">
          <strong>Coinvolgimento degli Stakeholder: </strong>
          Attività mirate al coinvolgimento attivo degli stakeholder rilevanti
          per ciascun ambito di innovazione, al fine di favorire l’emersione dei
          bisogni reali e la co-progettazione di soluzioni efficaci. Il servizio
          prevede incontri, tavoli tematici, workshop partecipativi e
          interviste, con l’obiettivo di raccogliere input utili alla
          definizione di strategie di intervento condivise e sostenibili,
          rafforzando il legame tra innovazione tecnologica e sviluppo del
          territorio
        </p>
        <p class="mb-4">
          <strong>Creazione Repository casi di successo: </strong>
          Raccolta, documentazione e pubblicazione di casi di successo relativi
          all’adozione di tecnologie digitali da parte di imprese ed enti
          pubblici, supportati dal partenariato INNOVA. Il repository,
          accessibile online, descrive le soluzioni implementate, i benefici
          ottenuti, le criticità affrontate e le lezioni apprese. Questo
          strumento ha la funzione di ispirare altri soggetti, valorizzare i
          risultati raggiunti, favorire la replicabilità delle buone pratiche e
          aumentare la visibilità dell’impatto del progetto sul territorio.
        </p>
      </div>
    </div>

    
    
        <!-- Scripts -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.4/dist/js/bootstrap.bundle.min.js" integrity="sha384-YUe2LzesAfftltw+PEaao2tjU/QATaW/rOitAq67e0CT0Zi2VVRL0oC4+gAaeBKu" crossorigin="anonymous"></script>
        <#include "/templates/web/fragments/scripts.ftl">

    <@crafter.body_bottom/>
</body>
</html>