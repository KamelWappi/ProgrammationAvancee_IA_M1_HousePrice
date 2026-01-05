# bash scripts/download_kaggle_data.sh
# bash scripts/download_kaggle_data.sh

#!/usr/bin/env bash
set -e

mkdir -p data/raw

kaggle competitions download -c house-prices-advanced-regression-techniques -p data/raw
unzip -o data/raw/house-prices-advanced-regression-techniques.zip -d data/raw

echo "okayy les donnees sont dans data/raw"
ls -la data/raw