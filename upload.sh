curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/juice/ && ls *.zip)"
rclone copy ~/rom/out/target/product/juice/Nusantara_v*.zip 298:juice -P
curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/juice/ && ls *.zip) Uploaded Successfully!"

