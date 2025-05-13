<#import "/templates/system/common/crafter.ftl" as crafter />
<header>
    <div class="container-fluid">
        <div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
            <div class="col-lg-4">
                <a href="" class="text-decoration-none">
                    <img src="/static-assets/assets/innova_logo.png" height="70px" />
                    <!-- <span class="h1 text-uppercase text-primary bg-dark px-2">Ideale</span> -->
                    <!-- <span class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">Managment</span> -->
                </a>
            </div>
            <div class="col-lg-4 col-6 text-left">
                <form action="">
                    <div class="input-group">
                        <!-- <input type="text" class="form-control" placeholder="Search for services...">
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary">
                                <a href="/services?query=tbi">
                                    <i class="fa fa-search"></i>
                                </a>
                            </span>
                        </div> -->
                        
                        
                        
                        <#assign query = RequestParameters.query?default("") />
                        
                        <!-- <input type="text" id="searchInput" class="form-control" placeholder="Cerca un servizio..." value="${query?default("")}">
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary">
                                <a href="javascript:void(0);" onclick="searchServices()">
                                    <i class="fa fa-search"></i>
                                </a>
                            </span>
                        </div> -->
                    </div>
                </form>
            </div>
        <!--
            <div class="col-lg-4 col-6 text-right">
                <a href="/login" class="btn btn-primary text-uppercase px-4" id="login-btn">Accedi/Registrati</a>
                <a href="javascript:void(0);" class="btn btn-primary text-uppercase px-4" id="logout-btn" style="display:none" onclick="logout()">Logout</a>
            </div>
        -->            
        </div>
    </div>
</header>
