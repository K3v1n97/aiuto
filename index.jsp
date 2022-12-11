<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Isogramma</title>
	</head>
	<body>
		<form action="isogramServlet" method="post">
			<div>
				<h1>Is Isogram Program</1>
			</div>
			<div>
				<label>Inserisci una frase</label>
			</div>
			<div>
				<textarea rows="1" cols="50" name="isogramText"></textarea>
				<button type="submit">Calcola</button>
			</div>
			<% if(request.getAttribute("isIsogram") != null) { %>
			<div>
				<h3><%= request.getAttribute("isIsogram") %></h3>
			</div>
			<% } %>
		</form>
	</body>
</html>