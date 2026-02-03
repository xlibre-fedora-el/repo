#!/bin/sh
set -e

PROJECT=xf86-video-openchrome

git clone --branch main git://git.freedesktop.org/git/openchrome/$PROJECT $PROJECT

cd $PROJECT

COMMIT=$(git rev-list HEAD -n1)
SHORTCOMMIT=$(echo ${COMMIT:0:7})
DATE=$(git log -1 --format=%cd --date=short | tr -d \-)

git archive --format=tar --prefix=$PROJECT-$COMMIT/ HEAD \
	| bzip2 > ../$PROJECT-$SHORTCOMMIT.tar.bz2

cd ..

rm -rf $PROJECT

sed -i \
    -e "s|%global commit0.*|%global commit0 ${COMMIT}|g" \
    -e "s|%global date.*|%global date ${DATE}|g" \
    xorg-x11-drv-openchrome.spec
