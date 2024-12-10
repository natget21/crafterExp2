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

<script>
    const filterResultsContainer = document.querySelector('.filterResults');
    const filterPriceForm = document.getElementById('filterPriceForm');
    const filterTagForm = document.getElementById('filterTagForm');
    
    function filterByPrice() {
        // Get all checked price checkboxes
        const selectedPrices = [...filterPriceForm.querySelectorAll('input[type="checkbox"]:checked')]
            .map(cb => cb.value)
            .filter(value => value !== 'all'); // Exclude 'all'

        // If 'all' is selected, display all items
        if (selectedPrices.length === 0) {
            //document.querySelectorAll('.filterResults .product-item').forEach(item => {
            document.querySelectorAll('.filterResults > div').forEach(item => {
                item.style.display = '';
            });
            return;
        }

        // Convert price ranges to an array of [min, max]
        const ranges = selectedPrices.map(range => range.split('-').map(Number));

        // Filter and display only items within the selected price ranges
        //document.querySelectorAll('.filterResults .product-item').forEach(item => {
        document.querySelectorAll('.filterResults > div').forEach(item => {
            const priceText = item.querySelector('h5').innerText.replace(/[^\d.]/g, '');
            const price = parseFloat(priceText) || 0;

            const isInRange = ranges.some(([min, max]) => price >= min && price <= max);
            item.style.display = isInRange ? '' : 'none';
        });
    }
    
     function filterByTag() {
        // Get all checked price checkboxes
        const selectedTags = [...filterTagForm.querySelectorAll('input[type="checkbox"]:checked')]
            .map(cb => cb.value)
            .filter(value => value !== 'all'); // Exclude 'all'

        // If 'all' is selected, display all items
        if (filterTagForm.length === 0) {
            //document.querySelectorAll('.filterResults .product-item').forEach(item => {
            document.querySelectorAll('.filterResults > div').forEach(item => {
                item.style.display = '';
            });
            return;
        }
        
        document.querySelectorAll('.filterResults > div').forEach(item => {
        // Get the data-tags attribute and convert it to an array of tags
        const itemTags = item.getAttribute('data-tags') ? item.getAttribute('data-tags').split(',') : [];
             console.log(`data-tags: ${item.getAttribute('data-tags')}`);
        // Check if all selected tags are present in the item's tags
        const hasMatchingTag = selectedTags.every(tag => itemTags.includes(tag));

        // Show or hide the item based on whether it matches the selected tags
        item.style.display = hasMatchingTag ? '' : 'none';
    });

    }

    // Listen for changes in the price filter form
    filterPriceForm.addEventListener('change', filterByPrice);
    
    
   // Listen for changes in the tag filter form
    filterTagForm.addEventListener('change', filterByTag);
    
    // Initialize filters on page load
    filterByPrice();
    
    // Initialize tag filters on page load
    filterByTag();
</script>
