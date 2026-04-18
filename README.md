# Vim Playground
This repo houses my preferred Vim settings, along with a bash script to handle
the setup and a container in which to test things.

## Quick Start
If you just want to run with my preferred settings, simply run `./init_vim.sh`
from the root of this repo. It shouldn't clobber anything without asking first.

## Container Testing
To test out the settings before pushing them to your system, you can build and
run in a containerized environment with the following commands:
```bash
podman build -t vim_play .
podman run --rm -it vim_play
```

