<script>
    const user = JSON.parse(localStorage.getItem("crafterVadinUser") || '');
    console.log("user", user)
    if(!user) {
        window.location.href = '/';
    }
</script>