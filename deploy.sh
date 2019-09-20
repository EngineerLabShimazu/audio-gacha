#!/usr/bin/env bash
cd venv/lib/python3.7/site-packages
zip -r9 ${OLDPWD}/function.zip .
cd ${OLDPWD}
cd ./lambda/custom/
zip -g ../../function.zip hello_world.py
cd ${OLDPWD}
aws lambda update-function-code --function-name awscodestar-audio-gacha-lamb-CustomDefaultFunction-1FXCLR904TVVD --zip-file fileb://function.zip
