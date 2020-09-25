# !/bin/bash

tar -zcvf backup.tar.gz "$(pwd)"
echo "Compresion finalizada! - $(du -sh backup.tar.gz)"

