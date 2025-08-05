<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
    <#include "/templates/web/fragments/head.ftl">
    <body>
        <@crafter.body_top/>
        <#include "/templates/web/fragments/header.ftl">
        <#include "/templates/web/fragments/navigation.ftl">
 
        
        <div class="content pb-5">
          <div class="banner_section banner_services layout_padding d-flex align-items-center">
            <img class="banner_img" src="static-assets/assets/servizi.png">
            <div class="container">
              <h1 class="best_taital text-center text-white p-0 dark">
                Servizi Digitali
              </h1>
            </div>
          </div>
    
        <div class="services_section d-flex mx-auto flex-column justify-content-center col-11 col-md-9 px-0">
            <div class="service mt-5 d-flex justify-content-between align-items-center">
              <div class="d-flex flex-column align-items-center justify-content-center">
                    <h3 class="service_title text-center">Test before invest</h3>
                    <p class="text-center">Questa categoria permette alle aziende di esplorare soluzioni e tecnologie prima di fare investimenti significativi. Consente di validare idee e concetti tecnologici attraverso attività pratiche e dimostrative che riducono i rischi e migliorano la decisione sugli investimenti</p>
                    <div class="d-flex flex-grow-1 justify-content-center align-items-end">
                      <button class="btn btn-secondary read_more rounded-pill" onclick="window.location.href='/test-before-invest'">
                        Scopri di più
                      </button>
                    </div>
              </div>
              <img src="/static-assets/assets/formazione-1.jpg" alt="">
            </div>
            
            <div class="service mt-5 d-flex justify-content-between align-items-center">
              <div class="d-flex flex-column align-items-center justify-content-center">
                    <h3 class="service_title text-center">Consulenza</h3>
                    <p class="text-center">Questa categoria fornisce un ampio supporto alle aziende per affrontare sfide strategiche e operazioni aziendali complesse. I servizi di consulenza aiutano le imprese a migliorare l'efficienza, a rispondere alle dinamiche del mercato e a promuovere l’innovazione tecnologica e manageriale.</p>
                    <div class="d-flex flex-grow-1 justify-content-center align-items-end">
                      <button class="btn btn-secondary read_more rounded-pill" onclick="window.location.href='/consulenza'">
                        Scopri di più
                      </button>
                    </div>
              </div>
              <img src="/static-assets/assets/supporto-finanziamenti.jpg" alt="">
            </div>
            
            <div class="service mt-5 d-flex justify-content-between align-items-center">
              <div class="d-flex flex-column align-items-center justify-content-center">
                    <h3 class="service_title text-center">Skills and Training</h3>
                    <p class="text-center">La formazione è un aspetto cruciale per l’aggiornamento delle competenze interne e per rispondere alle sfide di un mercato sempre più competitivo e tecnologicamente avanzato. Questa categoria offre corsi strutturati per sviluppare competenze tecnologiche, manageriali e trasversali.</p>
                    <div class="d-flex flex-grow-1 justify-content-center align-items-end">
                      <button class="btn btn-secondary read_more rounded-pill" onclick="window.location.href='/skills-training'">
                        Scopri di più
                      </button>
                    </div>
              </div>
              <img src="/static-assets/assets/supporto-finanziamenti.jpg" alt="">
            </div>
            
            <div class="service mt-5 d-flex justify-content-between align-items-center">
              <div class="d-flex flex-column align-items-center justify-content-center">
                    <h3 class="service_title text-center">Access to finance</h3>
                    <p class="text-center">Questa categoria aiuta le aziende ad accedere a diverse forme di finanziamento, sia pubbliche che private, per finanziare progetti innovativi e di crescita. I servizi offrono consulenza mirata per la gestione di fondi e risorse, rendendo più facile l'accesso a capitali necessari per lo sviluppo.</p>
                    <div class="d-flex flex-grow-1 justify-content-center align-items-end">
                      <button class="btn btn-secondary read_more rounded-pill" onclick="window.location.href='/finance'">
                        Scopri di più
                      </button>
                    </div>
              </div>
              <img src="/static-assets/assets/supporto-finanziamenti.jpg" alt="">
            </div>
            
            <div class="service mt-5 d-flex justify-content-between align-items-center">
              <div class="d-flex flex-column align-items-center justify-content-center">
                    <h3 class="service_title text-center">Networking & Open innovation</h3>
                    <p class="text-center">Questa categoria supporta la creazione di connessioni tra aziende, startup, università, istituzioni e investitori, promuovendo la collaborazione e l’innovazione aperta. L'obiettivo è favorire la creazione di ecosistemi dinamici in cui le imprese possano crescere attraverso il confronto e l’interazione con altri attori.</p>
                    <div class="d-flex flex-grow-1 justify-content-center align-items-end">
                      <button class="btn btn-secondary read_more rounded-pill" onclick="window.location.href='/networking'">
                        Scopri di più
                      </button>
                    </div>
              </div>
              <img src="/static-assets/assets/supporto-finanziamenti.jpg" alt="">
            </div>
          
        </div>
        
        <#include "/templates/web/fragments/footer.ftl">
        <#include "/templates/web/fragments/scripts.ftl">
        <@crafter.body_bottom/>
    </body>
</html>