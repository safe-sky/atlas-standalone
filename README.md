# Atlas stand-alone environment (test/demo)

This repository contains Docker Compose configuration and supporting files
to easily get an Atlas instance up and running for testing and demo
purposes.

## Disclaimer

:warning: **This setup is for proof of concept testing and demonstration only** :warning:

This is the minimal possible setup to get an Atlas instance running and
usable via the web interface on localhost. A production setup requires more
infrastructure and planning, to ensure high availability and redundant data
storage. This demo setup is usable via the Atlas **web interface only** on
localhost, and **cannot be used with the mobile app** due to lack of correct
certificates, host names, etc.

Several features and integrations are not configured and will not work in
this minimal demo setup:

  - Email sending (requires configuring an SMTP server)
  - SMS and Fax sending (requires configuring a provider)
  - User management in Atlas (here handled by Keycloak, as an external OIDC
    provider)
  - High availability and clustering (Atlas runs in a single instance, with
    a single database instance)

## Prerequisites

The Docker parts are wrapped in a compose file, making it as simple as
possible to get an environment up and running. This includes an identity
provider (Keycloak). To be able to run this, Docker needs to be installed
with Docker Compose support.

## Variables

Pre-set (required) variables are stored in the `env` folder. The defaults
should be usable as-is for a demo setup.

## Setup Atlas-environment

Build and start the containers by running `docker-compose up -d --wait`. If
everything went well, something similar to the following output is expected:

```bash
% docker-compose up -d --wait
...
[+] Running 4/4
 ✔ Network atlas-standalone_default       Created
 ✔ Container atlas-standalone-postgres-1  Healthy
 ✔ Container atlas-standalone-keycloak-1  Healthy
 ✔ Container atlas-standalone-atlas-1     Healthy
 ```

When everything is running, Atlas is reachable via a web-browser on
`http://localhost:8080`.

## Authentication

The default authentication provider for this stand-alone setup is Keycloak.
A preconfigured realm is imported automatically which includes one demo
user. This user can be used to login to Atlas:

- Username: `user@example.com`
- Password: `ExamplePassword`

To edit this user or add different users, please use the management portal
which is accessible via `http://localhost:9999/admin/master/console/#/dev`
using the user `admin` with password  `admin` (this URL leads to the
`dev`-realm directly, if you use a separate route make sure to select the
`dev`-realm when changing or adding users).

## Adding users

To add a user, visit `http://localhost:9999/admin/master/console/#/dev` and go
to the Users menu (via the hamburger-menu on the left-upper side).

Press `Add User` and fill in the username and an email address. After pressing
`Create` make sure to set the following information:

- In the `Attributes` panel, add two attributes to the user
    - `atlasPermissions: DEMO@EU-ADM`
    - `atlasSystemAdmin: true`
- In the `Credentials` panel, set a password for the user

## Starting and stopping

The setup can be stopped with data retained by `docker-compose stop`, and
similarly started again with `docker-compose start`. To destroy the setup,
use `docker-compose down`.
