# MikTex for CentOS
Builds MikTex for CentOS 7.6.1810. Makes:
- an RPM.
- a CentOS 7.6.1810 Docker image with MikTex basic packages installed.
- a CentOS 7.6.1810 Docker image with MikTex complete packages installed.

## What it actually does
1. Builds MikTex in a Docker container. This builds the RPM.
2. Copies the RPM to the host.
3. Builds MikTex basic and complete Docker images.

## How to run
1. Assign *at least* 8GB RAM to the docker container.
2. `./build.sh`
3. There is no step 3.
