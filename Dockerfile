# Base image
# Python 3.9 doesn't install scikit-learn correctly, so use 3.8 instead
FROM python:3.8-slim-buster

# Set the default working directory
WORKDIR /usr/src/app

# Some normal Python optimizations
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install Poetry for package management
RUN pip3 install --upgrade pip setuptools wheel && \
    pip3 install poetry

# Install packages with Poetry,
# including development packages like Black and PyLint
COPY pyproject.toml /
RUN poetry config virtualenvs.create false && \
    poetry install --no-interaction --no-ansi

# Copy all the local files to WORKDIR
COPY . .
