<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="/static-assets/lib/easing/easing.min.js"></script>
<script src="/static-assets/lib/owlcarousel/owl.carousel.min.js"></script>
<script src="/static-assets/js/main.js"></script>





<script>
    function searchServices() {
        var query = document.getElementById("searchInput").value;
        window.location.href = "/services?query=" + encodeURIComponent(query);
    }
    
    function logout(){
        localStorage.removeItem('crafterVadinUser');
        localStorage.removeItem('crafterVadinToken');
        window.location.href = '/';
    }
</script>

<script>
document.addEventListener('DOMContentLoaded', function () {
    const user = localStorage.getItem('crafterVadinUser');
    console.log(document.getElementById('catalog-btn'),"catalog-btn")
    if (user) {
        document.getElementById('login-btn').style.display = 'none';
        document.getElementById('logout-btn').style.display = 'inline-block';
        document.getElementById('order-btn').style.display = 'inline-block';
        document.getElementById('catalog-btn').style.display = 'inline-block';
        document.getElementById('add-order').style.display = 'inline-block';
        
    }else{
        document.getElementById('login-btn').style.display = 'inline-block';
        document.getElementById('logout-btn').style.display = 'none';
        document.getElementById('order-btn').style.display = 'none';
        document.getElementById('catalog-btn').style.display = 'none';
        document.getElementById('add-order').style.display = 'none';
    }

    document.getElementById('logout-btn').addEventListener('click', function (event) {
        event.preventDefault();
        logout()
    });
});
</script>


