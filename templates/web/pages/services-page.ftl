<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en">
<#include "/templates/web/fragments/head.ftl">
<body>
    <#include "/templates/web/fragments/header.ftl">
    <#include "/templates/web/fragments/navigation.ftl">
    
    <#assign categoryName = RequestParameters.category?default("") />
    <#assign categoryURL = RequestParameters.categoryURL?default("") />
    <#assign subCategoryName = RequestParameters.subCategory?default("") />
    <#assign subCategoryURL = RequestParameters.subCategoryURL?default("") />
    <#assign query = RequestParameters.query?default("") />
    <#assign courseTree = siteItemService.getSiteTree('/site/components/services', 3) />
    <#macro listFilteredItems(tree)>
        <#if tree.childItems?has_content>
            <#list tree.childItems as item>
                <#if item.isFolder()>
                    <!-- Get child items for the folder -->
                    <#assign childTree = siteItemService.getSiteTree(item.storeUrl, 1) />
                    <#if childTree?has_content>
                        <@listFilteredItems childTree />
                    </#if>
                <#else>
                    <#if query?has_content>
                        <!-- Query filtering -->
                        <#if item.queryValue('name_s')?lower_case?contains(query?lower_case)>
                            <#assign itemData = siteItemService.getSiteItem(item.storeUrl) />
                            <#assign contentModel = itemData />
                            <div class="col-lg-4 col-md-6 col-sm-6 pb-1">
                                <#include "/templates/web/items/service-template.ftl" />
                            </div>
                        </#if>
                    <#elseif categoryName?has_content && !subCategoryName?has_content>
                        <!-- Category filtering -->
                        <#if item.storeUrl?lower_case?contains(categoryName?lower_case)>
                            <#assign itemData = siteItemService.getSiteItem(item.storeUrl) />
                            <#assign contentModel = itemData />
                            <div class="col-lg-4 col-md-6 col-sm-6 pb-1">
                                <#include "/templates/web/items/service-template.ftl" />
                            </div>
                        </#if>
                    <#elseif categoryName?has_content && subCategoryName?has_content>
                        <!-- Subcategory filtering -->
                        <#if item.storeUrl?lower_case?contains(subCategoryName?lower_case)>
                            <#assign itemData = siteItemService.getSiteItem(item.storeUrl) />
                            <#assign contentModel = itemData />
                            <div class="col-lg-4 col-md-6 col-sm-6 pb-1">
                                <#include "/templates/web/items/service-template.ftl" />
                            </div>
                        </#if>
                    <#else>
                        <!-- Default: Display all items -->
                        <#assign itemData = siteItemService.getSiteItem(item.storeUrl) />
                        <#assign contentModel = itemData />
                        <div class="col-lg-4 col-md-6 col-sm-6 pb-1">
                            <#include "/templates/web/items/service-template.ftl" />
                        </div>
                    </#if>
                </#if>
            </#list>
        <#else>
            <p>No items found in this tree.</p>
        </#if>
    </#macro>

    
    <div class="container-fluid">
        <div class="row px-xl-5">
            <div class="col-12">
                <nav class="breadcrumb bg-light mb-30">
                    <a class="breadcrumb-item text-dark" href="/index">Home</a>
                    <a class="breadcrumb-item text-dark" href="//services">Services</a>
                    <#if categoryName?has_content>
                        <span class="breadcrumb-item active">${categoryName}</span>
                    <#else>
                        <span class="breadcrumb-item active">All</span>
                    </#if>
                </nav>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <#include "/templates/web/components/category-list.ftl"> 
    </div>
    <div class="container-fluid">
        <div class="row px-xl-5">
            <div class="col-lg-3 col-md-4">
                <!-- Price Start -->
                <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Filter by Price</span></h5>
                <div class="bg-light p-4 mb-30">
                    <form id="filterPriceForm">
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="price-all" value="all" name="price">
                            <label class="custom-control-label" for="price-all">All Price</label>
                            <span class="badge border font-weight-normal">800</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-1" value="0-500" name="price">
                            <label class="custom-control-label" for="price-1">€0 - €500</label>
                            <!--<span class="badge border font-weight-normal">100</span> -->
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-2" value="500-1000" name="price">
                            <label class="custom-control-label" for="price-2">€500 - €1000</label>
                            <!--<span class="badge border font-weight-normal">100</span> -->
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-3" value="1000-3000" name="price">
                            <label class="custom-control-label" for="price-3">€1000 - €3000</label>
                            <!--<span class="badge border font-weight-normal">100</span> -->
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-9" value="3000-5000" name="price">
                            <label class="custom-control-label" for="price-9">€3000 - €5000</label>
                            <!--<span class="badge border font-weight-normal">100</span> -->
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                            <input type="checkbox" class="custom-control-input" id="price-10" value="5000-10000" name="price">
                            <label class="custom-control-label" for="price-10">€5000 - €10000</label>
                            <!--<span class="badge border font-weight-normal">100</span> -->
                        </div>
                    </form>
                </div>
                <!-- Price End -->
                
                <!-- Tag Start -->
                
                <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Filter by Tag</span></h5>
                <div class="bg-light p-4 mb-30">
                    <form id="filterTagForm">
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="tag-all" value="all" name="tag">
                            <label class="custom-control-label" for="tag-all">All Tags</label>
                            <span class="badge border font-weight-normal">400</span>
                        </div>
                        
                      <#-- Step 1: Fetch all tags -->
<#assign itemData = siteItemService.getSiteItem('/site/taxonomy/tags.xml') />
<#assign allTags = itemData.items.item />
<#assign tagsFromCategory = [] />

    <#-- Check if category is selected but subcategory is not -->
    <#if categoryURL?has_content && !subCategoryURL?has_content>
        <#assign catDataMain = siteItemService.getSiteItem(categoryURL) />
        <#if catDataMain.isFolder()>
            <#-- Fetch sub-items if it's a folder -->
            <#assign subData = siteItemService.getSiteTree(categoryURL, 1) />
            <#list subData as subItem>
                <#if subItem.tags_o??>
                    <#list subItem.tags_o.item as tag>
                        <#if !(tagsFromCategory?seq_contains(tag))>
                            <#assign tagsFromCategory = tagsFromCategory + [tag] />
                        </#if>
                    </#list>
                </#if>
            </#list>
        <#else>
            <#-- If not a folder, check for tags directly -->
            <#if catDataMain.descriptorDom.component.tags_o??>
                <#assign tagsFromCategory = catDataMain.descriptorDom.component.tags_o.item />
            </#if>
        </#if>
    
    <#-- Check if both category and subcategory are selected -->
    <#elseif categoryURL?has_content && subCategoryURL?has_content>
        <#assign subCatDataMain = siteItemService.getSiteItem(subCategoryURL) />
        <#if subCatDataMain.isFolder()>

            <#-- Fetch sub-items if it's a folder -->
            <#assign subItems = siteItemService.getSiteTree(subCategoryURL, 1) />
            <#list subItems as subItem>
                <#if subItem.tags_o??>
                    <#list subItem.tags_o.item as tag>
                        <#if !(tagsFromCategory?seq_contains(tag))>
                        <div>${tag}</div>
                            <#assign tagsFromCategory = tagsFromCategory + [tag] />
                        </#if>
                    </#list>
                </#if>
            </#list>
        <#else>
            <#-- If not a folder, check for tags directly -->
            <#if subCatDataMain.tags_o??>
                <#assign tagsFromCategory = subCatDataMain.tags_o.item />
            </#if>
        </#if>
    
    <#else>
        <#-- Default to all tags if no category or subcategory is selected -->
        <#assign tagsFromCategory = allTags />
    </#if>
<#-- Step 4: Display the filtered tags -->

    <#list tagsFromCategory as tag>
          <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id=${tag.key} value="${tag.key}" name="tag">
                            <label class="custom-control-label" for=${tag.key}>${tag.value?default(tag.value_smv)}</label>
                            <span class="badge border font-weight-normal">150</span>
            </div>
    </#list>
                        
                    
                    </form>
                </div>
                <!-- Tag End -->
            </div>
            
            
            <!-- service products -->
            
            <div class="col-lg-9 col-md-8">
                <div class="row pb-3 filterResults">
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
                    
                        
                    <#if courseTree?has_content>
                        <@listFilteredItems courseTree />
                    <#else>
                        <div class="col-12">
                            <p>No service available.</p>
                        </div>
                    </#if>
                    
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
</body>
</html>
