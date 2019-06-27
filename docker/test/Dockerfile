FROM nontakenusername/erlang-elixir-node:0.3.0-5393cb8

USER root

ARG HOST_UID=${HOST_UID}
ARG HOST_GUID=${HOST_GUID}

# Change UID and GUID for the appuser to the host's user
RUN usermod -u ${HOST_UID} appuser \
    && groupmod -g ${HOST_GUID} appuser

USER appuser
ENV HOME /home/appuser

CMD ["mix test"]
