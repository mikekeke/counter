#!/usr/bin/env bash

# Increment counter using compiled contract,
# i.e. calling cantract that already exists on-chain from another contract

# set -xeuo pipefail

PUB_HEX="../../test-1-ed25519-keys/public_key_hex"
SECRET_KEY="../../test-1-ed25519-keys/secret_key.pem"
NODE_ADDR="http://94.130.10.55:7777"


casper-client put-deploy \
  --node-address ${NODE_ADDR} \
  --chain-name casper-test \
  --secret-key ${SECRET_KEY} \
  --payment-amount 760000000 \
  --session-path ../counter-call/target/wasm32-unknown-unknown/release/counter-call.wasm