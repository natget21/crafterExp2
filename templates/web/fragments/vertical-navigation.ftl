<div class="col-lg-3 d-none d-lg-block">
    <a class="btn d-flex align-items-center justify-content-between bg-primary w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; padding: 0 30px;">
        <h6 class="text-dark m-0"><i class="fa fa-bars mr-2"></i>Categories</h6>
        <i class="fa fa-angle-down text-dark"></i>
    </a>
    <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
        <div class="navbar-nav w-100">
            <#list categories as category>
                <#if category.subcategories?has_content>
                    <div class="nav-item dropdown dropright">
                        <a href="${category.link}" class="nav-link dropdown-toggle" data-toggle="dropdown">${category.name} <i class="fa fa-angle-right float-right mt-1"></i></a>
                        <div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
                            <#list category.subcategories as subcategory>
                                <a href="${subcategory.link}" class="dropdown-item">${subcategory.name}</a>
                            </#list>
                        </div>
                    </div>
                <#else>
                    <a href="${category.link}" class="nav-item nav-link">${category.name}</a>
                </#if>
            </#list>
        </div>
    </nav>
</div>
