FROM registry.fedoraproject.org/fedora-toolbox:latest
ARG NAME=texbox
LABEL name="$NAME" \ 
      summary="Fedora toolbox container with the standard dependencies necessary for writing resume's and CVs in TexStudio with the prometheusCV template" \ 
      maintainer="Jacob Archambault"
      
# Install packages
RUN dnf -y upgrade \ 
 && dnf -y install \ 
 texstudio \ 
 'tex(lipsum.sty)' \ 
 'tex(siunitx.sty)' \ 
 'tex(fontawesome5.sty)' \
 'tex(nth.sty)' \ 
 catharsis-cormorant-garamond-fonts  --nodocs --setopt install_weak_deps=False \
 && dnf clean all
