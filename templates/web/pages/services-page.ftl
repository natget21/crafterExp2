<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en">
<#include "/templates/web/fragments/head.ftl">
<body>
    <#include "/templates/web/fragments/header.ftl">
    <#include "/templates/web/fragments/navigation.ftl">
    
    <#assign categoryName = RequestParameters.category?default("") />
    <#assign subCategoryName = RequestParameters.subCategory?default("") />
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
                        <#assign subcategoryRef = item.queryValue('subcategory_o') />
                        <#if subcategoryRef?has_content>
                            <#assign subcategoryData = siteItemService.getSiteItem(subcategoryRef) />
                            <#if subcategoryData.queryValue('name_s')?lower_case == categoryName?lower_case>
                                <#assign itemData = siteItemService.getSiteItem(item.storeUrl) />
                                <#assign contentModel = itemData />
                                <div class="col-lg-4 col-md-6 col-sm-6 pb-1">
                                    <#include "/templates/web/items/service-template.ftl" />
                                </div>
                            </#if>
                        </#if>
                    <#elseif categoryName?has_content && subCategoryName?has_content>
                        <!-- Subcategory filtering -->
                        <#assign subcategoryRef = item.queryValue('subcategory_o')?default("") />
                        <#assign itemData1 = siteItemService.getSiteItem(item.storeUrl,3) />
                        <p>item - ${item.queryValue('name_s')} 1- ${item.toString()} 2- ${itemData1.toString()}</p>
                        <#if subcategoryRef?has_content && subcategoryRef.item?has_content>
                            <#list subcategoryRef.item as subItem>
                                <#if subItem.value?lower_case == subCategoryName?lower_case>
                                    <#assign itemData = siteItemService.getSiteItem(item.storeUrl) />
                                    <#assign contentModel = itemData />
                                    <div class="col-lg-4 col-md-6 col-sm-6 pb-1">
                                        <#include "/templates/web/items/service-template.ftl" />
                                    </div>
                                </#if>
                            </#list>
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
                <p>query - ${query}</p>
                <p>cat - ${categoryName}</p>
                <p>sub-cat - ${subCategoryName}</p>
            </div>
        </div>
    </div>
    
    <div class="container-fluid">
        <div class="row px-xl-5">
            <div class="col-12">
                <nav class="breadcrumb bg-light mb-30">
                    <a class="breadcrumb-item text-dark" href="#">Home</a>
                    <a class="breadcrumb-item text-dark" href="#">Services</a>
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
        <div class="row px-xl-5">
            <!-- Price Tag -->
            <div class="col-lg-3 col-md-4">
            <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Filter by Tag</span></h5>
                <div class="bg-light p-4 mb-30">
                    <form id="filterForm">
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="price-all" value="all" name="price">
                            <label class="custom-control-label" for="price-all">All Tags</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-1" value="0-100" name="price">
                            <label class="custom-control-label" for="price-1">Hardware</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-2" value="100-100" name="price">
                            <label class="custom-control-label" for="price-2">Software</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-3" value="200-300" name="price">
                            <label class="custom-control-label" for="price-3">Service</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                    </form>
                </div>
                <!-- Tag End -->
                
                <!-- Price Start -->
                <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Filter by price</span></h5>
                <div class="bg-light p-4 mb-30">
                    <form id="filterForm">
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="price-all" value="all" name="price">
                            <label class="custom-control-label" for="price-all">All Price</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-1" value="0-100" name="price">
                            <label class="custom-control-label" for="price-1">$0 - $100</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-2" value="100-100" name="price">
                            <label class="custom-control-label" for="price-2">$100 - $200</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-3" value="200-300" name="price">
                            <label class="custom-control-label" for="price-3">$200 - $300</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-4" value="300-400" name="price">
                            <label class="custom-control-label" for="price-4">$300 - $400</label>
                            <span class="badge border font-weight-normal">145</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                            <input type="checkbox" class="custom-control-input" id="price-5" value="400-500" name="price">
                            <label class="custom-control-label" for="price-5">$400 - $500</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                    </form>
                </div>
                <!-- Price End -->
                
                

               
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
                    
                    <div class="col-12">
                        <nav>
                          <ul class="pagination justify-content-center">
                            <li class="page-item disabled"><a class="page-link" href="#">Previous</span></a></li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                          </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <#include "/templates/web/fragments/footer.ftl">
    <#include "/templates/web/fragments/scripts.ftl">
</body>
</html>










