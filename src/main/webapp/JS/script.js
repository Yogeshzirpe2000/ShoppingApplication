document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('form.add-to-cart-form').forEach(function (form) {
        form.addEventListener('submit', function (event) {
            event.preventDefault();
            var formData = new FormData(this);
            
            fetch('addToCart.jsp', {
                method: 'POST',
                body: formData
            })
            .then(response => response.text())
            .then(data => {
                // Handle response (optional)
                alert('Item added to cart!');
                // Optionally hide or update the product in the UI
                this.closest('.product').style.display = 'none';
            })
            .catch(error => console.error('Error:', error));
        });
    });
});
