<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, javax.servlet.http.*, javax.servlet.*,shoppingapp.model.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Your Cart</title>
    <link rel="stylesheet" href="CSS/style.css">
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
                <%
                session = request.getSession();
                List<ProductModel> cart = (List<ProductModel>) session.getAttribute("cart");
                if (cart == null) {
                    cart = new ArrayList<ProductModel>();
                }
                
                double totalBill = 0.0;
                int totalItems = cart.size();
                
                for (ProductModel product : cart) {
                    totalBill += product.getPrice();
                }
                %>
                <div class="col-md-12">
                    <% if (cart.isEmpty()) { %>
                        <p>Your cart is empty.</p>
                    <% } else { %>
                        <div class="product-card">
                            <% for (ProductModel product : cart) { %>
                                <div class="product">
                                    <img src="DisplayImage?id=<%=product.getId()%>" alt="Product Image">
                                    <h2><%= product.getName() %></h2>
                                    <h3>$<%= product.getPrice() %></h3>
                                </div>
                            <% } %>
                        </div>
                    <% } %>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="bill-summary">
                        <div class="bill-item">
                            <h2>Total Items:</h2>
                            <span><%= totalItems %></span>
                        </div>
                        <div class="bill-item">
                            <h2>Total Bill:</h2>
                            <span>$<%= totalBill %></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
