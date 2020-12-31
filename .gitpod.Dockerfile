FROM gitpod/workspace-full:latest

USER gitpod

# Install HashiCorp Vault on Ubuntu

RUN mkdir -p /home/gitpod/vault && sudo curl -fsSL https://releases.hashicorp.com/vault/1.6.1/vault_1.6.1_linux_amd64.zip -o /home/gitpod/vault | unzip vault_1.6.1_linux_amd64.zip -d /home/gitpod/vault

ENV VAULT_ROOT=/home/gitpod/vault
ENV PATH=$PATH:$VAULT_ROOT

ENV VAULT_ADDR='http://127.0.0.1:8200'
ENV VAULT_API_ADDR='http://127.0.0.1:8201'

ENV VAULT_LOG_LEVEL=debug
