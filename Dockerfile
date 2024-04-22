# Use an appropriate base image for your web server
FROM nginx:latest

# Copy your HTML, CSS, and JavaScript files to the appropriate directory in the container
COPY index.html   /usr/share/nginx/html

COPY data.html   /usr/share/nginx/html
# Optionally, if your web application requires additional dependencies or configurations, you can perform those steps here

# Expose the port your web server will listen on
EXPOSE 8080

# Define the command to start your web server
CMD ["nginx", "-g", "daemon off;"]