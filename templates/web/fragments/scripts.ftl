<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="lib/jquery/jquery.min.js"></script>
<script src="/static-assets/lib/easing/easing.min.js"></script>
<script src="/static-assets/lib/owlcarousel/owl.carousel.min.js"></script>
<script src="/static-assets/js/main.js"></script>

<script>
    // Get all relevant elements
    const allTagCheckbox = document.getElementById('tag-all');
    const tagCheckboxes = document.querySelectorAll('#filterTagForm input[type="checkbox"]:not(#tag-all)');
    
    const allPriceCheckbox = document.getElementById('price-all');
    const priceCheckboxes = document.querySelectorAll('#filterPriceForm input[type="checkbox"]:not(#price-all)');

    // When the "All Tags" checkbox is clicked, toggle all others
    allTagCheckbox.addEventListener('change', function () {
        tagCheckboxes.forEach(checkbox => {
            checkbox.checked = allTagCheckbox.checked;
        });
    });

    // When any checkbox is clicked, check if all checkboxes are selected, update "All Tags" checkbox
    tagCheckboxes.forEach(checkbox => {
        checkbox.addEventListener('change', function () {
            if ([...tagCheckboxes].every(cb => cb.checked)) {
                allTagCheckbox.checked = true;
            } else {
                allTagCheckbox.checked = false;
            }
        });
    });
    
    allPriceCheckbox.addEventListener('change', function () {
        priceCheckboxes.forEach(checkbox => {
            checkbox.checked = allPriceCheckbox.checked;
        });
    });
    
    priceCheckboxes.forEach(checkbox => {
        checkbox.addEventListener('change', function () {
            if ([...priceCheckboxes].every(cb => cb.checked)) {
                allPriceCheckbox.checked = true;
            } else {
                allPriceCheckbox.checked = false;
            }
        });
    });
</script>