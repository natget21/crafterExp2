<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="lib/jquery/jquery.min.js"></script>
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
    
    
    const hide = (id) => {
      const el = document.getElementById(id);
      if (el) el.style.display = 'none';
    };
    
    const show = (id) => {
      const el = document.getElementById(id);
      if (el) el.style.display = 'inline-block';
    };

    
    if (user) {
        // document.getElementById('login-btn').style.display = 'none';
        // document.getElementById('logout-btn').style.display = 'inline-block';
        // document.getElementById('order-btn').style.display = 'inline-block';
        // document.getElementById('catalog-btn').style.display = 'inline-block';
        // document.getElementById('default-nav').style.display = 'inline-block';
        // document.getElementById('static-nav').style.display = 'none';
        // document.getElementById('add-order').style.display = 'inline-block';
        
        console.log('USER: ', JSON.parse(user).access_token);
        
        hide('login-btn');
        show('logout-btn');
        show('order-btn');
        show('catalog-btn');
        show('default-nav');
        hide('static-nav');
        show('add-order');
        
        
    }else{
        // document.getElementById('login-btn').style.display = 'inline-block';
        // document.getElementById('logout-btn').style.display = 'none';
        // document.getElementById('order-btn').style.display = 'none';
        // document.getElementById('catalog-btn').style.display = 'none';
        // document.getElementById('default-nav').style.display = 'none';
        // document.getElementById('static-nav').style.display = 'inline-block';
        // document.getElementById('add-order').style.display = 'none';
        
        show('login-btn');
        hide('logout-btn');
        hide('order-btn');
        hide('catalog-btn');
        hide('default-nav');
        show('static-nav');
        hide('add-order');
    }

    document.getElementById('logout-btn').addEventListener('click', function (event) {
        event.preventDefault();
        logout()
    });
});
</script>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const termsCheckbox = document.getElementById("termsCheckbox");
        const gdprCheckbox = document.getElementById("gdprCheckbox");
        const orderButton = document.getElementById("add-order");

        function updateButtonState() {
            const termsChecked = termsCheckbox ? termsCheckbox.checked : true;
            const gdprChecked = gdprCheckbox ? gdprCheckbox.checked : true;
            orderButton.disabled = !(termsChecked && gdprChecked);
        }

        if (termsCheckbox) termsCheckbox.addEventListener("change", updateButtonState);
        if (gdprCheckbox) gdprCheckbox.addEventListener("change", updateButtonState);

        updateButtonState(); // Initial check
    });
</script>

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
        if (selectedTags.length === 0) {
            //document.querySelectorAll('.filterResults .product-item').forEach(item => {
            document.querySelectorAll('.filterResults > div').forEach(item => {
                item.style.display = '';
            });
            return;
        }
        
        document.querySelectorAll('.filterResults > div').forEach(item => {
        // Get the data-tags attribute and convert it to an array of tags
        const itemTags = item.querySelector('h5').getAttribute('data-tags') 
        ? item.querySelector('h5').getAttribute('data-tags').split(',') 
        : [];
        // Check if all selected tags are present in the item's tags
        const hasMatchingTag = selectedTags.some(tag => itemTags.includes(tag));

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

