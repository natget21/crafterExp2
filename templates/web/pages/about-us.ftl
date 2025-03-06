<#import "/templates/system/common/crafter.ftl" as crafter />
<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${contentModel.pageTitle?default("About Us")}</title>
    <link rel="stylesheet" href="/static/css/about-us.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <@crafter.head/>
</head>
<body>
<@crafter.body_top/>
    <#include "/templates/web/fragments/header.ftl" />
    
    <section class="about-section">
        <div class="container">
            <div class="row">
                <div class="content-column col-lg-6 col-md-12 col-sm-12 order-2">
                    <div class="inner-column">
                        <div class="sec-title">
                            <span class="title">${contentModel.sectionTitle?default("About Company")}</span>
                            <h2>${contentModel.mainHeading?default("We are leader in <br> Industrial market Since 1992")}</h2>
                        </div>
                        <div class="text">${contentModel.aboutText?default("Lorem ipsum dolor sit amet, consectetur adipisicing elit...")}</div>
                        <ul class="list-style-one">
                            <#list contentModel.features?default([]) as feature>
                                <li>${feature}</li>
                            </#list>
                        </ul>
                        <div class="btn-box">
                            <a href="${contentModel.contactLink?default("#")}" class="theme-btn btn-style-one">Contact Us</a>
                        </div>
                    </div>
                </div>
                
                <div class="image-column col-lg-6 col-md-12 col-sm-12">
                    <div class="inner-column wow fadeInLeft">
                        <figure class="image-1"><a href="${contentModel.image1?default("#")}" class="lightbox-image" data-fancybox="images"><img src="${contentModel.image1?default("https://i.ibb.co/QP6Nmpf/image-1-about.jpg")}" alt=""></a></figure>
                        <figure class="image-2"><a href="${contentModel.image2?default("#")}" class="lightbox-image" data-fancybox="images"><img src="${contentModel.image2?default("https://i.ibb.co/JvN0NVB/image-2-about.jpg")}" alt=""></a></figure>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <#include "/templates/web/fragments/footer.ftl" />
    <@crafter.body_bottom/>
</body>
</html>