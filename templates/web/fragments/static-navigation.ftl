<#import "/templates/system/common/crafter.ftl" as crafter />
<#assign currentUrl = request.requestURI?default("") />

<div id="static-nav" style="display:none" class="container-fluid bg-dark2">
        <div class="row px-xl-5" style="border-bottom:1px solid;">
            
            <div class="col-lg-12">
                <nav class="navbar navbar-expand-lg navbar-dark py-3 py-lg-0 px-0">
                    <a href="" class="text-decoration-none d-block d-lg-none">
                        <img src="/static-assets/assets/ideale_logo.png" height="70px" />
                        <!-- <span class="h1 text-uppercase text-light bg-primary px-2 ml-n1">Shop</span> -->
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse" >
                        <div class="navbar-nav mr-auto py-0">
                            <a href="/index" class="nav-item nav-link <#if currentUrl?starts_with("/index")>active</#if>"><i class="fa fa-home mt-1"></i> HOME</a>
                            
                            <a href="/project" class="nav-item nav-link <#if currentUrl?starts_with("/project")>active</#if>">PROGETTO</a>
                        
                            <div class="nav-item dropdown">
                                <a href="/partner" class="nav-item nav-link dropdown-toggle">PARTNER <i class="fa fa-angle-down mt-1"></i></a>
                                <div class="dropdown-menu rounded-0 border-0 m-0">
                                    <a href="/partner-detail?id=67dd8279c70ba0680bdc849d" class="nav-item nav-link sublink">Synthesis3</a>
                                    <a href="/partner-detail?id=67fce234f647a63da899d027" class="nav-item nav-link sublink">Sinergia</a>
                                    <a href="/networking" class="nav-item nav-link sublink <#if currentUrl?starts_with("/networking")>active</#if>">Skilla</a>
                                </div>
                            </div>
                        
                            <div class="nav-item dropdown">
                                <a href="/services" class="nav-item nav-link dropdown-toggle">SERVIZI <i class="fa fa-angle-down mt-1"></i></a>
                                <div class="dropdown-menu  rounded-0 border-0 m-0">
                                    <a href="/consulenza" class="nav-item nav-link sublink <#if currentUrl?starts_with("/consulenza")>active</#if>">Consulenza</a>
                                    <a href="/finance" class="nav-item nav-link sublink <#if currentUrl?starts_with("/finance")>active</#if>">Finance</a>
                                    <a href="/networking" class="nav-item nav-link sublink <#if currentUrl?starts_with("/networking")>active</#if>">Networking</a>
                                    <a href="/skills-training" class="nav-item nav-link sublink <#if currentUrl?starts_with("/skills-training")>active</#if>">Skills & Training</a>
                                    <a href="/test-before-invest" class="nav-item nav-link sublink <#if currentUrl?starts_with("/test-before-invest")>active</#if>">Test before invest</a>
                                </div>
                            </div>
                            <a href="/event" class="nav-item nav-link <#if currentUrl?starts_with("/event")>active</#if>">EVENTI</a>
                            <a href="/news" class="nav-item nav-link <#if currentUrl?starts_with("/news")>active</#if>">NEWS</a>
                            <a href="/faq" class="nav-item nav-link">FAQ</a>
                            <a href="/contact" class="nav-item nav-link <#if currentUrl?starts_with("/contact")>active</#if>">CONTATTI</a>
                            <div class="nav-item dropdown">
                                <a class="nav-item nav-link dropdown-toggle">CATALOGO <i class="fa fa-angle-down mt-1"></i></a>
                                <div class="dropdown-menu  rounded-0 border-0 m-0">
                                    <#assign categoriesTree = siteItemService.getSiteTree('/site/components/category', 1)>
                                    <#assign subCategoriesTree = siteItemService.getSiteTree('/site/components/sub_category', 1)>
                                        <#if categoriesTree?has_content>
                                            <#list categoriesTree.childItems as category>
                                                <#assign categoryItem = siteItemService.getSiteItem(category.storeUrl) />
                                                
                                                <#assign relatedSubcategories = subCategoriesTree.childItems?filter(subcategory -> 
                                                     (siteItemService.getSiteItem(subcategory.storeUrl)?has_content && 
                                                        siteItemService.getSiteItem(subcategory.storeUrl).category_o?has_content && 
                                                        siteItemService.getSiteItem(subcategory.storeUrl).category_o.item[0]?has_content && 
                                                        siteItemService.getSiteItem(subcategory.storeUrl).category_o.item[0].key == category.storeUrl)) /> 
            
                                                        
                                                    <div class="nav-item dropdown dropright">
                                                    <a href="/catalog?category=${categoryItem.queryValue('internal-name')?url?default("")}&categoryURL=${category.storeUrl?url?default("")}" class="nav-link dropdown-toggle d-flex justify-content-between" data-toggle="dropdown" style="box-shadow: none !important;">
                                                        <span style="max-width: 170px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${categoryItem.queryValue('name_s')}</span>
                                                        <#if relatedSubcategories?has_content>
                                                            <i class="fa fa-angle-right float-right mt-1"></i>
                                                        </#if>
                                                    </a>
                                                    <#if relatedSubcategories?has_content>
                                                        <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                                            <#list relatedSubcategories as subcategory>
                                                                <#assign subCategoryItem = siteItemService.getSiteItem(subcategory.storeUrl) />
                                                                <a href="/catalog?category=${categoryItem.queryValue('internal-name')?url?default("")}&categoryURL=${category.storeUrl?url?default("")}&subCategory=${subCategoryItem.queryValue('internal-name')?url?default("")}&subCategoryURL=${subcategory.storeUrl?url?default("")}" class="dropdown-item">
                                                                    ${subCategoryItem.queryValue('name_s')}
                                                                </a>
                                                            </#list>
                                                        </div>
                                                    </#if>
                                                </div>
                                            </#list>
                                        <#else>
                                            <p>Nessuna categoria trovata</p>
                                        </#if>
                                </div>
                            </div>
                            
                            
                            
                            
                        </div>
                        <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">ACCEDI <i class="fa fa-angle-down mt-1"></i></a>
                                <div class="dropdown-menu  rounded-0 border-0 m-0">
                                    <a href="/partner-login" class="nav-item nav-link sublink <#if currentUrl?starts_with("/partner-login")>active</#if>">Partner</a>
                                    <a href="/hub-manager" class="nav-item nav-link sublink <#if currentUrl?starts_with("/hub-manager")>active</#if>">Hub Manager</a>
                                </div>
                            </div>
                            <a href="/order" class="btn px-0 ml-3" id="order-btn" style="display:none">
                                <i class="fas fa-list text-primary"></i>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>