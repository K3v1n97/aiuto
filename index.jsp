<%@page import="it.cefi.models.Isogram"%>
<!DOCTYPE html>
<html>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<head>
		<meta charset="UTF-8">
		<title>Isogram</title>
	</head>
	<body>
	<form action="isogramServlet" method="post">
		<div class="mt-3 ms-5">
			<h2><span class="badge text-bg-light">Inserisci una frase</span></h2>
		</div>
		<div class="mt-3 ms-5 me-5" align="left">
			<textarea rows="3" cols="40" name="frase"></textarea>
		</div>
		<div class="mt-3 ms-5" align="left">
			<button type="submit" class="btn btn-primary text-wrap">Calcola</button>
		</div>
	<% if (request.getAttribute("isIsogram") != null ) { %>
		<div class="mt-3 ms-5 me-5" align="left">
		<h3><span class="badge text-bg-success"><%= request.getAttribute("isIsogram") %></span></h3>
		</div>
	<% } %>
	</form>
	</body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</html>