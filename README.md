# sysdig-agent

## update the image Version
- the point is to tag the version of the image with version of the development version for the sysdig code that we get from upstream, from draios.
- run the container in interactive mode on your laptop
```
make interactive-upstream
```
- run the `apt` command commented out in the `Makefile`, in the interactive-upstream task, to grab the version
- grab the version and replace it in the `Makefile`
- commit and push and drone will build the image for you
