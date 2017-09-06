# docker-start
Docker CE / Docker Compose - instalacja oraz prosta weryfikacja działania

Instalujemy Docker'a oraz Docker Compose, używając poniższego linku (opisane są instalacje dla Windows, OSX, Linux):

Ogólne info:
https://docs.docker.com/compose/install/

Dla Windows i OSX instalacja odbywa się za pomocą kreatorów i instaluje już Docker's CE. Dla Linuxa niestety trzeba najpierw Dockera zainstalować samodzielnie, używając tego linku: https://docs.docker.com/engine/installation/.

Po instalacji sprawdzamy sobie w linii komend czy Docker oraz Docker Compose zgłaszają się poprawnie w systemie:

polecenie dla Dockera:
$docker --version

powinniśmy otrzymać coś podobnego do:
Docker version 17.06.1-ce, build 874a737

polecenie dla Compose:
$docker-compose --version

powinniśmy otrzymać coś podobnego do:
docker-compose version 1.14.0, build c7bdf9e

Dla pewności odpalimy sobie w Dockerze (przy użyciu Compose) prymitywną apkę w node.js i do niej pukniemy za pomocą przeglądarki.

1. Klonujemy to repo u siebie.
2. cdn...

