FROM httpd:2.4
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
RUN mkdir -p /usr/local/apache2/conf/sites/
COPY ./test.conf /usr/local/apache2/conf/sites/
RUN mv /usr/local/apache2/htdocs/index.html /usr/local/apache2/htdocs/index.html.old
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]
