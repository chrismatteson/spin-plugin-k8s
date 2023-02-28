# spin-plugin-k8s
A Kubernetes Plugin for Fermyon Spin

USAGE:
    spin k8s <SUBCOMMAND>

SUBCOMMANDS:
    help         Print help information
    scaffold     Scaffold a new component into an existing application
    build        Build Spin Docker Container
    push         Push Spin Docker Containter to repository
    deploy       Deploy a Spin application to Kubernetes

The subcommands scaffold, build, and push expect an input of the namespace where the docker image should be stored. If that's the docker hub, you can supply just the username, if it's somewhere else, such as ghcr, supply the entire path except for the name of the container.
