<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="shoppingapp.service.*,shoppingapp.model.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Dashboard</title>
<link rel="stylesheet" href="CSS/userview.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
</head>
<body>
	<header>
		<div id="topHeader" class="p-lg-5 p-sm-1">
			<div class="container">
				<div class="row">
					<div class="col-3 text-left">
						<img alt="logo" src="Img/logo-hansaflex.svg">
					</div>
					<div class="col-9 text-right">
						<a href="cart.jsp"><img src="Img/bucket.png" alt="Cart"></a>
					</div>
				</div>
			</div>
		</div>
	</header>
	<section class="top-hero-section pt-4 pb-5 mt-1 mb-1">
		<div class="container">
			<div class="row">
				<%
				ProductService proserv = new ProductServiceImpl();
				List<ProductModel> list = proserv.getProducts();
				for (ProductModel promodel : list) {
					int id = promodel.getId();
					String name = promodel.getName();
					int price = promodel.getPrice();
				%>
				<div class="col-md-3 products">
					<div class="product">
						<img src="DisplayImage?id=<%=promodel.getId()%>" alt="<%=name%>"
							class="w-75" />
						<h4>
							Name:
							<%=name%></h4>
						<h4>
							Price: $<%=price%></h4>
						<form action="addToCart.jsp" method="post"
							class="add-to-cart-form">
							<input type="hidden" name="productId" value="<%=id%>" /> <input
								type="hidden" name="productName" value="<%=name%>" /> <input
								type="hidden" name="productPrice" value="<%=price%>" />
							<button type="submit" class="btn btn-primary">Add to
								Cart</button>
						</form>

					</div>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</section>
	<script type="javascript" src="JS/script.js"></script>
</body>
</html>
