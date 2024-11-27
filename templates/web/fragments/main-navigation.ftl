<div class="col-lg-9">
    <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3 py-lg-0 px-0">
        <a href="/" class="text-decoration-none d-block d-lg-none">
            <span class="h1 text-uppercase text-dark bg-light px-2">Multi</span>
            <span class="h1 text-uppercase text-light bg-primary px-2 ml-n1">Shop</span>
        </a>
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
            <div class="navbar-nav mr-auto py-0">
                <#list navLinks as navLink>
                    <#if navLink.hasDropdown>
                        <div class="nav-item dropdown">
                            <a href="${navLink.link}" class="nav-link dropdown-toggle" data-toggle="dropdown">${navLink.name} <i class="fa fa-angle-down mt-1"></i></a>
                            <div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
                                <#list navLink.dropdownLinks as dropdownLink>
                                    <a href="${dropdownLink.link}" class="dropdown-item">${dropdownLink.name}</a>
                                </#list>
                            </div>
                        </div>
                    <#else>
                        <a href="${navLink.link}" class="nav-item nav-link">${navLink.name}</a>
                    </#if>
                </#list>
            </div>
            <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                <a href="#" class="btn px-0">
                    <i class="fas fa-heart text-primary"></i>
                    <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                </a>
                <a href="#" class="btn px-0 ml-3">
                    <i class="fas fa-shopping-cart text-primary"></i>
                    <span class="badge text-secondary border border-secondary rounded-circle" style="padding-bottom: 2px;">0</span>
                </a>
            </div>
        </div>
    </nav>
</div>
