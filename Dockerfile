# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install the required Python packages
RUN pip install flask

# Expose port 5000 to the host
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]