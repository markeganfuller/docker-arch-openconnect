# Archlinux with openconnect

FROM archlinux/base

RUN pacman -Syu --noconfirm  && pacman -S --noconfirm openconnect

ENTRYPOINT ["openconnect"]
CMD ["--help"]
