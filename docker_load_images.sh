#!/bin/sh
set -e

ls ../backup | while read image
do
  echo "${image}をロード中…"
  docker load < ../backup/$image
  echo "${image}をロード完了"
done