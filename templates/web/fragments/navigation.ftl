<#import "/templates/system/common/crafter.ftl" as crafter />
<#assign currentUrl = request.requestURI?default("") />

<div id="default-nav" style="display:none" class="container-fluid bg-dark2 ">
        <div class="row px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn d-flex align-items-center justify-content-between bg-primary w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
                    <h6 class="text-dark m-0"><i class="fa fa-bars mr-2"></i>Categorie</h6>
                    <i class="fa fa-angle-down text-dark"></i>
                </a>
                <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
                    <div class="navbar-nav w-100">
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
                                        <a href="/services?category=${categoryItem.queryValue('internal-name')?url?default("")}&categoryURL=${category.storeUrl?url?default("")}" class="nav-link dropdown-toggle" data-toggle="dropdown">
                                            ${categoryItem.queryValue('name_s')}
                                            <#if relatedSubcategories?has_content>
                                                <i class="fa fa-angle-right float-right mt-1"></i>
                                            </#if>
                                        </a>
                                        <#if relatedSubcategories?has_content>
                                            <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                                                <#list relatedSubcategories as subcategory>
                                                    <#assign subCategoryItem = siteItemService.getSiteItem(subcategory.storeUrl) />
                                                    <a href="/services?category=${categoryItem.queryValue('internal-name')?url?default("")}&categoryURL=${category.storeUrl?url?default("")}&subCategory=${subCategoryItem.queryValue('internal-name')?url?default("")}&subCategoryURL=${subcategory.storeUrl?url?default("")}" class="dropdown-item">
                                                        ${subCategoryItem.queryValue('name_s')}
                                                    </a>
                                                </#list>
                                            </div>
                                        </#if>
                                    </div>
                                </#list>
                            <#else>
                                <p>No categories found.</p>
                            </#if>
                        </div>
                </nav>
            </div>
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
                    <a href="" class="text-decoration-none d-block d-lg-none">
                        <span class="h1 text-uppercase text-dark bg-light px-2">Ideale</span>
                        <!-- <span class="h1 text-uppercase text-light bg-primary px-2 ml-n1">Shop</span> -->
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                        
                            <a href="/index" class="nav-item nav-link <#if currentUrl?starts_with("/index")>active</#if>"><i class="fa fa-home mt-1"></i> HOME</a>
                            
                            <a id="catalog-btn" href="/services" class="nav-item nav-link <#if currentUrl?starts_with("/services")>active</#if>" >CATALOG</a>
                            
                            <a href="/project" class="nav-item nav-link <#if currentUrl?starts_with("/project")>active</#if>">PROGETTO</a>
                            <a href="/partner" class="nav-item nav-link <#if currentUrl?starts_with("/partner")>active</#if>">PARTNER</a>
                        
                            <div class="nav-item dropdown">
                                <a href="" class="nav-item nav-link dropdown-toggle" data-toggle="dropdown">SERVIZI <i class="fa fa-angle-down mt-1"></i></a>
                                <div class="dropdown-menu  rounded-0 border-0 m-0">
                                    <a href="/consulenza" class="nav-item nav-link sublink <#if currentUrl?starts_with("/consulenza")>active</#if>">Consulenza</a>
                                    <a href="/finance" class="nav-item nav-link sublink <#if currentUrl?starts_with("/finance")>active</#if>">Finance</a>
                                    <a href="/networking" class="nav-item nav-link sublink <#if currentUrl?starts_with("/networking")>active</#if>">Networking</a>
                                    <a href="/tecnologie" class="nav-item nav-link sublink <#if currentUrl?starts_with("/tecnologie")>active</#if>">Tecnologie</a>
                                    <a href="/skills-training" class="nav-item nav-link sublink <#if currentUrl?starts_with("/skills-training")>active</#if>">Skills & Training</a>
                                    <a href="/test-before-invest" class="nav-item nav-link sublink <#if currentUrl?starts_with("/test-before-invest")>active</#if>">Test before invest</a>
                                </div>
                            </div>
                            <a href="/event" class="nav-item nav-link <#if currentUrl?starts_with("/event")>active</#if>">EVENTI</a>
                            <a href="/news" class="nav-item nav-link <#if currentUrl?starts_with("/news")>active</#if>">NEWS</a>

                            
                            <a href="/contact" class="nav-item nav-link <#if currentUrl?starts_with("/contact")>active</#if>">CONTATTI</a>
                        
                           
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">DASHBOARD <i class="fa fa-angle-down mt-1"></i></a>
                                <div class="dropdown-menu  rounded-0 border-0 m-0">
                                    <a href="/partner-login" class="nav-item nav-link sublink <#if currentUrl?starts_with("/partner-login")>active</#if>">Partner Login</a>
                                    <a href="/hub-manager" class="nav-item nav-link sublink <#if currentUrl?starts_with("/hub-manager")>active</#if>">Hub Manager Login</a>
                                </div>
                            </div>
                            
                        </div>
                        <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                        
                      
                        
                            <!-- <a href="" class="btn px-0">
                                <i class="fas fa-heart text-primary"></i>
                                <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                            </a> -->
                            <a href="/order" class="btn px-0 ml-3" id="order-btn" style="display:none">
                                <i class="fas fa-list text-primary"></i>
                                <!--<span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>-->
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>