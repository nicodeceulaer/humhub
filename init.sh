#!/bin/bash

chmod 0777 ./humhub/protected/runtime/
chmod 0777 ./humhub/protected/config/local
chmod 0777 ./humhub/protected/modules
chmod 0777 ./humhub/uploads
chmod 0777 ./humhub/assets/

if [ ! -f ./humhub/protected/config/local/_settings.php ]; then
    touch ./humhub/protected/config/local/_settings.php
    echo "<?php\n\nreturn [];" >> ./humhub/protected/config/local/_settings.php
    chmod 0777 ./humhub/protected/config/local/_settings.php
fi
