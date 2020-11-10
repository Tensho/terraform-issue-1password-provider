#!/bin/bash

set -x

brew cask install 1password-cli

eval $(op signin)

terraform init

terraform apply
