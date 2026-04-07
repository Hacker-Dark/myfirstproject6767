# Use a small Nginx image to serve static files
FROM nginx:alpine

# Remove default nginx content and add the project files
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/

# Expose HTTP port
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
