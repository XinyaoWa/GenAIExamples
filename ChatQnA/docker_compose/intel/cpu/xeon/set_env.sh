#!/usr/bin/env bash

# Copyright (C) 2024 Intel Corporation
# SPDX-License-Identifier: Apache-2.0

pushd "../../../../../" > /dev/null
source .set_env.sh
popd > /dev/null

if [ -z "$HF_TOKEN" ]; then
    echo "Error: The HF_TOKEN environment variable is **NOT** set. Please set it"
    return -1
fi

export EMBEDDING_MODEL_ID="BAAI/bge-base-en-v1.5"
export RERANK_MODEL_ID="BAAI/bge-reranker-base"
export LLM_MODEL_ID="meta-llama/Meta-Llama-3-8B-Instruct"
export INDEX_NAME="rag-redis"
# Set it as a non-null string, such as true, if you want to enable logging facility,
# otherwise, keep it as "" to disable it.
export LOGFLAG=""
