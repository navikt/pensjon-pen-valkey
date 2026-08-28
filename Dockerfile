FROM cgr.dev/chainguard/valkey:latest
COPY --chown=valkey:valkey --chmod=0750 valkey-entrypoint.sh /app/valkey-entrypoint.sh
COPY --chown=valkey:valkey --chmod=0640 valkey.conf /app/valkey.conf
ENTRYPOINT ["/app/valkey-entrypoint.sh"]
