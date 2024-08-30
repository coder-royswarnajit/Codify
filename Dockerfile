# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Remove default Nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy the first HTML file to the Nginx directory
COPY online_java_ide.html /usr/share/nginx/html/java.html

# Copy the second HTML file to the Nginx directory
COPY online_c_ide.html /usr/share/nginx/html/c.html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
