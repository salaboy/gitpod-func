FROM gitpod/workspace-full

USER root

RUN curl -sSL https://github.com/knative/func/releases/download/knative-v1.8.2/func_linux_amd64 -o /usr/bin/func \
    && chmod +x /usr/bin/func
