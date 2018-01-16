#!/usr/bin/env bash

if [ -d ".env" ]; then
  source .env/bin/activate
else
  virtualenv .env
  source .env/bin/activate

  # Manually installing packages instead of using requirements.txt because they
  # must be installed in this order to avoid insane build times
  pip install -U pyobjc-core
  pip install -U pyobjc
  pip install -U py2app
fi
