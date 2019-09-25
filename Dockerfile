# Archlinux with openconnect

FROM archlinux/base

RUN pacman -Syu --noconfirm  && \
    pacman -S --noconfirm openconnect grep

ENTRYPOINT ["openconnect"]
CMD ["--help"]
