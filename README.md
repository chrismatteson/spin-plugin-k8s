# spin-plugin-k8s
A Kubernetes Plugin for Fermyon Spin

## Installation
To install this plugin, simply run:

    spin plugin install -u https://raw.githubusercontent.com/chrismatteson/spin-plugin-k8s/main/k8s.json

## Usage

    USAGE:
        spin k8s <SUBCOMMAND>
    
    OPTIONS:<br>
        -h, --help       Print help information

    SUBCOMMANDS:<br>
        scaffold     Scaffold a new component into an existing application
        build        Build Spin Docker Container
        push         Push Spin Docker Containter to repository
        deploy       Deploy a Spin application to Kubernetes
        getsvc       Display information of deployed service

This plugin allows a developer to continue using the Spin CLI to continue development after spin build/spin up while deploying to Kubernetes. The goal is to provide a similar experience to users who are deploying with Spin to Fermyon Cloud.

The plugin relies on docker and kubectl, both of which need to be installed on the development system and a KUBECONFIG environment variable should be configured to an appropriate kubeconfig.

The commands are intended to be executed in order:
* Scaffold: Creates a Dockerfile and deploy.yaml
* Build: Locally builds a Spin Docker Container
* Push: Pushes Spin Docker Container to a remote registry
* Deploy: Deploys Spin App to Kubernetes
* Getsvc: Gets service information of deployed Spin App
