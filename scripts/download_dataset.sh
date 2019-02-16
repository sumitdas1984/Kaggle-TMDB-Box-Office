#!/usr/bin/env bash

SCRIPTDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DATASETDIR="$SCRIPTDIR/../dataset"

mkdir -p "$DATASETDIR/archive"
cd $DATASETDIR
kaggle competitions download -c tmdb-box-office-prediction
unzip "*.zip"
mv *.zip "$DATASETDIR/archive"
