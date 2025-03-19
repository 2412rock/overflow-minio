# Use the official MinIO image
FROM minio/minio:latest


# Create a volume for persistent storage
VOLUME ["/data"]

# Expose MinIO server ports
EXPOSE 9000 9001

# Entry point to run MinIO with specified arguments
ENTRYPOINT ["minio"]
CMD ["server", "/data"]
