# texbox
A Dockerfile and shell script for creating a Fedora Toolbx  with the following pre-installed:
1. TeXstudio - an IDE for writing LaTeX documents
2. The `lipsum`, `siunitx`, `fontawesome` and `nth` TeX styles, and the Cormorant Garamond font - ideal for creating resumes with [PrometheusCV](https://github.com/chrisby/prometheusCV).

## What is this project?
A Fedora toolbox container with the standard dependencies necessary for writing resume's and CVs in TexStudio with the prometheusCV template. As such, it provides an image to get you up and running with a bare bones development environment for writing academic papers, resumes, and CVs with TexStudio. 

## How do I run this? 
To create the toolbox, open a terminal and run `toolbox create -i docker.io/jacobarchambault/texbox texbox` to build from DockerHub. Or to build locally,`cd` into this folder's root directory, then run `bash build.sh` to build the toolbox.

Once the toolbox creation has completed, you can run `toolbox enter texbox` to enter into the development environment. To open TeXstudio, enter `texstudio` into the terminal.

## Required dependencies
Toolbx

## Primer on Toolbx and containerized development environments
[Toolbx](https://github.com/containers/toolbox/) is a project for building containerized development environments built on OCI compliant technologies including Podman and Buildah. It comes pre-installed on Linux Fedora workstations, and is an integral part of developing on Silverblue, Fedora's atomic desktop variant. 

Traditionally, a developer would install whatever applications they need directly onto their laptop. This can lead to several problems: 
1. Loss of time - Setting up a desktop environment for development takes time: multiple of my past employers have had complex wikis for onboarding new developers that, including troubleshooting, could take days or even weeks to complete before new developers were ready to start work. Much of this setup is tedious work that could be automated. 
2. Lack of portability - when I switch to a new laptop, I don't want to have to go back and manually re-setup a significant part of my environment. There should be a way for me to get my old setup back with a simple console command or button click.
3. Lack of Isolation - applications can interact with each other in unexpected ways. Because of this, when running a particular workload, it can be important to be able to setup a 'fresh' environment to ensure that the environment works correctly on its own, and to isolate it from unintended influences.

In contrast with traditional development environments, Toolbx can be used to build and run reproducible, isolated, and portable development environments with a single command. 
