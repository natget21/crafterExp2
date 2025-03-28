<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
<#include "/templates/web/fragments/head2.ftl">
<body>
    <@crafter.body_top/>

    <!-- Header Section (Logo, Search Bar, etc.) -->
    <#include "/templates/web/fragments/header.ftl">
    
     <!-- Navigation Section --> 
    <#include "/templates/web/fragments/navigation2.ftl">
	<div style="background-color: #F5F5F5">
	<!-- banner section start-->
	<div class="banner_section layout_padding">
		<div class="container">
			<h1 class="best_taital">Partners</h1>
			<div class="box_main">

		    </div>
		    <p class="there_text">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alterationThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration</p>
		    <div class="bt_main">
		    
		    </div>
		</div>
	</div>
	<!-- banner section end-->
	
	
	<div class="services_section">
    <div class="container">
      <h1 class="services_text">About Partner</h1>
    </div>
  </div>
  <div class="companies_section layout_padding">
    <div class="container">
      <h1 class="companies_text">Our Service</h1>
      <div class="images_main ">
          <h2 id="demo03"></h2>
          <div class="hover03 column">
              <div>
                  <figure><img src="/static-asset/img2/img-1.png"></figure>
                  <span>Marketing jobs</span>
              </div>
              <div>
                  <figure><img src="/static-asset/img2/img-2.png"></figure>
                  <span>Industrial jobs</span>
              </div>
              <div>
                  <figure><img src="/static-asset/img2/img-3.png"></figure>
                  <span>Corporate jobs</span>
              </div>
              <div>
                  <figure><img src="/static-asset/img2/img-1.png"></figure>
                  <span>Marketing jobs</span>
              </div>
          </div>

          <h2 id="demo03"></h2>
          <div class="hover03 column">
              <div>
                  <figure><img src="/static-asset/img2/img-4.png"></figure>
                  <span>Government jobs</span>
              </div>
              <div>
                  <figure><img src="/static-asset/img2/img-1.png"></figure>
                  <span>Marketing jobs</span>
              </div>
              <div>
                  <figure><img src="/static-asset/img2/img-2.png"></figure>
                  <span>Industrial jobs</span>
              </div>
              <div>
                  <figure><img src="/static-asset/img2/img-4.png"></figure>
                  <span>Government jobs</span>
              </div>
          </div>
    </div>
  </div>
	<!-- Government section end-->
<div class="marketing_section layout_padding"  style="background-color: #F5F5F5">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6">
					
				</div>
				<div class="col-md-6">
					
				</div>
			</div>
		</div>
	</div>


</div>



    <!-- Footer Section -->
    <#include "/templates/web/fragments/footer.ftl">

    <!-- Scripts -->
    <#include "/templates/web/fragments/scripts2.ftl">
    <@crafter.body_bottom/>
</body>
</html>
