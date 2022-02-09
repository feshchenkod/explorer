#!/bin/bash

sed -i -e 's,RPC,'${RPC:-https://main-rpc.linkpool.io/}',g' app/app.js

if [ ! -z "${SUBDIR}" ]; then
    sed -i -e 's,/#/,/'${SUBDIR}'/#/,g' app/index.html
    # sed -i -e 's,styles/main.css,'${SUBDIR}'/styles/main.css,g' app/index.html
    # sed -i -e 's,/block/,/'${SUBDIR}'/block/,g' app/scripts/controllers/mainController.js
    # sed -i -e 's,/address/,/'${SUBDIR}'/address/,g' app/scripts/controllers/mainController.js
    # sed -i -e 's,/transaction/,/'${SUBDIR}'/transaction/,g' app/scripts/controllers/mainController.js
    # sed -i -e 's,/#/,/'${SUBDIR}'/#/,g' app/views/blockInfos.html
    # sed -i -e 's,/#/,/'${SUBDIR}'/#/,g' app/views/main.html
    # sed -i -e 's,/#/,/'${SUBDIR}'/#/,g' app/views/transactionInfos.html
    mv app ${SUBDIR}
    mkdir app
    mv ${SUBDIR} app/
fi

npm start