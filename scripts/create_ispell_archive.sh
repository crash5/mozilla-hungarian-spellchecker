#!/usr/bin/env bash
set -e
. $(dirname ${0})/utils.sh

readonly ISPELL_DICTIONARIES_SOURCE_PATH=$(toAbsolutePath "${1}")
readonly OUTPUT_FILE=$(toAbsolutePath ${2:-"MagyarIspell.zip"})

if [[ ${#@} -lt 1 ]]; then
    echo "Usage: ${0} <ispell dicitonaries path> [output file]"
    exit
fi

readonly TEMPORARY_WORK_DIR=$(mktemp -d -p .)
cd "${TEMPORARY_WORK_DIR}"

cp "${ISPELL_DICTIONARIES_SOURCE_PATH}"/*.aff .
cp "${ISPELL_DICTIONARIES_SOURCE_PATH}"/*.dic .
cp "${ISPELL_DICTIONARIES_SOURCE_PATH}"/OLVASSEL README.hu
cp "${ISPELL_DICTIONARIES_SOURCE_PATH}"/README README.en
zip -r "${OUTPUT_FILE}" .

cd ..
rm -rf "${TEMPORARY_WORK_DIR}"
