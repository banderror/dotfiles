#!/usr/bin/env bash

# Strict mode: https://gist.github.com/robin-a-meade/58d60124b88b60816e8349d1e3938615
set -euo pipefail

gcloud components list
gcloud components update
gcloud components install kubectl
gcloud components list
