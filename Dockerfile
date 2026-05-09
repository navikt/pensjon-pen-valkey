FROM valkey/valkey:8.1-alpine@sha256:b027235326507cfdade9b6684056ec1d0b0c0757412e628245129b5d7b788618
COPY --chown=valkey:valkey --chmod=0077 valkey-entrypoint.sh /app/valkey-entrypoint.sh
COPY --chown=valkey:valkey --chmod=0077 valkey.conf /app/valkey.conf
ENTRYPOINT ["/app/valkey-entrypoint.sh"]
