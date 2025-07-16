# Use Nginx as base image
FROM nginx:alpine

# Copy all HTML files into Nginx's HTML directory
COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
