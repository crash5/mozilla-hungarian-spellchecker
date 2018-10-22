#!/usr/bin/env bash
set -e
. $(dirname ${0})/utils.sh

readonly ISPELL_DICTIONARIES_SOURCE_PATH=$(toAbsolutePath "${1}")
readonly INSTALL_RDF_TEMPLATE=$(toAbsolutePath "${2}")
readonly OUTPUT_FILE=$(toAbsolutePath ${3:-"hungarian_dictionary.xpi"})

if [[ ${#@} -lt 2 ]]; then
    echo "Usage: ${0} <ispell dicitonaries path> <template for install rdf> [output extension file]"
    exit
fi

readonly TEMPORARY_WORK_DIR=$(mktemp -d -p .)
cd "${TEMPORARY_WORK_DIR}"

mkdir dictionaries
cp "${ISPELL_DICTIONARIES_SOURCE_PATH}"/hu_HU_u8_gen_alias.aff dictionaries/hu.aff
cp "${ISPELL_DICTIONARIES_SOURCE_PATH}"/hu_HU_u8_gen_alias.dic dictionaries/hu.dic
mo "${INSTALL_RDF_TEMPLATE}" > install.rdf
zip -r "${OUTPUT_FILE}" .

cd ..
rm -rf "${TEMPORARY_WORK_DIR}"
