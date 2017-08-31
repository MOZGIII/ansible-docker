FROM buildpack-deps:stretch-scm

RUN echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu xenial main' > /etc/apt/sources.list.d/ansible.list \
 && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 \
 && apt-get update \
 && apt-get install -y ansible \
 && rm -rf /var/lib/apt/lists/*

CMD [ "ansible" ]
