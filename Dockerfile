# Archlinux with openconnect

FROM archlinux/base

# Whilst base pulls in quite a bit, most pkgs assume base is present without
# explicitly specifying so its better to have it there
RUN pacman -Syu --noconfirm  && \
    pacman -S base  && \
    pacman -S --noconfirm openconnect netstat awk route ifconfig

ENTRYPOINT ["openconnect"]
CMD ["--help"]
