FROM quay.io/operator-framework/ansible-operator:v0.17.0
ENV HOME="/workspace"
ENV KUBECONFIG=/tmp/.kube/config

USER 0
RUN mkdir /workspace && \
    mkdir /tmp/.kube && \
    curl -L -v -o /usr/local/bin/operator-sdk https://github.com/operator-framework/operator-sdk/releases/download/v0.17.1/operator-sdk-v0.17.1-x86_64-linux-gnu && \
    chmod +x /usr/local/bin/operator-sdk && \
    cd /usr/local/bin/  && curl -O  https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux.tar.gz && \
    tar -xzf openshift-client-linux.tar.gz && \
    chmod +x ./oc

WORKDIR /workspace

ENTRYPOINT ["/bin/bash"]
