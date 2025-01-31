# Use the official Python image from the Docker Hub
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Define environment variable
ENV PORT=8501

# Make the port available to the world outside this container
EXPOSE ${PORT}

# Run streamlit when the container launches
CMD ["streamlit", "run", "RAG_app.py"]