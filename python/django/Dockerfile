FROM nginx/unit:1.29.1-python3.11

COPY requirements.txt /tmp/

RUN pip install -r /tmp/requirements.txt

RUN mkdir -p /var/log/unit && chown www-data:www-data /var/log/unit

RUN useradd --create-home appuser
