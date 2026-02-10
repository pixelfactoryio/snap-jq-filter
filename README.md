# snap-jq-filter

Minimal jq filter runner for Snap pipelines.

## Usage

Provide a jq filter file and input/output paths via env vars:

- `SNAP_CONFIG`: path to jq filter file
- `SNAP_INPUT_DATA_PATH`: path to input JSON
- `SNAP_OUTPUT_DATA_PATH`: path to output JSON

Example:

```sh
SNAP_CONFIG=filter.jq \
SNAP_INPUT_DATA_PATH=input.json \
SNAP_OUTPUT_DATA_PATH=output.json \
./run.sh
```

## Docker

Build and run:

```sh
docker build -t snap-jq-filter .
docker run --rm \
  -e SNAP_CONFIG=/opt/filter.jq \
  -e SNAP_INPUT_DATA_PATH=/opt/input.json \
  -e SNAP_OUTPUT_DATA_PATH=/opt/output.json \
  -v "$PWD:/opt" \
  snap-jq-filter
```
