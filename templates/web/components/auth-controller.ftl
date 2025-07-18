<script>
    const userData = localStorage.getItem("crafterVadinUser");
    let user = null;
    if (userData) { user = JSON.parse(userData); }
    if (!user) { window.location.href = '/'; }
</script>