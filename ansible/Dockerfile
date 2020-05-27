FROM quay.io/operator-framework/ansible-operator:v0.17.0
ENV HOME="/workspace"
ENV KUBECONFIG=/tmp/.kube/config

USER 0
RUN mkdir /workspace && \
    mkdir /tmp/.kube

WORKDIR /workspace

ENTRYPOINT ["/bin/bash"]
