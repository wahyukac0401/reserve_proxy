FROM httpd:2.4
COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./AstraCC2018.key  /usr/local/apache2/conf/
COPY ./STAR_acc_co_id.crt /usr/local/apache2/conf/
RUN mv /usr/local/apache2/htdocs/index.html /usr/local/apache2/htdocs/index.html.old
EXPOSE 443
CMD ["httpd", "-D", "FOREGROUND"]
