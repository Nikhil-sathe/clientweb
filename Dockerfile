#use httpd as base image 
FROM httpd

#copy the index.html to the htdocs director
COPY ./dist/mywebsite/ /usr/local/apache2/htdocs/

#Expose port 80
Expose 80

#run apache in foreground (continuously)
CMD apachectl -D FOREGROUND 