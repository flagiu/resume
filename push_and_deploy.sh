#!/bin/bash
make convert && \
git add . && git commit -m '1' && git push && \
gh workflow run "Resume Pipeline" && \
gh run list --workflow=pipeline.yaml
