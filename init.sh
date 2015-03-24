#!/bin/bash

chmod 0777 ./protected/runtime/
chmod 0777 ./protected/config/local
chmod 0777 ./protected/modules
chmod -R 0777 ./uploads
chmod 0777 ./assets/

if [ ! -f ./protected/config/local/_settings.php ]; then
    touch ./protected/config/local/_settings.php
    echo "<?php\n\nreturn [];" >> ./protected/config/local/_settings.php
    chmod 0777 ./protected/config/local/_settings.php
fi
