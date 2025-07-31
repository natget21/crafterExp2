<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
<#include "/templates/web/fragments/head.ftl">
<body>
    <@crafter.body_top/>
    <#include "/templates/web/fragments/header.ftl">
    <#include "/templates/web/fragments/navigation.ftl">
    <#include "/templates/web/fragments/static-navigation.ftl">
    <#include "/templates/web/components/chat-bot.ftl"> 
    
    <#assign filterByCategory = RequestParameters.category?default("") />
    <#assign courses = siteItemService.getSiteTree('/site/components/services', 3) />
    
    <#assign categories = siteItemService.getSiteTree('/site/components/category', 1)>
    <#assign subCategories = siteItemService.getSiteTree('/site/components/sub_category', 1)>
    <#assign courseCounter = 0 />
    
    
    <#macro listCourses(tree)>
        <#if tree.childItems?has_content>
            <#list tree.childItems as item>
                <#if item.isFolder()>
                    <#assign childTree = siteItemService.getSiteTree(item.storeUrl, 1) />
                    <#if childTree?has_content>
                        <@listCourses childTree />
                    </#if>
                <#else>
                    <#assign course = siteItemService.getSiteItem(item.storeUrl) />
                    
                    <#if item.storeUrl?contains(filterByCategory?lower_case?replace(" ", "-"))>
                        <#assign courseCounter = courseCounter + 1 />
                        <#assign contentModel = course />
                        <div class="col-12 pb-1">
                            <#include "/templates/web/items/service-template.ftl" />
                        </div>
                    </#if>
                </#if>
            </#list>
        </#if>
    </#macro>
    
    <div class="banner_section banner_catalogo layout_padding d-flex align-items-center">
      <img class="banner_img" src="static-assets/assets/catalogo.png">
      <div class="container">
        <h1 class="best_taital text-center dark p-0">Catalogo Servizi (${courseCounter})</h1>
      </div>
    </div>
    

    </div>
    <div class="d-flex pt-3">
        <div class="col-3 border p-0 m-2 w-100 h-100" style="border-radius: 10px; overflow: hidden;">
        
        <!-- Tag Start -->
        <h4 class="text-center bg-primary text-white m-0 p-1">TAGS</h6>
        <hr class="my-0 p-0" />
        <div class="p-2" >
            <#if categories?has_content>
                <#list categories.childItems as categoryItem>
                    <#assign category = siteItemService.getSiteItem(categoryItem.storeUrl) />
                    <#assign categoryName = category.queryValue("internal-name")?default("") />
                    <h5 class="mt-2">${categoryName}:</h5>
                    <#assign relatedSubCategories = subCategories.childItems?filter(subCategory -> (
                        siteItemService.getSiteItem(subCategory.storeUrl)?has_content && 
                        siteItemService.getSiteItem(subCategory.storeUrl).category_o?has_content && 
                        siteItemService.getSiteItem(subCategory.storeUrl).category_o.item[0]?has_content && 
                        siteItemService.getSiteItem(subCategory.storeUrl).category_o.item[0].key == category.storeUrl)
                    ) /> 
                    <#list relatedSubCategories as subCategoryItem>
                        <#assign subCategory = siteItemService.getSiteItem(subCategoryItem.storeUrl) />
                        <#assign subCategoryName = subCategory.queryValue("name_s")?default("") />
                        <a href="/catalog?category=${subCategoryName}" class="d-block ms-3">- ${subCategoryName}</a>
                    </#list>
                </#list>
            </#if>
        </div>
    </div>
    <div class="col-9">
        <label class="text-muted">
            Benvenuto nel nostro catalogo.
            Se già sai cosa ti interessa utilizza il menù a sinistra per selezionare il tipo di prodotto o servizio che stai cercando, altrimenti puoi chiedere al
            nostro assistente virtuale che sarà felice di aiutarti.
        </label>
          
        <#if filterByCategory?has_content>
            <span class="badge bg-primary me-2 my-auto d-flex p-2 mb-3" style="width: min-content;">
              <span class="d-block my-auto">Filtro per Categoria: ${filterByCategory}</span>
              <a href="/catalog" type="button" class="btn-close btn-close-white btn-sm ms-2" aria-label="Rimuovi filtro"></a>
            </span>
        </#if>
        
        <@listCourses courses />

    </div>
    
    <#include "/templates/web/fragments/footer.ftl">
    <#include "/templates/web/fragments/scripts.ftl">
    <@crafter.body_bottom/>
</body>
</html>
