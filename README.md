# Python3-uWSGI-SciPy-NumPy

To setup your application: put your requirements.txt file in the ./src directory, your uwsgi.ini file in the ./uwsgi directory, and include a Dockerfile like this in the project root.


```
FROM paulflorea/python3-uwsgi:latest

# install my packages
ADD . /var/www/app/
RUN pip install -r /var/www/app/src/requirements.txt

# set user
USER www-data

CMD uwsgi --ini /var/www/app/uwsgi/uwsgi.ini --callable app
```

Note: for best usage of this image, keep scipy and numpy out of the requirements file.