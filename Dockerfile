FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
COPY . hello.conf /etc/nginx/conf.d/
COPY . index.html /usr/share/nginx/html/
# Expose port 80
EXPOSE 80
