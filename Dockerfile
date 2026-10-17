FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt /tmp/requirements.txt

# Se cambia requirements.txt por /tmp/requirements.txt debido a que antes se copa en /tmp
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY app/ .

EXPOSE 5000

# Se cambia "python", "app.py" a "python", "main.py" debido a que no existe app.py
CMD ["python", "main.py"]
