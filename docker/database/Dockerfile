FROM container-registry.oracle.com/database/free:23.7.0.0-lite

# Copy initialization scripts
COPY setup/ /opt/oracle/scripts/startup

# Copy healthcheck script and make it executable
COPY --chmod=755 healthcheck.sh /database/

# Expose Oracle port
EXPOSE 1521