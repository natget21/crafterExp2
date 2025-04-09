<#import "/templates/system/common/crafter.ftl" as crafter />
<#assign currentUrl = request.requestURI?default("") />

<div id="static-nav" style="display:none" class="container-fluid bg-dark2">
        <div class="row px-xl-5">
            
            <div class="col-lg-12">
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
                            <a href="/index" class="nav-item nav-link active"><i class="fa fa-home mt-1"></i> HOME</a>
                            
                            <a href="/project" class="nav-item nav-link">PROGETTO</a>
                            <a href="/partner" class="nav-item nav-link">PARTNER</a>
                        
                            <div class="nav-item dropdown">
                                <a href="" class="nav-item nav-link dropdown-toggle" data-toggle="dropdown">SERVIZI <i class="fa fa-angle-down mt-1"></i></a>
                                <div class="dropdown-menu  rounded-0 border-0 m-0">
                                    <a href="/consulenza" class="nav-item nav-link sublink">Consulenza</a>
                                    <a href="/finance" class="nav-item nav-link sublink">Finance</a>
                                    <a href="/networking" class="nav-item nav-link sublink">Networking</a>
                                    <a href="/skills-training" class="nav-item nav-link sublink">Skills & Training</a>
                                    <a href="/test-before-invest" class="nav-item nav-link sublink">Test before invest</a>
                                </div>
                            </div>
                            <a href="/event" class="nav-item nav-link">EVENTI</a>
                            <a href="/news" class="nav-item nav-link">NEWS</a>

                            
                            <a href="/contact" class="nav-item nav-link">CONTATTI</a>
                            
                            
                            
                            
                        </div>
                        <div class="navbar-nav ml-auto py-0 d-none d-lg-block">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">DASHBOARD <i class="fa fa-angle-down mt-1"></i></a>
                                <div class="dropdown-menu  rounded-0 border-0 m-0">
                                    <a href="/partner-login" class="nav-item nav-link sublink">Partner Login</a>
                                    <a href="/hub-manager" class="nav-item nav-link sublink">Hub Manager Login</a>
                                </div>
                            </div>
                            <a href="/order" class="btn px-0 ml-3" id="order-btn" style="display:none">
                                <i class="fas fa-list text-primary"></i>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div><#if currentUrl?starts_with("/project")>active</#if>
    </div>