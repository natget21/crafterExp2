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
        <img class="banner_img" src="static-assets/assets/servizi.png" />
        <div class="container">
          <h1 class="best_taital text-center dark p-0">
            Test Before Invest
          </h1>
        </div>
      </div>

      <div
        class="layout_padding mx-auto justify-content-center col-11 col-md-9 px-0"
      >
        <h2 class="title_section pl-3 pl-md-0 col-md-6 mb-4">Cosa offriamo</h2>
        <p class="mt-3">
          L’introduzione di nuove tecnologie in azienda rappresenta una sfida
          complessa, spesso caratterizzata da costi elevati e incertezze sui
          risultati. Per rispondere a questa esigenza, il Polo Innova mette a
          disposizione i seguenti Living Labs e Proof of Concept (PoC), ambienti
          sperimentali in cui le Pubbliche Amministrazioni e le imprese possono
          testare soluzioni digitali all'avanguardia in condizioni reali.
        </p>
        <ul class="mb-4">
          <li>
            <p>Living Lab Palermo – Videosorveglianza e mobilità</p>
          </li>
          <li>
            <p>Living Lab Palermo – Sicurezza stradale e IoT</p>
          </li>
          <li>
            <p>PoC Maggioli – City on line</p>
          </li>
          <li>
            <p>Living Lab City Barracs</p>
          </li>
          <li>
            <p>Living Lab Country Barracs</p>
          </li>
          <li>
            <p>PoC City on The Field</p>
          </li>
          <li>
            <p>Living Lab Insiel</p>
          </li>
        </ul>
        <p class="mb-4">
          <strong> Living Lab Palermo – Videosorveglianza e mobilità: </strong>
          Attività di simulazione e test di tecnologie di videosorveglianza e
          gestione della mobilità urbana all’interno di un Living Lab cittadino
          nella città di Palermo. Il sistema prevede l’installazione di circa
          venti telecamere intelligenti, affiancate da dispositivi di supporto
          (come NVR e appliance), posizionate su un’area urbana significativa
          (es. una piazza e le vie limitrofe). I dati raccolti saranno
          accessibili da remoto da parte di soggetti terzi interessati, in
          qualità di beneficiari dei servizi sperimentati.
        </p>
        <p class="mb-4">
          <strong>Living Lab Palermo – Sicurezza stradale e IoT:</strong>
          Sperimentazione di tecnologie IoT per il monitoraggio e il
          miglioramento della sicurezza stradale. I sensori e i dispositivi
          intelligenti installati sulle infrastrutture urbane consentono
          l’attivazione di servizi avanzati come la classificazione e
          sottoclassificazione di veicoli e persone, il conteggio, la
          definizione di aree vietate, il rilevamento automatico di
          comportamenti anomali, la ricerca per similitudine, il riconoscimento
          di stalli liberi/occupati, l’individuazione di abbandono rifiuti e
          altri eventi di interesse per le amministrazioni pubbliche e operatori
          privati.
        </p>
        <p class="mb-4">
          <strong>PoC Maggioli – City on line:</strong> Dimostratore focalizzato
          su piattaforme digitali per la gestione integrata dei servizi urbani e
          l’interazione con i cittadini. Il sistema utilizza algoritmi di
          intelligenza artificiale per analizzare in tempo reale i flussi video
          provenienti da fino a sette telecamere contemporaneamente. Il
          dispositivo, compatto e montabile su barra DIN, è dotato di moduli
          WiFi e LTE integrati. L’obiettivo è testare la capacità del sistema
          nel migliorare mobilità urbana e sicurezza stradale. È sviluppato
          secondo i principi “privacy by design” e con architettura edge
          computing, evitando la condivisione esterna dei dati.
        </p>
        <p class="mb-4">
          <strong>Living Lab City Barracs: </strong>Ambiente di test collocato
          in contesti urbani ad alta densità, volto alla sperimentazione di
          impianti di videosorveglianza basati su intelligenza artificiale per
          la sorveglianza di strutture critiche come caserme. Il sistema
          consente l’automatizzazione di attività ripetitive, permettendo al
          personale militare di concentrarsi su compiti strategici. Le
          tecnologie implementate riducono il numero di operatori impiegati,
          senza compromettere la sicurezza, affidando le operazioni di
          rilevamento alle telecamere AI e lasciando all’operatore umano la
          funzione decisionale.
        </p>
        <p class="mb-4">
          <strong>Living Lab Country Barracs: </strong>Ambiente di test
          collocato in contesti extraurbani o rurali, isolati e a bassa densità
          abitativa. Lo scenario sperimentale prevede l’uso di sistemi di
          videosorveglianza con intelligenza artificiale per la gestione degli
          accessi e la sicurezza perimetrale. L’obiettivo è testare soluzioni
          che mantengano o migliorino la sicurezza, ottimizzando l’impiego del
          personale militare nelle strutture isolate, grazie all’uso estensivo
          di sensori intelligenti e dispositivi evoluti
        </p>

        <p>
          <strong>PoC City on The Field: </strong>Dimostratori di tecnologie
          smart city applicati in contesti reali per la gestione urbana
          integrata e intelligente:
        </p>
        <p>
          Le tecnologie applicate includono videosorveglianza intelligente per
          la gestione di mobilità, sicurezza stradale, parcheggi, ZTL, rifiuti,
          eventi pubblici e decoro urbano. Il dispositivo MultiEye (quarta
          generazione SmartEye) è dotato di AI integrata e lavora in full edge
          computing con architettura modulare a visione a 360°.
        </p>
        <p class="mb-4">
          Il dimostratore prevede funzionalità di videosorveglianza avanzata,
          smart parking e people counting. Queste tecnologie rappresentano
          strumenti fondamentali per il miglioramento della sicurezza,
          l’ottimizzazione delle risorse, il supporto alle politiche ambientali
          e la pianificazione urbana basata sui dati
        </p>
        <p class="mb-4">
          <strong>Living Lab Insiel: </strong>Ambiente sperimentale gestito da
          Insiel per l’implementazione e il testing di soluzioni ICT per la
          Pubblica Amministrazione. Il dimostratore sarà composto da telecamere
          intelligenti, dispositivi edge per l’elaborazione in tempo reale,
          ambienti IoT e sistemi di rappresentazione in tempo reale o quasi.
          Saranno implementati scenari con dispositivi LoRaWAN e servizi
          avanzati di videoanalisi basati su modelli di deep learning
          (classificazione, segmentazione, tracking, analisi delle pose).
          L’obiettivo è supportare la PA nell’adozione di soluzioni digitali
          avanzate e nella valorizzazione dei dati pubblici.
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
