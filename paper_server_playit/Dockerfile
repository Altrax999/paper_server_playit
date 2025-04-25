FROM openjdk:17

WORKDIR /app

# Install wget
RUN apt-get update && apt-get install -y wget

# Copy your startup script and permissions
COPY start.sh .
RUN chmod +x start.sh

CMD ["bash", "start.sh"]
