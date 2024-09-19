# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY book_catalog/requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the book_catalog directory contents into the container at /app/book_catalog
COPY book_catalog /app/book_catalog

# Make port 80 available to the world outside this container
EXPOSE 80

# Run the application
CMD ["uvicorn", "book_catalog.main:app", "--host", "0.0.0.0", "--port", "80"]