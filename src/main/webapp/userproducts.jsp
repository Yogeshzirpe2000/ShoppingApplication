<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Your Cart</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
</head>
<body>
    <header>
        <div id="topHeader" class="p-lg-2 p-sm-1">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h1>Your Cart Product</h1>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <section class="top-hero-section pt-4 pb-5 mt-1 mb-1">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-card">
                        <img src="Img/bucket.png" alt="Product Image">
                        <h2>Product Name</h2>
                        <h3>Price</h3>
                        <button class="btn btn-primary">Remove From Cart</button>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="bill-summary">
                        <div class="bill-item">
                            <h2>Total Items:</h2>
                            <span>0</span> <!-- Replace with dynamic value -->
                        </div>
                        <div class="bill-item">
                            <h2>Total Bill:</h2>
                            <span>$0.00</span> <!-- Replace with dynamic value -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
