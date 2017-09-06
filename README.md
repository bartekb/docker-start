# Docker CE + Docker Compose - instalacja oraz prosta weryfikacja działania

Instalujemy Docker'a oraz Docker Compose, używając poniższego linku (opisane są instalacje dla Windows, OSX, Linux):

Ogólne info:
https://docs.docker.com/compose/install/

Dla Windows i OSX instalacja odbywa się za pomocą kreatorów, które instalują już za nas Docker's CE. Dla Linuxa niestety trzeba najpierw Dockera CE zainstalować samodzielnie, używając tego linku: https://docs.docker.com/engine/installation/ a potem wrócić do https://docs.docker.com/compose/install/.

Po instalacji sprawdzamy sobie w linii komend czy Docker oraz Docker Compose zgłaszają się poprawnie w systemie:

polecenie dla Dockera:

`$ docker --version`

powinniśmy otrzymać coś podobnego do:

_Docker version 17.06.1-ce, build 874a737_

polecenie dla Compose:

`$ docker-compose --version`

powinniśmy otrzymać coś podobnego do:

_docker-compose version 1.14.0, build c7bdf9e_

Dla pewności odpalimy sobie w Dockerze (przy użyciu Compose) prymitywną apkę popełnioną w Node.js i do niej "pukniemy" za pomocą przeglądarki. Wykonujemy kolejno:

*   Klonujemy to repo u siebie.
*   Wchodzimy do katalogu ze sklonowanym repo.
*   Zanim cokolwiek zrobimy, przeglądamy kod. Jest tutaj prosty plik JS (app.js) z odpalaniem wbudowanego w Node.js serwera WWW, który serwuje nam wiele mówiący napis powitalny. W pliku Dockerfile mamy definicję kontenera, w którym ten serwer sobie odpalimy. W pliku docker-compose.yml mamy prostą konfigurację, w której odpalamy nasz wspominany kontener wraz z definicją współdzielnego katalogu między hostem a gościem oraz mapowaniem portu WWW. Zrozumienie tego procesu dla kogoś, kto nigdy nie uzywał Dockera, daje +100 do niesamowitości w grupie. 

*   Wykonujemy build projektu

`$ docker-compose build`

*   Uruchamiamy nasz projekt

`$ docker-compose up`

*   W przeglądarce pod adresem http://localhost:3030 cieszymy się z napisu odpowiadając tym samym głośno przeglądarce. W sposób oczywisty uczymy się dzięki temu podstaw komunikacji klient - serwer.