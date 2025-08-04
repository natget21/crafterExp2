<#import "/templates/system/common/crafter.ftl" as crafter />
<#assign currentUrl = request.requestURI?default("") />

<div id="default-nav" class="container-fluid bg-dark2 ">
    <div class="row px-xl-5" style="border-bottom: 1px solid black;"
        <div class="col-lg-9">
            <nav class="navbar navbar-expand-lg navbar-dark py-3 py-lg-0 px-0">
                <a href="" class="text-decoration-none d-block d-lg-none">
                    <img src="/static-assets/assets/ideale_logo.png" height="70px" />
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav mr-auto py-0">
                        <a href="/index" class="nav-item nav-link <#if currentUrl?starts_with("/index")>active</#if>">
                            <i class="fa fa-home mt-1 me-2"></i> HOME
                        </a>
                        
                        <a href="/project" class="nav-item nav-link <#if currentUrl?starts_with("/project")>active</#if>">
                            VISIONE
                        </a>
                            
                        <div class="nav-item dropdown">
                            <a href="/partners-page" class="nav-item nav-link dropdown-toggle">
                                PARTNER <i class="fa fa-angle-down mt-1 ms-1"></i>
                            </a>
                            <div id="partners-link-list" class="dropdown-menu  rounded-0 border-0 m-0"></div>
                        </div>
     
                        <div class="navbar-nav ml-auto py-0">
                        
                            <div id="not-authenticated-area" class="d-none">
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">REGISTRATI <i class="fa fa-angle-down mt-1"></i></a>
                                    <div class="dropdown-menu  rounded-0 border-0 m-0">
                                        <a href="/client-signup" class="nav-item nav-link sublink <#if currentUrl?starts_with("/client-signup")>active</#if>">Cliente</a>
                                        <a href="/partner-signup" class="nav-item nav-link sublink <#if currentUrl?starts_with("/partner-signup")>active</#if>">Partner</a>
                                    </div>
                                </div>
                                
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">ACCEDI <i class="fa fa-angle-down mt-1"></i></a>
                                    <div class="dropdown-menu  rounded-0 border-0 m-0">
                                        <a href="/login" class="nav-item nav-link sublink <#if currentUrl?starts_with("/login")>active</#if>">Cliente</a>
                                        <a href="/partner-login" class="nav-item nav-link sublink <#if currentUrl?starts_with("/partner-login")>active</#if>">Partner</a>
                                        <a href="/hub-manager" class="nav-item nav-link sublink <#if currentUrl?starts_with("/hub-manager")>active</#if>">Hub Manager</a>
                                    </div>
                                </div>
                            </div>
                        
                            <div id="authenticated-area" class="nav-item dropdown d-none">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"> AREA RISERVATA <i class="fa fa-angle-down mt-1"></i></a>
                                <div class="dropdown-menu  rounded-0 border-0 m-0">
                                    <a href="/my-orders" id="myOrdersLink" class="nav-item nav-link sublink <#if currentUrl?starts_with("/")>active</#if>">
                                        I tuoi ordini
                                    </a>
                                    <a id="logout-btn-test" href="javascript:void(0);" class="nav-item nav-link sublink" onclick="logout()">
                                        Esci
                                    </a>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>
    
<script>

    document.addEventListener("DOMContentLoaded", async function () {
        const partenersLinkContainer = document.getElementById("partners-link-list");
        if(partenersLinkContainer) { await loadPartners(partenersLinkContainer); }
    });
    
    async function loadPartners(container) {
        const url = "https://api.shortcut.uno/v1/Ideale-partner/getAllPartners";
        const headers = { "Authorization": "Bearer ${token}" };        
        const response = await fetch(url, { method: 'GET', headers });
        if(response.ok) {
            const partners = await response.json() ?? [];
            for(let partner of partners) {
                const link = document.createElement("a");
                link.href = "/partners?id=" + partner.id;
                link.textContent = partner.partnerAzienda;
                link.className = "nav-item nav-link sublink py-2";
                container.appendChild(link);
            }
        }
    }
    
    async function logout(){
        const user = JSON.parse(localStorage.getItem("crafterVadinUser"));
        localStorage.removeItem('crafterVadinUser');
        localStorage.removeItem('crafterVadinToken');
        
        const url = 'https://api.shortcut.uno/v1/system/extLogout';
        const response = await fetch(url, {
            method: 'POST',
            headers: {
                'Authorization': 'Bearer ' + user.access_token
            }
        });
        
        window.location.href = '/';
    }

</script>