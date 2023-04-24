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

pls requires golang 1.19 or later to develop for, and that's pretty much it!

You can start the dev server by running `scripts/test.sh` and compile the project using `scripts/build.sh`.

### Patch the Pritunl install

Assuming your pritunl install is in `/usr/lib/pritunl`:
```bash
grep -rl https://app.pritunl.com /usr/lib/pritunl | xargs sudo sed -i 's/https:\/\/app.pritunl.com/http:\/\/localhost:5000/g'
grep -rl aHR0cHM6Ly9hcHAucHJpdHVubC5jb20vc3Vic2NyaXB0aW9u /usr/lib/pritunl | xargs sudo sed -i 's/aHR0cHM6Ly9hcHAucHJpdHVubC5jb20vc3Vic2NyaXB0aW9u/aHR0cDovL2xvY2FsaG9zdDo1MDAwL3N1YnNjcmlwdGlvbg==/g'
```
