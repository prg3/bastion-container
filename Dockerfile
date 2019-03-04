FROM alpine:edge

RUN apk --update add pwgen curl drill groff util-linux bash xauth gettext openssl-dev shadow sudo openssh-server openssh-client mosh tmux && \
    rm -rf /etc/ssh/ssh_host_*_key* && \
    rm -f /etc/init.d/sshd && \
    touch /var/log/lastlog && \
    mkdir -p /var/run/sshd && \
    mv /etc/profile.d/color_prompt /etc/profile.d/color_prompt.sh

ADD rootfs/ /

EXPOSE 22
ENTRYPOINT ["/init"]

