# Atlas stand-alone environment (test/demo)

This repository contains a script and supporting files to easily get an Atlas
instance up and running for testing and demo purposes.

## Prerequisites

The docker parts are wrapped in a compose file, aiming to make it as simple as
possible to get an environment up and running. This includes an Identity
Profider (Keycloak). To be able to run this, Docker needs to be installed with
Docker Compose support.

## Variables

Pre-set (required) variables are stored in the `env` folder. The defaults
can be used for everything except for `HOST_IP` in `./env/network.env`. This
value should be set to the address on which the containers will be reachable,
including inter-container traffic (avoid using `localhost` and `127.0.0.1` here).

## Starting Atlas

Use a shell to execute `atlas.sh`. If everything went well, the following output
is expected:
```bash
[+] Running 4/4
 ✔ Network atlas-standalone_default  Created                                                                                
 ✔ Container postgres-demo           Healthy                                                                                
 ✔ Container atlas-demo              Started                                                                                
 ✔ Container keycloak-demo           Started   
```

It may take a short while for Keycloak to configure itself. Please check whether
`http://localhost:9999` is reachable before attempting to login to Atlas. Atlas
will show an error if Keycloak is still loading. This process shouldn't take
more than 10-15 seconds after starting up the demo-environment.

When everything is running, Atlas is going to be reachable via a web-browser on
`http://localhost:8080`.

## Authentication

The defaultly used authentication provider for this stand-alone setup is
Keycloak. A preconfigured realm is imported automatically which includes one
test-user. This user can be used to login to Atlas with (user: `user@example.com` pass:
`ExamplePassword`).

To edit this user or add different users, please use the management portal
which is accessible via `http://localhost:9999/admin/master/console/#/dev`
using the credentials `user: "admin" password "admin"` (this url leads to the
`dev`-realm directly, if you use a separate route make sure to select the
`dev`-realm when chaning or adding users).

## Adding users

To add a user, visit `http://localhost:9999/admin/master/console/#/dev` and go
to the Users menu (via the hamburger-menu on the left-upper side).

Press `Add User` and fill in the username and an email address. After pressing
`Create` make sure to set the following information:
- In the `Attributes`-panel, add two attributes to the user
    - `atlasPermissions: ZZZZ@EU-ADM`
    - `atlasSystemAdmin: true`
- In the `Credentials`-panel, set a password for the user

## Stopping Atlas

Use the same script as the script you used to start it with, but supply `down`
as argument. This leads to: `./atlas.sh down` or `bash atlas.sh down`.

## Data volatility

The used data is volatile and will be reset to the defaults for the demo when the environment is being turned off and on again.
