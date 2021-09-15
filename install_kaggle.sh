#!/bin/sh
yes | pip install kaggle
wget --no-check-certificate "https://docs.google.com/uc? export=downloads&id=1SiBlG37kPTR5uV0KKXcaKcaQaoDcVnSA" -O kaggle.json
mv kaggle.json .kaggle
chmod 600 ~/.kaggle/kaggle.json
kaggle --version