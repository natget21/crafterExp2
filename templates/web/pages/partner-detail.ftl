<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
<#include "/templates/web/fragments/head.ftl">
<body>
<@crafter.body_top/>

    <#include "/templates/web/fragments/header.ftl">
    
    <!-- Navigation Section --> 
    <#include "/templates/web/fragments/navigation.ftl">




<div class="content pb-5">
      <div
        class="banner_section banner_partners layout_padding d-flex align-items-center"
      >
        <div class="container">
          <h1 class="best_taital text-center text-white p-0">Partner</h1>
        </div>
      </div>
      <div
        class="explanation layout_padding mx-auto d-flex flex-column flex-md-row justify-content-center col-11 col-md-9 px-0"
      >
        <h2 class="title_section pl-3 pl-md-0 col-md-6">Partner di progetto</h2>
        <div class="col-md-6">
          <p class="" for="">
            Il progetto è promosso da Synthesis3 S.r.l., insieme ai partner
            Amicucci Formazione S.r.l. e Sinergia EPC S.r.l. Ognuno di loro
            porta competenze chiave specifiche e complementari al progetto,
            permettendo di offrire una gamma diversificata e altamente
            qualificata di soluzioni per le imprese, la pubblica amministrazione
            e il terzo settore.
          </p>
        </div>
      </div>
      <div
        class="layout_padding partners_section d-flex mx-auto flex-column justify-content-center col-11 col-md-9 px-0"
      >
        <div class="row row-gap-5">
          <div class="partner col-12 col-md-6 d-flex flex-column gap-3">
            <h3 class="service_title text-center">Synthesis3 S.r.l.</h3>
            <div class="d-flex justify-content-center">
              <img
                class="partner_logo"
                src="assets/synthesis-logo.png"
                alt=""
              />
            </div>
            <p class="partner_description m-0">
              Fondata nel 2001, Synthesis3 è una società specializzata nella
              consulenza informatica e gestionale, con una forte esperienza nel
              facility management e nell’innovation management. Attiva dal 2022
              nelle Marche, il team di Synthesis3 supporta le imprese, la
              pubblica amministrazione e il terzo settore nella trasformazione
              digitale, con particolare focus su Project Management, Innovation
              Management, e Stakeholders Engagement. Il partner è coinvolto
              nella progettazione e sviluppo di soluzioni digitali, come la
              Digital Ecosystem Platform, e offre servizi di consulenza per la
              trasformazione digitale e la gestione dell'innovazione.
            </p>
            <div
              class="d-flex flex-grow-1 justify-content-center align-items-end"
            >
              <button class="btn btn-primary read_more">Scopri di più</button>
            </div>
          </div>
          <div class="partner col-12 col-md-6 d-flex flex-column gap-3">
            <h3 class="service_title text-center">Sinergia EPC S.r.l.</h3>
            <div class="d-flex justify-content-center">
              <img class="partner_logo" src="assets/sinergia-logo.png" alt="" />
            </div>
            <p class="partner_description m-0">
              Nata nel 2021 come spin-off di Sinergia Consulenze, Sinergia EPC
              si specializza in Lean Technology e Sistemi di Controllo Interni,
              supportando le imprese e le pubbliche amministrazioni nel
              miglioramento dei processi e nella digitalizzazione. Il partner ha
              un forte focus sul settore manifatturiero delle Marche, in
              particolare nell’ambito di Industria 4.0 e soluzioni basate su
              machine learning, deep learning, computer vision e intelligenza
              artificiale. Sinergia EPC collabora con il gruppo di ricerca VRAI
              per lo sviluppo di soluzioni innovative, inclusi strumenti per la
              qualità estetica basati su AI e realtà aumentata.
            </p>
            <div
              class="d-flex flex-grow-1 justify-content-center align-items-end"
            >
              <button class="btn btn-primary read_more">Scopri di più</button>
            </div>
          </div>
          <div class="partner col-12 col-md-6 d-flex flex-column gap-3">
            <h3 class="service_title text-center">
              Amicucci Formazione S.r.l. (SKILLA)
            </h3>
            <div class="d-flex justify-content-center">
              <img class="partner_logo" src="assets/skilla-logo.png" alt="" />
            </div>
            <p class="partner_description m-0">
              Specializzata nel settore della formazione digitale, SKILLA -
              Amicucci Formazione S.R.L. offre soluzioni di e-learning, con un
              focus su microlearning e contenuti fruibili su più dispositivi.
              Con oltre 90 partner internazionali, l'azienda ha sviluppato una
              solida expertise nella formazione aziendale, specializzandosi in
              competenze digitali e leadership. Il partner è all'avanguardia
              nell'uso di tecnologie immersive, come realtà virtuale e
              aumentata, per creare esperienze di apprendimento coinvolgenti e
              pratiche, con un forte impatto nell’educazione e nel miglioramento
              delle performance lavorative
            </p>
            <div
              class="d-flex flex-grow-1 justify-content-center align-items-end"
            >
              <button class="btn btn-primary read_more">Scopri di più</button>
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
