FROM python:3.12-slim

# Install hatch
RUN pip install --no-cache-dir hatch

WORKDIR /app

COPY ./pyproject.toml ./

RUN hatch dep show requirements > ./requirements.txt && \
    hatch -e test dep show requirements -e >> ./requirements.txt && \
    pip install --no-cache-dir -r /app/requirements.txt

# Copy the application code into the container
COPY ./src ./src