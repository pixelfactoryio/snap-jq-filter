#!/usr/bin/env bash

jq -f ${SNAP_CONFIG} -- ${SNAP_INPUT_DATA_PATH} > ${SNAP_OUTPUT_DATA_PATH}