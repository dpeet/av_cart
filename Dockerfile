FROM python:3.11-alpine

WORKDIR /srv

# Run as non-root user for security
RUN adduser -D -u 1000 webserver
USER webserver

# Expose port 8000
EXPOSE 8000

# Serve files from /srv directory
CMD ["python", "-m", "http.server", "8000", "--directory", "/srv"]