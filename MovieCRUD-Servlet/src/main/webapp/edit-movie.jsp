<%@page import="org.apache.commons.codec.binary.Base64"%>
<%@page import="dto.Movie"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Movie</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            background-color: #ffffff;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
        }
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 5px;
            font-weight: bold;
        }
        input, select {
            margin-bottom: 15px;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        img {
            margin-bottom: 15px;
        }
        button {
            background-color: #3498db;
            color: #ffffff;
            border: none;
            padding: 10px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <% Movie movie = (Movie) request.getAttribute("movie"); %>
    <div class="container">
        <h1>Update Movie</h1>
        <form action="edit-movie" method="post" enctype="multipart/form-data">
            <input type="hidden" name="id" value="<%=movie.getId()%>">
            
            <label for="name">Movie Name:</label>
            <input type="text" id="name" name="name" value="<%=movie.getName()%>" required>
            
            <label for="language">Movie Language:</label>
            <select id="language" name="language" required>
                <option value="<%=movie.getLanguage()%>" selected><%=movie.getLanguage()%></option>
                <option>Kannada</option>
                <option>English</option>
                <option>Hindi</option>
            </select>
            
            <label for="rating">Rating:</label>
            <input type="text" id="rating" name="rating" value="<%=movie.getRating()%>">
            
            <label for="picture">Image:</label>
            <input type="file" id="picture" name="picture">
            <img height="75px" width="75px" alt="<%=movie.getName()%>" src="data:image/jpeg;base64,<%=Base64.encodeBase64String(movie.getPicture())%>">
            
            <label for="genre">Genre:</label>
            <select id="genre" name="genre" required>
                <option value="<%=movie.getGenre()%>" selected><%=movie.getGenre()%></option>
                <option>Horror</option>
                <option>Comedy</option>
                <option>Action</option>
                <option>Thriller</option>
            </select>
            
            <button type="submit">Update</button>
        </form>
    </div>
</body>
</html>
