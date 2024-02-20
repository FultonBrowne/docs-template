# Use the official Python image from the Docker Hub
FROM python:3.8-slim-buster

# Make a directory for our project
WORKDIR /app

# Copy over our requirements file
COPY requirements.txt .

# Install pip dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy over the rest of our code
COPY . .

# Expose the port mkdocs serves on
EXPOSE 8000

# Run mkdocs serve when the container launches
CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]