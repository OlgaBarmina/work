---
# Front matter
title: "Отчет по лабораторной работе №1"
subtitle: "Использование git"
author: "Бармина Ольга Константиновна"
group: NFIbd-01-19
institute: RUDN University, Moscow, Russian Federation
date: 2022 Feb 10th

# Generic otions
lang: ru-RU
toc-title: "Содержание"

# Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

# Pdf output format
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
### Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Misc options
indent: true
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью данной работы является изучение основ работы с git репозиториями. 

# Задание

В ходе работы необходимо создать проект, научиться его изменять, индексировать и удалять изменения, создавать, изменять и отменять коммиты, перемещать файлы репозитория, работать с объектами git, создавать и перемещаться по ветками репозитория, совмещать ветки, клонировать репозитории, создавать чистые репозитории и добавлять удаленный репозиторий к другому репозиторию.

# Теоретическое введение

Описание некоторых команд файловой системы GNU Linux 

| Имя команды | Описание команды|
|--------------|----------------------------------------------------------------------------------------------------------------------------|
| `git config`| Позволяет изменить стандартное поведение git |
| `mkdir `| Позволяет создать новый каталог |
| `cd`| Позволяет перейти в указанный каталог|
| `echo` | Позвляет записать информацию в файл прямо из консоли|
| `git init`| Создаёт git репозитории и директорию .git в текущей директории |
| `git commit`| Позволяет сделать коммит изменений|
| `git status`| Позволяет просмотреть состояния файлов в репозитории |
| `git log`| Позволяет просматривать историю коммитов репозитория |
| `git checkout` | Позволяет загружать ветку на новую ветку |
| `git tag`| Позволяет дать текущемму коммиту название|
| `git reset`| Позволяет сбросить HEAD текущего репозитория |
| `git cat-file`| Предоставляет информацию о содержимом, типе и размере для объектов репозитория |
|`git merge`| Сливает 2 ветки git репозитория |
|`git rebase`| Позволяет измененить коммитом в вашей истории |
|`git clone`| Клонирует репозиторий |
|`git remote`| Используется для работы с внешними репозиториями |
|`git branch`| Используется для создания ветки используйте |
|`git pull`| Используется для загрузки данных с внешнего репозитория |


# Выполнение лабораторной работы

1. Настраиваем core.autocrlf с параметром true для переводы
строк текстовых файлов в главном репозитории в одинаковый формат. Задаем core.safecrlf как true. Устанавливаем флаг для преобразования Unicode символов в ASCII.

![рис 1](images/UsMsoHhmPB.jpg)

2. Начинаем работу в пустом рабочем каталоге с создания пустого каталога с именем hello, затем входим в него и создаем там файл с именем hello.html. Чтобы создать git репозиторий из этого каталога, выполняем команду git init.  Добавим файл в репозиторий.

![рис 2](images/wI8jFrXlKU.jpg)

![рис 3](images/AcD6qfEcG8.jpg)

3. Изменим содержимое файла hello.html. Сделаем коммит без метки -m.

![рис 4](images/d8ItkEJi5t.jpg)

![рис 6](images/F5FTyYlWis.jpg)

4. Изменим страницу «Hello, World», чтобы она содержала стандартные теги html и body. Добавляем это изменение в индекс git. Теперь добавляем заголовки HTML к странице «Hello, World». Проверяем текущий статус. Произведем коммит проиндексированного изменения, а затем еще раз проверим состояние. Теперь добавим второе изменение в индекс, а затем проверим состояние с помощью команды git status. Второе изменение было проиндексировано и готово к коммиту. Сделаем коммит второго изменения.

![рис 7](images/8j5hCqG19q.jpg)

![рис 8](images/CUW49p9khu.jpg)

![рис 9](images/VNHvN74Zzl2.jpg)

![рис 10](images/mk1kcFdpqE.jpg)

5. Получим список произведенных изменений. Изучим данные лога и найдем хэш для первого коммита. Вернемся к последней версии в ветке master. Назовем текущую версию страницы hello первой (v1). Создадим тег для версии, которая идет перед текущей версией и назовем его v1-beta. Перейдем на основную ветку. Внесем изменение в файл hello.html в виде нежелательного комментария. Проверим состояние рабочего каталога. Используйте команду git checkout для переключения версии файла hello.html в репозитории. 

![рис 11](images/AOTMUN7Dai.jpg)

![рис 12](images/ncXTtPaSuG.jpg)

![рис 13](images/GE5Xq5hj7M.jpg)

![рис 14](images/sXJRmavJRv.jpg)

![рис 15](images/vpeF72TrZB.jpg)

![рис 16](images/FKwwsgnp1j.jpg)

6. Внесите изменение в файл hello.html в виде нежелательного комментария. Проиндексируйте это изменение. Выполните сброс буферной зоны.  Переключитесь на версию коммита. Далее мы отменим коммит путем создания нового коммита, отменяющего нежелательные изменения. Изменим файл hello.html. Сделаем коммит с новыми изменениями, отменяющими предыдущие. Проверим лог. 

![рис 17](images/fujTNqft8w.jpg)

![рис 18](images/BJPUGsWtIq.jpg)

![рис 19](images/bYSPeb3oT3.jpg)

![рис 20](images/HRZAPmntjo.jpg)

![рис 21](images/ORzAAtVMFs.jpg)

7. Прежде чем удалить коммиты, давайте отметим последний коммит тегом oops. Глядя на историю лога, мы видим, что коммит с тегом «v1» является коммитом,
предшествующим ошибочному коммиту. Сбросим ветку до этой точки. Посмотрим на все коммиты. Тег oops свою функцию выполнил. Удалим его и коммиты, на которые он ссылался.

![рис 22](images/hDKBooLThN.jpg)

![рис 23](images/fQ2BUeL4oH.jpg)

![рис 24](images/oG1BQWD4EJ.jpg)

8. Добавим в страницу комментарий автора. После совершения коммита обновляем страницу hello, включив в нее email. Изменим предыдущий коммит, включив в него адрес электронной почты. Просмотрим лог.

![рис 24](images/Z9RZ0Z4BOY.jpg)

![рис 25](images/3W4e7zDeEF.jpg)

![рис 26](images/zB9Oipoqbe.jpg)

![рис 27](images/Pnr5w3sSwV.jpg)

9. Сейчас мы собираемся создать структуру нашего репозитория. Давайте перенесем страницу в каталог lib. сделаем коммит этого перемещения: Добавим файл index.html в наш репозиторий. Добавьте файл и сделайте коммит.

![рис 28](images/GQuqbmzcqg.jpg)

![рис 29](images/iAfpvajisx.jpg)

![рис 30](images/VhNIw0b59G.jpg)

![рис 31](images/H7D5gpEZ4I.jpg)

10. Произведем поиск последнего коммита. Выведем последний коммит с помощью SHA1 хэша. Выведем дерево каталогов используя SHA1 хэш из строки «дерева». Выведем каталог lib и файл hello.html. Исследуем git репозиторий вручную самостоятельно. Найдем оригинальный файл hello.html с самого первого коммита вручную по ссылкам SHA1 хэша в последнем коммите.

![рис 32](images/XD760APT50.jpg)

![рис 33](images/mncYauutMP.jpg)

![рис 34](images/PFMSzxuwQ8.jpg)

11. Создадим новую ветку «style». Добавим файл стилей style.css. Обновим файлы hello.html и index.html, чтобы использовать стили style.css.

![рис 35](images/PkUyHB6Xpb.jpg)

![рис 36](images/oXXr0wzzpo.jpg)

![рис 37](images/SLtm5gEnYA.jpg)

![рис 38](images/4lgeqqKy0V.jpg)

![рис 39](images/pp3QO2xOgL.jpg)

![рис 40](images/yywM3BbT5x.jpg)

12. Просмотрим полный лог. Переключимся на ветку master. Создадим файл README в ветке master. Сделаем коммит изменений README.md в ветку master. Просмотрим текущие ветки. Вернемся к ветке style и сольем master с style.

![рис 41](images/w5Vhu6AyYa.jpg)

![рис 42](images/XQIOhtbGP0.jpg)

![рис 43](images/vOryMuZ4ib.jpg)

![рис 44](images/pfWPuomOaq.jpg)

13. Вернемся в ветку master и внесем изменения в файл lib/hello.html. Закоммитим изменения. Просмотрим ветки.

![рис 45](images/Hfox1BRw7u.jpg)

![рис 46](images/4aHbK2gN8D.jpg)

![рис 47](images/7BJ8DtqtfL.jpg)

![рис 48](images/84FHb2y1yP.jpg)

14. Вернемся к ветке style и попытаемся объединить ее с новой веткой master. Вручную внесем изменения в lib/hello.html. Сделаем коммит решения конфликта. 

![рис 49](images/tKBKO1ar8i.jpg)

![рис 50](images/F9iNdBr8vf.jpg)

![рис 51](images/4u5XL0qOok.jpg)

15. Вернемся на ветке style к точке перед тем, как мы слили ее с веткой master. Видим, что коммит «Updated index.html» был последним на ветке style
перед слиянием. Сбросим ветку style к этому коммиту. Вернемся в ветке master в точку перед внесением конфликтующих изменений. Коммит «Added README» идет непосредственно перед коммитом конфликтующего интерактивного режима. Сбросим ветку master к коммиту «Added README». 

![рис 52](images/y3G1rGoihZ.jpg)

![рис 53](images/CKpTPVO9hi.jpg)

![рис 54](images/Rk4MZcm0lv.jpg)

![рис 55](images/QwrTgTn5ko.jpg)

16. Используем команду rebase вместо команды merge. Сольем изменения style в ветку master. 

![рис 56](images/3MsYg0Xqws.jpg)

![рис 57](images/CP8t5Pm03K.jpg)

17. Перейдем в рабочий каталог. Создадим клон репозитория hello. Взглянем на клонированный репозиторий. Просмотрим origin клонированого репозитория.  Посмотрим на ветки, доступные в клонированном репозитории. 

![рис 58](images/jZdoJbntei.jpg)

![рис 59](images/mVZW8EKIje.jpg)

![рис 60](images/LOqZfTdpnm.jpg)

![рис 61](images/IKg1uCAqGB.jpg)

![рис 62](images/Sd9xylzevu.jpg)

18. Внесем изменения в оригинальный файл README.md репозитория hello. Добавим это изменение и сделаем коммит. Научимся извлекать изменения из удаленного репозитория с помощью git fetch. Сольем извлеченные изменения в локальную ветку master. Попробуем ввесли команду git pull, которая совмещаем в себе fetch и merge. Добавим локальную ветку, которая отслеживает удаленную ветку.

![рис 63](images/WdcxDVzgOr.jpg)

![рис 64](images/oVkzfEYbDt.jpg)

![рис 65](images/b5cQQ0xOfL.jpg)

![рис 66](images/5zn8DTo47T.jpg)

![рис 67](images/c3GWtJluja.jpg)

19. Создадим чистый репозиторий. Добавим репозиторий hello.git к нашему оригинальному репозиторию. Отправим изменения в другие репозитории. Для этого отредактируем файл README.md и сделаем коммит. Научимся извлекать изменения из общего репозитория. Переключимся в клонированный репозиторий и извлечем изменения, только что отправленные в общий репозиторий.

![рис 68](images/cotsatMyY1.jpg)

![рис 69](images/4iS9vaBUDL.jpg)

![рис 70](images/jm9jhx1crU.jpg)

![рис 71](images/H9xNKrx9m4.jpg)


# Выводы

В ходе работы мы изучили основы работы с git репозиториями. Мы научились создавать и изменять проект, индексировать и удалять изменения, создавать, изменять и отменять коммиты, перемещать файлы репозитория, работать с объектами git, создавать и перемещаться по ветками репозитория, совмещать ветки, клонировать репозитории, создавать чистые репозитории и добавлять удаленный репозиторий. 

# Список литературы{.unnumbered}

::: {#refs}
:::