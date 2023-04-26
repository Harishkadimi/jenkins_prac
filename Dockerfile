FROM python:3.9-slim-buster

# Set the working directory
COPY . app/

WORKDIR /app

# Copy source code to container
COPY src/ src/

# Copy test code to container
COPY tests/ tests/

# Install requirements
RUN pip install --upgrade pip

RUN pip install -r requirements.txt

CMD ["python", "main.py"]