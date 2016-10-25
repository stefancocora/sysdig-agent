# sysdig-agent

---

# local development

## creating the local sysdig image
To build the image locally on your development laptop run.

Pay attention to the `VERSION` variable inside the `Makefile`, if you care about that version variable.
```
make build
```

## update the image Version
The draios upstream dev image on the docker hub isn't properly tagged.

We must tag our version of the image to know what version of sysdig gets deployed in different environments.

To find out the version of sysdig running inside the dev image from upstream:

- run the upstream container in interactive mode on your laptop
```
make interactive-upstream
```
- run the `apt` command commented out in the `Makefile`, in the interactive-upstream task, to grab the version
- grab the version and replace it in the `.drone.yml` file ( additional you can replace it in the `Makefile` too but that isn't strictly necessary )
- commit and push and drone will build the image for you and tag it accordingly with the version of the sysdig agent and the git shasum.
  - example upstream HOD sysdig-agent versioned image: `quay.io/ukhomeofficedigital/sysdig-agent:v0.99.2214dev-f423587`
