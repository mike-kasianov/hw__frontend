FROM nontakenusername/erlang-elixir-node:0.3.0-5393cb8

USER appuser

COPY --chown=appuser:appuser . /home/appuser/frontend

RUN chmod +x /home/appuser/frontend/ci/get-deps.sh

WORKDIR /home/appuser/frontend

ENTRYPOINT ["tail", "-f", "/dev/null"]