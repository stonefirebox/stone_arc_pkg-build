#!/bin/bash

sudo pacman -Syu --noconfirm

depends=(
                yaml-cpp
                boost-libs
                qt6-svg
                polkit-qt6
                squashfs-tools
                libpwquality
                kpmcore
                ckbcomp
                hwinfo
                python
                kconfig
                kcoreaddons
                kiconthemes
                ki18n
                solid
           )

makedepends=(
                extra-cmake-modules
                qt6-tools
                qt6-translations
                boost
           )
sudo pacman -S "${depends[@]}" --noconfirm
sudo pacman -S "${makedepends[@]}" --noconfirm


