#!/bin/sh
file_id="1AguesBAGIcW_517xbbYmM8GpK4CCGiBW"
file_name="bert_ssc_val_acc"

echo $file_id
echo $file_name

# https://drive.google.com/file/d/1NM1UDdZnwHwiNDxhcP-nndaWj24m-90L/view
fileId=1NM1UDdZnwHwiNDxhcP-nndaWj24m-90L
fileName=m2det512_vgg.pth
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${file_id}" > /dev/null
code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"  
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${file_id}" -o ./state_dict/${file_name} 
