### Класове
***
### <b>Задача 1.</b>

Реализирайте следните класове:

`Банков акаунт` - състои се от:
- името на клиента, чийто е акаунта
- годините му
- статус - блокиран или активен
- сума, която държи в банката
- месечен доход 
- идентификационен номер 

Добавете селектори и мутатори за всеки от атрибутите, дефолтен конструктор и  конструктор с параметри(каквито прецените за подходящи), функции, които дават възможност клиента да внася и да тегли пари от сметката си.   
<b>Забележка: Човек под 18 години не може да бъде клиент на банката.</b>

`Кредит` - състои се от:
- изтеглена сума
- изплатена сума
- месечна вноска
Всеки клиент може да има максимум 1 кредит, който се записва в акаунта му.

`Банка` - състои се от:
- банкови акаунти(максимален брой - 1024)
- налична сума 

<b>Забележка: Идентификационният номер на всеки акаунт трябва да е уникален в рамките на банката.</b>

Реализирайте следните функционалности:
- Конструктори, селектори и мутатори
- addBankAccount() - добавя нов банков акаунт
- blockUnusedAccounts() - блокира акаунтите, които нямат сума
- printAccounts() - принтира всеки от акаунтите 
- check(id) - проверява дали клиентът с идентификационен номер id, може да получи кредит(кредит може да получи всеки клиент, който не е блокиран и все още няма кредит или има, но изплатен)
- takeCredit(id, amount) - ако банката има достатъчно капацитет и клиентът с идентификационен номер id може да получи кредит, го получава с месечна вноска - 25% от дохода му
 






