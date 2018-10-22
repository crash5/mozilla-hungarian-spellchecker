#!/usr/bin/env bash
set -e
. $(dirname ${0})/utils.sh

readonly TEMPLATE_PATH=$(toAbsolutePath "${1}")
readonly OUTPUTH_PATH=$(toAbsolutePath "${2}")

if [[ ${#@} -lt 2 ]]; then
    echo "Usage: ${0} <template path> <output path>"
    exit
fi

mo "${TEMPLATE_PATH}"/update.json.mustache > "${OUTPUTH_PATH}"/update.json
cp "${TEMPLATE_PATH}"/index.html "${OUTPUTH_PATH}"
