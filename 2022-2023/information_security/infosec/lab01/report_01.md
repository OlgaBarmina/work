---
# Front matter
title: "Отчет по лабораторной работе №1"
subtitle: "Установка и конфигурация операционной системы на виртуальную машину"
author: "Бармина Ольга Константиновна"
group: NFIbd-01-19
institute: RUDN University, Moscow, Russian Federation
date: 2022 Sep 5th

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

Целью данной работы является приобретение практических навыков установки операционной системы на виртуальную машину, настройки минимально необходимых для дальнейшей работы сервисов.

# Контрольные вопросы

1. Учётная запись, содержит сведения, необходимые для опознания пользователя при подключении к системе - логин и пароль.

2. – для получения справки по команде - man
– для перемещения по файловой системе - cd
– для просмотра содержимого каталога - ls
– для определения объёма каталога - du
– для создания / удаления каталогов / файлов - mkdir, rm, touch
– для задания определённых прав на файл / каталог - chmod
– для просмотра истории команд - history

3. Файловая система — определяет и контролирует, как будут храниться и именоваться данные на носителе/накопителе информации. От нее зависит способ хранения данных на накопителе, сам формат данных и то, как они будут записываться/читаться в дальнейшем. Например, FAT32 — это разновидность файловой системы FAT. На данный момент является предпоследней версией этой ОС, прямом перед exFAT. Имеет расширенный размер тома, т.е. использует 32-разрядную адресацию кластеров.

4. КЧтобы посмотреть какие файловые системы уже смонтированы в системе можно выполнить команду mount без параметров или выполнить команду df -a. Также можно посмотреть содержимое файла /etc/mtab. 

5. Используя в терминале команду $ kill -сигнал pid_процесса.

# Выполнение лабораторной работы

1. Настроим месторасположение каталога для виртуальных машин.

![рис 1. Каталог для виртуальных машин](images/1.jpg)

2. Создадим новую виртуальную машину. Укажем имя виртуальной машины как логин из дисплейного класса, тип операционной системы — Linux, RedHat.

![рис 2. Создание виртуальной машины](images/2.jpg)

3. Укажем размер основной памяти виртуальной машины, зададим конфигурацию жесткого диска.

![рис 3. Объем памяти](images/3.jpg)

![рис 4. Подключение жесткого диска](images/4.jpg)

![рис 5. Тип жесткого диска](images/5.jpg)

![рис 6. Формат хранения](images/6.jpg)

![рис 7. Задание размера жесткого диска](images/7.jpg)

4. Добавим новый привод оптических дисков и выберем образ операционной системы Linux Rocky.

![рис 8. Подключение DVD-образа](images/8.jpg)

5. Запустим виртуальную машину. В разделе выбора программ укажем в качестве базового окружения Server with GUI, а в качестве дополнения — Development Tools, отключим KDUMP, место установки ОС оставляем без изменения, установливаем пароль для root и пользователя с правами администратора. 

![рис 9. Место установки ОС](images/9.jpg)

![рис 10. Задание логина и пароля](images/10.jpg)

6. Перезапустим виртуальную машину, укажем параметры учетной записи.

![рис 11. Создание учетной записи](images/11.jpg)

7. Откроем терминал. С помощью команды dmesg проанализируем последовательность загрузки системы. Дополнительно используя команду grep получим информацию о версии ядра Linux, частоте процессора, модели процессора, объеме доступной оперативной памяти, типе обнаруженного гипервизора, типе файловой системы корневого раздела, и последовательности монтирования файловых систем.

![рис 12. Последовательность загрузки системы](images/12.jpg)

![рис 13. Версия ядра](images/13.jpg)

![рис 14. Частота процессора](images/14.jpg)

![рис 15. Модель процессора](images/15.jpg)

![рис 16. Объем доступной ОП](images/16.jpg)

![рис 17. Тип гипервизора](images/17.jpg)

![рис 18. Тип файловой системы](images/18.jpg)

![рис 19. Последовательность монтирования](images/19.jpg)

# Выводы

В ходе работы мы приобрели практические навыки установки операционной системы на виртуальную машину, настройки минимально необходимых для дальнейшей работы сервисов.

# Список литературы

1. Методические материалы курса