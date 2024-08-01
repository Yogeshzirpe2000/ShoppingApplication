<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, javax.servlet.http.*, javax.servlet.*, shoppingapp.model.ProductModel"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Adding to Cart</title>
</head>
<body>
    <%
    session = request.getSession();
    List<ProductModel> cart = (List<ProductModel>) session.getAttribute("cart");

    if (cart == null) {
        cart = new ArrayList<ProductModel>();
    }

    String productId = request.getParameter("productId");
    String productName = request.getParameter("productName");
    int productPrice = Integer.parseInt(request.getParameter("productPrice"));

    ProductModel product = new ProductModel();
    product.setId(Integer.parseInt(productId));
    product.setName(productName);
    product.setPrice(productPrice);

    cart.add(product);
    session.setAttribute("cart", cart);

    response.sendRedirect("userdashboard.jsp");
    %>
</body>
</html>
