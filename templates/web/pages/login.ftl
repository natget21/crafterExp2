<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en" data-craftercms-preview="${modePreview?c}">
<head>
    <meta charset="utf-8">
    <title>Login</title>
    
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <link rel="stylesheet" href="/static-assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static-assets/css/login.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <@crafter.head/>
</head>
<body>
    <@crafter.body_top/>
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
            <h2>Welcome</h2>
            <label>
                <span>Username</span>
                <input type="username" name="username" id="username" class="form-control" required />
            </label>
            <label>
                <span>Password</span>
                <input type="password" name="password" id="password" class="form-control" required />
            </label>
             <label>
    <input type="checkbox" name="rememberMe" value="true" id="rememberMe">Remember Me</input>
 </label>
            <p class="forgot-pass"><a href="/path/to/forgot-password">Forgot password?</a></p>
            <button type="submit" class="submit btn btn-primary">Sign In</button>
        </Form>
        <div class="sub-cont">
            <div class="img">
                <div class="img__text m--up">
                    <h3>Don't have an account? Please Sign up!</h3>
                </div>
                <div class="img__text m--in">
                    <h3>If you already have an account, just sign in.</h3>
                </div>
                <div class="img__btn">
                    <span class="m--up">Sign Up</span>
                    <span class="m--in">Sign In</span>
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
    
    <!-- Bootstrap JS (Required for Toasts) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        document.querySelector('.img__btn').addEventListener('click', function () {
            document.querySelector('.cont').classList.toggle('s--signup');
        });
    </script>
    
    <script>
        document.getElementById("login-form").addEventListener("submit", async function (event) {
            event.preventDefault();
        
            let email = document.getElementById("username").value;
            let password = document.getElementById("password").value;
            const toastMessage = document.getElementById('toast-message');
            const errorToast = new bootstrap.Toast(document.getElementById('error-toast'));
        
            
            fetch('http://localhost:5000/v1/Ideale-client/login', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'Origin': 'http://localhost'
                },
                body: JSON.stringify({ email, password })
            })
            .then(response => response.json())
            .then(data => {
                if (data) {
                    // Save user details in localStorage
                    localStorage.setItem('crafterVadinUser', JSON.stringify(data));
                    localStorage.setItem('crafterVadinToken', data.access_token);
        
                    // Redirect to homepage after login
                    window.location.href = '/';
                } else {
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

    <@crafter.body_bottom/>
</body>
</html>

