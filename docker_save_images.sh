#!/bin/sh
set -e

mkdir -p ../backup

docker images --filter "dangling=false" --format "{{.Repository}}:{{.Tag}} {{.Repository}}_{{.Tag}}" | while read image
do
  image_id=`echo $image | cut -d ' ' -f1`
  image_name=`echo $image | cut -d ' ' -f2 | tr -d "/"`
  
  echo "イメージ[${image_id}]をセーブ中…"
  docker save $image_id > ../backup/${image_name}.tar
  echo "イメージ[${image_id}]をセーブ完了"
done