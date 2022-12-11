<%@page import="it.cefi.models.Collection"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>BinarySearch</title>
	</head>
	<body>
	<form action="servletConnector" method="post">
		<% Collection collection = new Collection(); %>
		<div>
			<label>Random Numbers: </label>
			<% for(int number : collection.getRandomNumbers()) { %>
				<label><%= number %></label>
			<% } %>
		</div>
		<div>
			<input type="text" name="index"/>
			<button type="submit">Cerca</button>
		</div>
		<% if (request.getAttribute("result") != null) { %>
		<div>
			<h3><%= request.getAttribute("result") %></h3>
		</div>
		<% } %>
	</form>
	</body>
</html>