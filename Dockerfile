FROM python:3.6.1-alpine
WORKDIR /home/python-sitemap/
COPY main.py crawler.py config.py requirements.txt /home/python-sitemap/
RUN pip install --no-cache-dir -r requirements.txt
ENTRYPOINT [ "python", "main.py" ]
CMD [ "--domain", "http://blog.lesite.us" ]
