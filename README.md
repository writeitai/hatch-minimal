# hatch minimal template

This is a minimal template for a project that uses the `hatch` package manager.

Note the `writeit.Dockerfile` 
- this is an example Dockerfile that could be used during the [WriteIt.ai](https://writeit.ai/) setup

To run tests:
- `hatch run test:unit`
- this command is specified in the `pyproject.toml`

To build docker image:
- `docker build -f writeitai.Dockerfile -t hatch-minimal .`

To run tests in docker container:
- `docker run -it hatch-minimal sh -c "hatch run test:unit"`
