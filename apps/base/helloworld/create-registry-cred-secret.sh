#!/bin/zsh

# I know this is specific to my box, I'm just putting it here for reference
# Ideally we should be using SOPS to create encrypted secrets managed by git...
source ~/code/tokens/push-packages-github-pat.sh && k create secret --namespace=default docker-registry ghcr-cred --docker-server=ghcr.io --docker-username=ariehm --docker-password=$GITHUB_TOKEN
