# MovieCrud-Servlet

MovieCrud-Servlet is a simple web application that demonstrates CRUD (Create, Read, Update, Delete) operations for managing movie information using Java Servlets and JSP.

## Features

- Add new movies
- View list of movies
- Update existing movie information
- Delete movies from the database

## Technologies Used

- Java Servlets
- JSP (JavaServer Pages)
- JDBC (Java Database Connectivity)
- MySQL Database
- HTML/CSS
- Bootstrap (for styling)

## Project Structure

The project follows a standard Maven web application structure:

MovieCrud-Servlet/ ├── src/ │ ├── main/ │ │ ├── java/ │ │ │ └── controller/ │ │ │ ├── AddMovie.java │ │ │ ├── DeleteMovie.java │ │ │ ├── FetchMovie.java │ │ │ └── UpdateMovie.java │ │ ├── resources/ │ │ └── webapp/ │ │ ├── AddMovie.jsp │ │ ├── Home.jsp │ │ ├── UpdateMovie.jsp │ │ └── ViewMovies.jsp │ └── test/ └── pom.xml

## Setup and Installation

1. Clone the repository:

2. Set up a MySQL database and update the connection details in the servlet files.

3. Build the project using Maven:

4. Deploy the generated WAR file to a servlet container like Apache Tomcat.

5. Access the application through your web browser.

## Usage

- Navigate to the home page to see options for adding a new movie or viewing existing movies.
- Use the "Add Movie" form to add new movie entries to the database.
- The "View Movies" page displays all movies and provides options to update or delete each entry.
- Click on "Update" to modify existing movie information.
- Use the "Delete" button to remove a movie from the database.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the [MIT License](LICENSE).
