FROM ubuntu:latest
WORKDIR /app
COPY . /app
RUN chmod +x /app/scripts/Alman_Uali_system.sh
CMD ["/bin/bash", "/app/scripts/Alman_Uali_system.sh"]
