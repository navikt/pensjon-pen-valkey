FROM valkey/valkey:9.1-alpine@sha256:a35428eba9043cc0b79dbe54100f0c92784f2de00ad09b01182bfb1c5c83d1bd
COPY --chown=valkey:valkey --chmod=0077 valkey-entrypoint.sh /app/valkey-entrypoint.sh
COPY --chown=valkey:valkey --chmod=0077 valkey.conf /app/valkey.conf
ENTRYPOINT ["/app/valkey-entrypoint.sh"]
