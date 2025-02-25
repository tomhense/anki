FROM docker.io/python:latest

# Define host and port
ENV SYNC_HOST=0.0.0.0
ENV SYNC_PORT=8080

# Where to store the data
ENV SYNC_BASE=/data

# Maximal sync payload size in MB
ENV MAX_SYNC_PAYLOAD_MEGS=100

# Install anki and create user
RUN pip install anki && mkdir /data

# Declare the data volume
VOLUME /data

CMD ["python", "-m", "anki.syncserver"] 
