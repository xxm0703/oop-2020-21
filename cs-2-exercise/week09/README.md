Разглеждаме герой, който има следните полета:
- Име, с дължина до 10 символа. Името въведено веднъж, не може да бъде променяно.
- Здраве (жизнени точки), целочислено число, със начална стойност от 100. Герой не може да има повече жизнени точки от първоначално зададените


Разглеждаме следните видове герои:
* Паладин
-- Който има два пъти повече здраве.
-- Има атакуваща сила от 30.

* Войн
-- Има атакуваща сила от 20
-- След всяка негова атака възстановява по 5 жизнени точки.
-- Ако повали своя противник, и има под 30 жизнени точки жизнените му точки се удвояват, в противен случай ги възстановява напълно.

* Магьосник
-- Има атакуваща сила от 20
-- Ако жизнените му точка са под 40 удвоява своите жизнени точки при атака, като атакуващата му сила се намаля на 15. Това се случва само веднъж по време на битка.

Реализирайте всички необходими класове, с нужните методи. Също така реализирайте битка между тези двама герои. Героите се редуват да се атакуват. Една битка се смята за приключила когато единия от геоите има по-малко или равно на 0 жизнени точки.

#### Допълнение - Имплементирай 2D версия на игрално поле с така зададените герои.
На полето може да има повече от двама героя.
Всеки един от тях може да се движи по полето в 4те посоки, като това се брой за негов вход.
Ако в радиус от 2 вхоса има друг герой, може да го нападне.
Побеждава, този, който остане жив накрая.

Какво ще направят героите като ход (местене или атака) се решава на базата четене от стандартния вход.
