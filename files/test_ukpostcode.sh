#!/bin/bash

set -u;
set -x;

EXPECTED='"id":316821,"latitude":"-0.759072483676255","longitude":"51.577854590183300","postcode":"SL7 1UQ"}]'
# Trim off hostname because that is random
RESULT=$(curl -s http://localhost:8080?postcode=sl7%201uq | cut -d "," -f2-5);

[[ "$RESULT" == "$EXPECTED" ]] && exit 0 || exit 1;
