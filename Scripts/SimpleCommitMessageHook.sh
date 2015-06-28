#!/bin/sh
echo -n \"GPG Signing message... \";
PASSPHRASE=$(git config --get hooks.gpg.passphrase)
if [ \"\" = \"$PASSPHRASE\" ];then
    echo \"no passphrase found! Set it with git config --add hooks.gpg.passphrase <passphrase>\"
    exit 1
fi
gpg --clearsign --yes --passphrase $PASSPHRASE -o $1.asc $1
mv $1.asc $1
echo \"[DONE]\"
