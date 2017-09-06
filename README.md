#Docker CE / Docker Compose - instalacja oraz prosta weryfikacja działania

Instalujemy Docker'a oraz Docker Compose, używając poniższego linku (opisane są instalacje dla Windows, OSX, Linux):

Ogólne info:
https://docs.docker.com/compose/install/

Dla Windows i OSX instalacja odbywa się za pomocą kreatorów, które instalują już za nas Docker's CE. Dla Linuxa niestety trzeba najpierw Dockera CE zainstalować samodzielnie, używając tego linku: https://docs.docker.com/engine/installation/ a potem wrócić do https://docs.docker.com/compose/install/.

Po instalacji sprawdzamy sobie w linii komend czy Docker oraz Docker Compose zgłaszają się poprawnie w systemie:

polecenie dla Dockera:
$ docker --version

powinniśmy otrzymać coś podobnego do:
Docker version 17.06.1-ce, build 874a737

polecenie dla Compose:
$ docker-compose --version

powinniśmy otrzymać coś podobnego do:
docker-compose version 1.14.0, build c7bdf9e

Dla pewności odpalimy sobie w Dockerze (przy użyciu Compose) prymitywną apkę w node.js i do niej pukniemy za pomocą przeglądarki.

1. Klonujemy to repo u siebie.
2. Wchodzimy do katalogu ze sklonowanym repo
3. Zanim cokolwiek zrobimy, przeglądamy kod. Jest tutaj prosty plik JS (app.js) z odpalaniem wbudowanego w Node.js serwera WWW, który serwuje nam wiele mówiący napis powitalny. W pliku Dockerfile mamy definicję kontenera, w którym ten serwer sobie odpalimy. W pliku docker-compose.yml mamy prostą konfigurację, w której pdpalamy nasz kontener wraz z definicją współdzielnego katalogu między hostem a gościem. Zrozumienie tego procesu dla kogoś, kto nigdy nie uzywał Dockera, daje +100 do niesamowitości w grupie. 

4. Wykonujemy build projektu

$ docker-compose build

5. Uruchamiamy nasz projekt

$ docker-compose up

6. W przeglądarce pod adresem http://localhost:3030 cieszymy się z napisu odpowiadając tym samym przeglądarce. 