FROM quay.io/operator-framework/ansible-operator:v0.17.0
ENV HOME="/workspace"

USER 0
RUN mkdir /workspace && \
    mkdir /workspace/.kube

WORKDIR /workspace

ENTRYPOINT ["/bin/bash"]
