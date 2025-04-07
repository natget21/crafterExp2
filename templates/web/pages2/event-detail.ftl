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
    <link rel="stylesheet" href="/static-assets/css/event-detail.css" />
    
    <@crafter.head/>
</head>

<body>
<@crafter.body_top/>

    <#include "/templates/web/fragments/header.ftl">
    
    <!-- Navigation Section --> 
    <#include "/templates/web/fragments/navigation.ftl">
    <#include "/templates/web/fragments/static-navigation.ftl">
    

<div class="content pb-5">
      <div id="carouselExampleIndicators" class="carousel slide carousel-fade">
        <ol class="carousel-indicators">
          <li
            data-target="#carouselExampleIndicators"
            data-slide-to="0"
            class="active"
            aria-label="Slide 1"
          ></li>
          <li
            data-target="#carouselExampleIndicators"
            data-slide-to="1"
            aria-label="Slide 2"
          ></li>
          <li
            data-target="#carouselExampleIndicators"
            data-slide-to="2"
            aria-label="Slide 3"
          ></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img
              class=""
              src="https://dante-edih.clustersmile.it/wp-content/uploads/2024/06/Immagine-JPEG-1.jpeg"
              alt=""
            />
          </div>
          <div class="carousel-item">
            <img
              class=""
              src="https://dante-edih.clustersmile.it/wp-content/uploads/2024/06/Immagine-JPEG-750x1024.jpeg"
              alt=""
            />
          </div>
          <div class="carousel-item">
            <svg
              class="bd-placeholder-img bd-placeholder-img-lg d-block w-100"
              width="800"
              height="400"
              xmlns="http://www.w3.org/2000/svg"
              role="img"
              aria-label="Placeholder: Third slide"
              preserveAspectRatio="xMidYMid slice"
            >
              <title>Placeholder</title>
              <rect width="100%" height="100%" fill="#555"></rect>
              <text x="50%" y="50%" fill="#333" dy=".3em">Third slide</text>
            </svg>
          </div>
        </div>
      </div>
    </div>
    <div class="container event-container text-black">
      <h1 class="event-title">DANTE EDIH – Riunione Plenaria (Giugno 2024)</h1>
      <p class="event-meta">
        by <strong>DANTE EDIH</strong> &nbsp; | &nbsp; 26 Giugno 2024
      </p>
      <hr />
      <p class="event-content">
        Il 25 giugno, a Firenze, si è svolto il General Meeting del progetto
        DANTE EDIH, con la partecipazione di tutti i partner nazionali,
        finalizzato a condividere l’avanzamento delle attività e a creare
        un’occasione di scambio e confronto, al fine di guidare il settore
        pubblico e privato italiano verso un’era digitale sempre più avanzata e
        sicura.
      </p>
      <p class="event-content">
        Il consorzio del progetto DANTE EDIH si impegna a mantenere il suo ruolo
        di promotore di innovazione e crescita per il tessuto imprenditoriale
        italiano. Per ulteriori informazioni o per discutere opportunità di
        collaborazione, vi invitiamo a seguire le attività di DANTE EDIH e a
        contattarci per qualsiasi richiesta o interesse a partecipare al
        progetto.
      </p>
    </div>

   



    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer-no-padding.ftl">

    
        <!-- Scripts -->
         <script>
      var myCarousel = new bootstrap.Carousel(
        document.querySelector("#carouselExampleIndicators"),
        {
          interval: 3000,
          wrap: true,
        }
      );
    </script>
    <#include "/templates/web/fragments/scripts.ftl">

    <@crafter.body_bottom/>
</body>
</html>
