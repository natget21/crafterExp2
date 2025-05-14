<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
<#include "/templates/web/fragments/head.ftl">
<body>
    <@crafter.body_top/>
    <#include "/templates/web/fragments/header.ftl">
    <#include "/templates/web/fragments/navigation.ftl">
    
    <#assign categoryName = RequestParameters.category?default("") />
    <#assign categoryURL = RequestParameters.categoryURL?default("") />
    <#assign subCategoryName = RequestParameters.subCategory?default("") />
    <#assign subCategoryURL = RequestParameters.subCategoryURL?default("") />
    <#assign query = RequestParameters.query?default("") />
    <#assign courseTree = siteItemService.getSiteTree('/site/components/services', 3) />

    <#-- Prima della macro, inizializza showItemsFound come variabile globale -->
    <#global showItemsFound = false>
    
    <#macro listFilteredItems(tree)>
        <#if tree.childItems?has_content>
            <#list tree.childItems as item>
                <#if item.isFolder()>
                    <#assign childTree = siteItemService.getSiteTree(item.storeUrl, 1) />
                    <#if childTree?has_content>
                        <@listFilteredItems childTree />
                    </#if>
                <#else>
                    <#assign displayItem = false>
                    <#if query?has_content>
                        <#if item.queryValue('name_s')?lower_case?contains(query?lower_case)>
                            <#assign displayItem = true>
                        </#if>
                    <#elseif categoryName?has_content && !subCategoryName?has_content>
                        <#if item.storeUrl?lower_case?contains(categoryName?lower_case)>
                            <#assign displayItem = true>
                        </#if>
                    <#elseif categoryName?has_content && subCategoryName?has_content>
                        <#if item.storeUrl?lower_case?contains(subCategoryName?lower_case)>
                            <#assign displayItem = true>
                        </#if>
                    <#else>
                        <#assign displayItem = true>
                    </#if>
    
                    <#if displayItem>
                        <#assign itemData = siteItemService.getSiteItem(item.storeUrl) />
                        <#assign contentModel = itemData />
                        <div class="col-12 pb-1">
                            <#include "/templates/web/items/service-template.ftl" />
                        </div>
                        <#global showItemsFound = true>
                    </#if>
                </#if>
            </#list>
        </#if>
    </#macro>
    
    
    <#if tree??>
        <@listFilteredItems tree />
    </#if>



    
    
    <div
      class="banner_section banner_catalogo layout_padding d-flex align-items-center"
    >
      <img class="banner_img" src="static-assets/assets/catalogo.png">
      <div class="container">
        <h1 class="best_taital text-center dark p-0">Catalogo Servizi</h1>
      </div>
    </div>
    <div class="text-center mb-4 pt-5" style="padding-top: 28px !important;">
    <#if categoryName?has_content>
        <nav class="breadcrumb bg-light mb-30" style="padding-left: 15px">
            <a class="breadcrumb-item" href="/catalog">Catalogo Servizi</a>
            <span class="breadcrumb-item active">${categoryName}</span>
        </nav>
        <#else>
            <h2 class="section-title px-5"><span class="px-2 explore bg-white">Esplora le categorie del catalogo </span></h2>
    </#if>
    </div>
    <div class="d-flex pt-3">
        <div class="col-3">
        <!-- Tag Start -->
                
                <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-white pr-3">Filtra per tag</span></h5>
                <div class="bg-light p-4 mb-30" style="border: 1px solid lightgrey; border-radius: 10px; height: 400px; overflow-y: scroll;">
                    
                </div>
                <!-- Tag End -->
        </div>
        <div class="col-9">
        
          <#include "/templates/web/components/category-list.ftl">
        
          <#if categoryName?has_content>
              <ul class="nav nav-tabs mb-4 d-flex">
                <li class="nav-item col">
                  <a class="nav-link active text-center" aria-current="page" href="#"
                    >Categoria</a
                  >
                </li>
                <li class="nav-item col">
                  <a class="nav-link text-muted text-center" href="#">Categoria</a>
                </li>
                <li class="nav-item col">
                  <a class="nav-link text-muted text-center" aria-current="page" href="#"
                    >Categoria</a
                  >
                </li>
                <li class="nav-item col">
                  <a class="nav-link text-muted text-center" href="#">Categoria</a>
                </li>
              </ul>
          </#if>
            <#if courseTree?has_content>
                <@listFilteredItems courseTree />
            </#if>

            <#if showItemsFound?? && !showItemsFound>
                <div class="col-12">
                    <p class="text-center">Nessun servizio disponibile.</p>
                </div>
            </#if>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row px-xl-5">
            <!-- service products -->

            
            <div class="col-lg-9 col-md-8">
                <div class="row pb-3 filterResults" style="gap: 16px;">
                    <!-- <div class="col-12 pb-1">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <div>
                                <button class="btn btn-sm btn-light"><i class="fa fa-th-large"></i></button>
                                <button class="btn btn-sm btn-light ml-2"><i class="fa fa-bars"></i></button>
                            </div>
                            <div class="ml-2">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">Sorting</button>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="#">Latest</a>
                                        <a class="dropdown-item" href="#">Popularity</a>
                                        <a class="dropdown-item" href="#">Best Rating</a>
                                    </div>
                                </div>
                                <div class="btn-group ml-2">
                                    <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">Showing</button>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="#">10</a>
                                        <a class="dropdown-item" href="#">20</a>
                                        <a class="dropdown-item" href="#">30</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> -->
                    

                    
                    <!-- <div class="col-12">
                        <nav>
                          <ul class="pagination justify-content-center">
                            <li class="page-item disabled"><a class="page-link" href="#">Previous</span></a></li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                          </ul>
                        </nav>
                    </div> -->
                </div>
            </div>
        </div>
    </div>
    
    <#include "/templates/web/fragments/footer.ftl">
    <#include "/templates/web/fragments/scripts.ftl">
    <@crafter.body_bottom/>
</body>
</html>
