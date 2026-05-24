FROM ghcr.io/realbestia1/easyproxy:latest

ENV PORT=8080
ENV ENABLE_WARP=true
ENV WARP_MODE=wireproxy

EXPOSE 8080

RUN sed -i '\|cd /app/flaresolverr|s|^|#|' /app/entrypoint.sh && \
    sed -i '\|Starting FlareSolverr|s|^|#|' /app/entrypoint.sh

CMD ["/bin/bash", "/app/entrypoint.sh"]
