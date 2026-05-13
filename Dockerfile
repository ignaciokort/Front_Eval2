FROM python:3.11-slim
WORKDIR /app
# Instalamos las dependencias del profe
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# Copiamos todo el código (app.py, templates, etc.)
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]
