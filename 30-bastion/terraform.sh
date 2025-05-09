#!/bin/bash
sudo dnf update -y
sudo dnf install -y dnf-plugins-core curl unzip
sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo dnf install -y terraform
