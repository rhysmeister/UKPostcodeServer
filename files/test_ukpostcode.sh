#!/bin/sh

set -u;
set -x;

EXPECTED='[{"hostname":"9c14cd1e7d5a","id":316821,"latitude":"-0.759072483676255","longitude":"51.577854590183300","postcode":"SL7 1UQ"}]'
RESULT=$(curl http://localhost:8080?postcode=sl7%201uq);

[[ "$RESULT" == "$EXPECTED" ]] && exit 0 || exit 1;
