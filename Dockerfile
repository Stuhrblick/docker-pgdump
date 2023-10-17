# Use an official PostgreSQL runtime as a parent image
FROM postgres:latest

# Copy the database dump script into the container at /usr/local/bin
COPY pgdump.sh /usr/local/bin/pgdump.sh

# Ensure the script is executable
RUN chmod +x /usr/local/bin/pgdump.sh

# Run the database dump script when the container launches
CMD ["/usr/local/bin/pgdump.sh"]
