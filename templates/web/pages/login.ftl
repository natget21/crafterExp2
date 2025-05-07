<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
<#include "/templates/web/fragments/head.ftl">
<body>
<@crafter.body_top/>

    <header>
        <div class="container-fluid">
            <div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
                <div class="col-lg-4">
                    <a href="" class="text-decoration-none">
                        <img src="/static-assets/assets/ideale_logo.png" height="70px" />
                        <!-- <span class="h1 text-uppercase text-primary bg-dark px-2">Ideale</span> 
                        <span class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">Partner</span> -->
                    </a>
                </div>
                <div class="col-lg-4 col-6 text-left">
                    
                </div>
            </div>
        </div>
    </header>
    
    <!-- Navigation Section --> 
    <#include "/templates/web/fragments/navigation.ftl">
    <#include "/templates/web/fragments/static-navigation.ftl">
    
    <div class="d-flex justify-content-center">
      <div class="card client-login-card col-12 col-md-3 p-0">
        <div
          class="client-login-header d-flex flex-column justify-content-end"
        >
          <h4 class="fw-bold text-white">Cliente</h4>
          <p class="mb-0 text-white">Usa le tue credenziali per accedere</p>
        </div>
        <div class="card-body p-4">
          <h5 class="mb-3 client-login">Log in</h5>
          <form id="login-form">
            <div class="mb-3">
              <label for="username" class="form-label"
                >Username <span class="text-primary">*</span></label
              >
              <input type="text" class="form-control" id="username" />
            </div>
            <div class="mb-4 position-relative">
              <label for="password" class="form-label"
                >Password <span class="text-primary">*</span></label
              >
              <input type="password" class="form-control" id="password" />
              <span class="toggle-password" onclick="togglePassword()"> </span>
            </div>
            <button type="submit" class="btn client-login-button w-100">Log in</button>
          </form>
        </div>
      </div>
    </div>


    <!--
    <div class="toast-container position-fixed top-0 end-0 p-3">
        <div id="error-toast" class="toast bg-danger text-white" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="toast-header">
                <strong class="me-auto">Error</strong>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body" id="toast-message"></div>
        </div>
    </div>
    <div class="cont">
        <Form class="form sign-in" id="login-form">
         <input type="hidden" name="redirect" value="/" />
            <h2>Benvenuto accedi al tuo account cliente</h2>
            <label>
                <span>Email</span>
                <input type="username" name="username" id="username" class="form-control" required />
            </label>
            <label>
                <span>Password</span>
                <input type="password" name="password" id="password" class="form-control" required />
            </label>
             <label>
    <input type="checkbox" name="rememberMe" value="true" id="rememberMe">Matieni la sessione attiva</input>
 </label>
            <p class="forgot-pass"><a href="/path/to/forgot-password">Hai dimenticato la password?</a></p>
            <button type="submit" class="submit btn">Accedi</button>
        </Form>
        <div class="sub-cont">
            <div class="img">
                <div class="img__text m--up">
                    <h3>Non hai un account? Invia la tua richiesta!</h3>
                </div>
                <div class="img__text m--in">
                    <h3>Se hai gia un account, esegui la login con le tue credenziali.</h3>
                </div>
                <div class="img__btn register">
                    <span class="m--up register">Registrati</span>
                    <span class="m--in register">Accedi</span>
                </div>
            </div>
            <div class="form sign-up">
                <h2>Create your Account</h2>
                <label>
                    <span>Name</span>
                    <input type="text" name="name" class="form-control" required />
                </label>
                <label>
                    <span>Email</span>
                    <input type="email" name="email" class="form-control" required />
                </label>
                <label>
                    <span>Password</span>
                    <input type="password" name="password" class="form-control" required />
                </label>
                <button type="submit" class="submit btn btn-primary">Sign Up</button>
            </div>
        </div>
    </div>
    -->
    <!-- Bootstrap JS (Required for Toasts) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

   <script>
        document.querySelector('.img__btn').addEventListener('click', function () {
            //document.querySelector('.cont').classList.toggle('s--signup');
            console.log("hello")
            window.location.href = "/client-register";
    
        });
    </script> 
    
  
    
    
    <script>
        document.getElementById("login-form").addEventListener("submit", async function (event) {
            event.preventDefault();
        
            let email = document.getElementById("username").value;
            let password = document.getElementById("password").value;
            const toastMessage = document.getElementById('toast-message');
            const errorToast = new bootstrap.Toast(document.getElementById('error-toast'));
        
            fetch('https://api.shortcut.uno/v1/Ideale-client/login', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Origin': 'http://localhost'
                },
                credentials: 'include',
                body: JSON.stringify({ email, password,"projectId":"67ac9fa58932d32db3c9768e" })
            })
            .then(response => response.json())
            .then(data => {
                if (data && !data.error) {
                    localStorage.setItem('crafterVadinUser', JSON.stringify(data));
                    localStorage.setItem('crafterVadinToken', data.access_token);
        
                    window.location.href = '/';
                } else {
                    console.log(data,"data")
                    toastMessage.textContent = data.message;
                    errorToast.show();
                }
            })
            .catch(error => {
                toastMessage.textContent = 'An error occurred. Please try again.';
                errorToast.show();
            });
        });
    </script>

    <#include "/templates/web/fragments/scripts.ftl">
    <@crafter.body_bottom/>
</body>
</html>

