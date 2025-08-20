# Use an official Python runtime as a base image
FROM python:3.11-alpine 

# Set the working directory in the container
WORKDIR /app  

# Copy the current directory contents into the container at /app
COPY . /app  

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt  

# Expose the port Flask runs on
EXPOSE 5000  

# Define environment variable for Flask
ENV FLASK_APP=app.py  
ENV FLASK_RUN_HOST=0.0.0.0  

# Run the application
CMD ["flask", "run"]
