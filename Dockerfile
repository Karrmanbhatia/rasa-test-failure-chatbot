FROM rasa/rasa:3.2.10

# Set working directory
WORKDIR /app

# Copy your Rasa project files
COPY . .

# Override the default entrypoint
ENTRYPOINT []

# Use a shell script to ensure proper variable expansion
CMD /bin/bash -c "rasa run --enable-api --cors '*' --port $PORT"