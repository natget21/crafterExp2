<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
<#include "/templates/web/fragments/head.ftl">
<body>
<@crafter.body_top/>
    <!-- Header Section (Logo, Search Bar, etc.) -->
    <#include "/templates/web/fragments/header.ftl">
    
     <!-- Navigation Section --> 
    <#include "/templates/web/fragments/navigation.ftl">
    <#include "/templates/web/fragments/static-navigation.ftl">

    <div
      class="banner_section banner_contacts layout_padding d-flex align-items-center"
    >
      <div class="container">
        <h1 class="best_taital text-center text-white p-0">Contattaci</h1>
      </div>
    </div>
    <section id="contact" class="contact mt-5 mb-5">
      <div class="container">
        <div class="row gy-4">
          <div class="col-lg-6">
            <div
              class="info-item d-flex flex-column justify-content-center align-items-start gap-4 p-4"
            >
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisque
                faucibus ex sapien vitae pellentesque sem placerat. In id cursus
                mi pretium
              </p>
            </div>

            <div class="row 2">
              <div class="col-md-12">
                <div class="info-item d-flex align-items-center p-3">
                  <i class="bi bi-geo-alt flex-shrink-0 me-3 text-primary"></i>
                  <!-- Placeholder for icon -->
                  <p class="mb-0 text-primary">Marche, Italia</p>
                </div>
              </div>
              <!-- End Info Item -->

              <div class="col-md-12">
                <div class="info-item d-flex align-items-center p-3">
                  <i class="bi bi-envelope flex-shrink-0 me-3 text-primary"></i>
                  <!-- Placeholder for icon -->
                  <p class="mb-0 text-primary">info@example.com</p>
                </div>
              </div>
              <!-- End Info Item -->

              <div class="col-md-12">
                <div class="info-item d-flex align-items-center p-3">
                  <i
                    class="bi bi-telephone flex-shrink-0 me-3 text-primary"
                  ></i>
                  <!-- Placeholder for icon -->
                  <p class="mb-0 text-primary">+39 34567890</p>
                </div>
              </div>
              <!-- End Info Item -->
            </div>
          </div>

          <div class="col-lg-6">
            <form
              action="forms/contact.php"
              method="post"
              role="form"
              class="php-email-form p-4"
            >
              <!-- Replace action with your endpoint -->
              <div class="row gy-4">
                <div class="col-md-12">
                  <input
                    type="text"
                    name="name"
                    class="form-control"
                    placeholder="Your Name"
                    required
                  />
                </div>

                <div class="col-md-12">
                  <input
                    type="email"
                    class="form-control"
                    name="email"
                    placeholder="Your Email"
                    required
                  />
                </div>

                <div class="col-md-12">
                  <input
                    type="text"
                    class="form-control"
                    name="subject"
                    placeholder="Subject"
                    required
                  />
                </div>

                <div class="col-md-12">
                  <textarea
                    class="form-control"
                    name="message"
                    rows="6"
                    placeholder="Message"
                    required
                  ></textarea>
                </div>

                <div class="col-md-12 text-end">
                  <button type="submit" class="btn btn-primary px-4 rounded-2">
                    INVIA MESSAGGIO
                  </button>
                </div>
              </div>
            </form>
          </div>
          <!-- End Contact Form -->
        </div>
      </div>
    </section>
    <!-- End Contact Section -->


    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer.ftl">

    <!-- Scripts -->
    <#include "/templates/web/fragments/scripts.ftl">
    <@crafter.body_bottom/>
</body>
</html>