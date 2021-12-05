FROM openjdk:18-alpine3.14

LABEL "repository"="http://github.com/tiemez/git-sync-with-bfg-repo-cleaner"
LABEL "homepage"="http://github.com/tiemez/git-sync-with-bfg-repo-cleaner"
LABEL "maintainer"="Rob Tiemessen <github@tiemessen.it>"

RUN apk add --no-cache git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

RUN wget https://repo1.maven.org/maven2/com/madgag/bfg/1.14.0/bfg-1.14.0.jar

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
