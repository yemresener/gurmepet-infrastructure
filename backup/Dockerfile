FROM mysql:8.0

COPY backup.sh /backup.sh
RUN sed -i 's/\r$//' /backup.sh && chmod +x /backup.sh

CMD ["sh", "-c", "while true; do /backup.sh; sleep 86400; done"]