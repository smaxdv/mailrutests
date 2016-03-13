sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo ln -sf /home/box/web/etc/ask.py /etc/gunicorn.d/ask.py
sudo /etc/init.d/gunicorn restart

cd /home/box/web
sudo gunicorn -b 0.0.0.0:8080 hello:app &
cd /home/box/web/ask
sudo gunicorn -b 0.0.0.0:8000 ask.wsgi:application &

