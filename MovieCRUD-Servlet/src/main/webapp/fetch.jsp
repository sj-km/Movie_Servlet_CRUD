<%@page import="org.apache.commons.codec.binary.Base64"%>
<%@page import="dto.Movie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View All Movies</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 0;
	padding: 20px;
}

h1 {
	color: #333;
	text-align: center;
}

.container {
	max-width: 1000px;
	margin: 0 auto;
	background-color: #ffffff;
	border-radius: 8px;
	padding: 20px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

th, td {
	border: 1px solid #ddd;
	padding: 12px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
	font-weight: bold;
}

img {
	display: block;
	margin: 0 auto;
}

.btn {
	display: inline-block;
	padding: 8px 12px;
	background-color: #3498db;
	color: #ffffff;
	text-decoration: none;
	border-radius: 4px;
	transition: background-color 0.3s ease;
}

.btn:hover {
	background-color: #2980b9;
}

.btn-delete {
	background-color: #e74c3c;
}

.btn-delete:hover {
	background-color: #c0392b;
}

.btn-back {
	display: block;
	width: 100px;
	margin: 20px auto 0;
	text-align: center;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Movie Details</h1>
		<table>
			<tr>
				<th>Name</th>
				<th>Image</th>
				<th>Language</th>
				<th>Genre</th>
				<th>Rating</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<%
			List<Movie> list = (List<Movie>) request.getAttribute("list");
			for (Movie movie : list) {
			%>
			<tr>
				<td><%=movie.getName()%></td>
				<td><img height="75px" width="75px"
					alt="<%=movie.getName()%>"
					src="data:image/jpeg;base64,<%=Base64.encodeBase64String(movie.getPicture())%>"></td>
				<td><%=movie.getLanguage()%></td>
				<td><%=movie.getGenre()%></td>
				<td><%=movie.getRating()%></td>
				<td><a href="edit-movie?id=<%=movie.getId()%>" class="btn">Edit</a></td>
				<td><a href="delete-movie?id=<%=movie.getId()%>"
					class="btn btn-delete">Delete</a></td>
			</tr>
			<%
			}
			%>
		</table>
		<a href="home.html" class="btn btn-back">Back</a>
	</div>
</body>
</html>
