## Структури
***
### <b>Задача 1.</b>
Да се реализира структура Contact, която съхранява информацията за един контакт. Всеки контакт се характеризира с :
- име(с дължина до 256 символа)
- телефонен номер(до 10 цифри)
- идентификатор(положително число)
 
Един лист с контакти може съдържа най-много 1024 контакта. Всеки лист трябва да поддържа възможността за добавяне на нов контакт или изтриване по идентификатор на вече съществуващ. При поискване контактите могат да бъдат сортирани по даден ключ(име или идентификационен номер). Освен това при известна характеристика на даден контакт, трябва да можем да открием и останалата информация за него(в зависимост от състоянието на листа може да се използва различен алгоритъм за търсене).