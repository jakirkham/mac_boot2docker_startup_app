# Startup Boot2docker

## Purpose

Provides a quickstart app that will make sure [`boot2docker`]( https://boot2docker.io ) is up and running in the background before exiting (notifying on completion). The ideal case is to use this as a login item on Mac allowing easy access to `docker` commands from the terminal.

## Requirements

In order to build or use this, install [`boot2docker`]( https://boot2docker.io ). This should include a copy of VirtualBox, as well.

## Building

To build an Application from the workflow, simply run `make`.

## Testing

To test the Application once it is built, simply run `make check`.

## Installation

Once built, one can copy the application where ever they wish. Alternatively, one can install to `/Applications` from the command line by running `sudo make install`.
