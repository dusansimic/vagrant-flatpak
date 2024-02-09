#!/bin/bash
set -e

flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak --user install -y org.flatpak.Builder org.freedesktop.appstream-glib
