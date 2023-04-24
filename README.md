# Pritunl license server (aka "pls")

This Golang project was made to serve a Pritunl license server in case you can't use the real ones.

## Requirements to run

pls requires tmux to be installed and in the PATH to work.

## How to install

- Download the latest release of pls from the [GitHub releases](https://github.com/lululombard/pritunl_license_server/releases) as `pls`
- Set it as runnable with `chmod +x pls`
- Start pls with `./pls`

## Development

### Installation

Run `go install`, it should install all the dependencies from `go.mod`.

### Start the project

pls requires tmux, golang 1.19 or later to develop for, and that's pretty much it!

You can start the dev server by running `scripts/test.sh` and compile the project using `scripts/build.sh`.
