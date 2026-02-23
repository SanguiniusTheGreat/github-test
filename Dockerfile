FROM nginx:alpine

# Copy the custom nginx config as a template so ${PORT} is substituted at runtime
COPY nginx-1.26.3/conf/default.conf.template /etc/nginx/templates/default.conf.template

# Copy site files
COPY index.html /usr/share/nginx/html/index.html
