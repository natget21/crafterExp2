<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="lib/jquery/jquery.min.js"></script>
<script src="/static-assets/lib/easing/easing.min.js"></script>
<script src="/static-assets/lib/owlcarousel/owl.carousel.min.js"></script>
<script src="/static-assets/js/main.js"></script>


<script src="/static-assets/js2/jquery.min.js"></script>
<script src="/static-assets/js2/popper.min.js"></script>
<script src="/static-assets/js2/bootstrap.bundle.min.js"></script>
<script src="/static-assets/js2/jquery-3.0.0.min.js"></script>
<script src="/static-assets/js2/plugin.js"></script>
      <!-- sidebar -->
<script src="/static-assets/js2/jquery.mcustomscrollbar.concat.min.js"></script>
<script src="/static-assets/js2/custom.js"></script>
      <!-- javascript --> 
<script src="/static-assets/js2/owl.carousel.js"></script>
<script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>

<script>
    $(document).ready(function(){
    $(".fancybox").fancybox({
    openEffect: "none",
    closeEffect: "none"
    });
</script>




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


