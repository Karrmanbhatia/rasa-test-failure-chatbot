FROM rasa/rasa:3.2.10

# Set working directory
WORKDIR /app

# Copy your Rasa project
COPY . /app

# Use the PORT environment variable provided by Render
CMD rasa run --enable-api --cors "*" --debug --port ${PORT:-5005}