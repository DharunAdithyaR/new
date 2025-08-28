# Use Nginx image as base
FROM nginx:alpine

# Copy your HTML file to Nginx default directory
COPY ind.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
