#!/bin/sh

docker run -i --rm -v "$(pwd):/test" -w /test ajiob/docker-xelatex-fonts:1.2.1 make -j4 -C "main_report" all
docker run -i --rm -v "$(pwd):/test" -w /test ajiob/docker-xelatex-fonts:1.2.1 make -j4 -C "practice_report" all

cd practice_report
make clean

cd ..

cd main_report
make clean