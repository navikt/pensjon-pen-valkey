FROM valkey/valkey:8.1-alpine@sha256:1cb6b20b70d927560cc4cc5397b5f045e74aa603ff7696274778880bb6fadc75
COPY --chown=valkey:valkey --chmod=0077 valkey-entrypoint.sh /app/valkey-entrypoint.sh
COPY --chown=valkey:valkey --chmod=0077 valkey.conf /app/valkey.conf
ENTRYPOINT ["/app/valkey-entrypoint.sh"]
