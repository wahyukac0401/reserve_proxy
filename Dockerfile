FROM httpd:2.4
COPY . /usr/local/apache2/htdocs/
FROM httpd:2.4 
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf