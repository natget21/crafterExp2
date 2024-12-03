<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="lib/jquery/jquery.min.js"></script>
<script src="/static-assets/lib/easing/easing.min.js"></script>
<script src="/static-assets/lib/owlcarousel/owl.carousel.min.js"></script>
<script src="/static-assets/js/main.js"></script>

<script>
    // Get all relevant elements
    const allCheckbox = document.getElementById('tag-all');
    const checkboxes = document.querySelectorAll('#filterTagForm input[type="checkbox"]:not(#tag-all)');

    // When the "All Tags" checkbox is clicked, toggle all others
    allCheckbox.addEventListener('change', function () {
        checkboxes.forEach(checkbox => {
            checkbox.checked = allCheckbox.checked;
        });
    });

    // When any checkbox is clicked, check if all checkboxes are selected, update "All Tags" checkbox
    checkboxes.forEach(checkbox => {
        checkbox.addEventListener('change', function () {
            if ([...checkboxes].every(cb => cb.checked)) {
                allCheckbox.checked = true;
            } else {
                allCheckbox.checked = false;
            }
        });
    });
</script>