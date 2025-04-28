FROM rasa/rasa:3.2.10

# Set working directory
WORKDIR /app

# Copy your Rasa project
COPY . /app

# Use shell form of CMD to allow environment variable substitution
CMD rasa run --enable-api --cors "*" --debug --port ${PORT:-5005}