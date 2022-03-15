---
# Front matter
title: "Отчет по лабораторной работе №6"
subtitle: "Задача об эпидемии. Вариант 34"
author: "Бармина Ольга Константиновна"
group: NFIbd-01-19
institute: RUDN University, Moscow, Russian Federation
date: 2022 March 15th

# Generic otions
lang: ru-RU
toc-title: "Содержание"

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

Ознакомление с простейшей моделью Эпидемии и ее построение с помощью языка программирования Modelica.

# Задачи

1. Построить графики изменения числа особей в каждой из трех групп.

2. Рассмотреть, как будет протекать эпидемия в случае:

  - если $I(0) \leq I^*$

  - если $I(0) > I^*$

# Теоретические сведения

Предположим, что некая популяция, состоящая из N особей, (считаем, что популяция изолирована) подразделяется на три группы. Первая группа - это восприимчивые к болезни, но пока здоровые особи, обозначим их через S(t). Вторая группа – это число инфицированных особей, которые также при этом являются распространителями инфекции, обозначим их I(t). А третья группа, обозначающаяся через R(t) – это здоровые особи с иммунитетом к болезни. [1]

До того, как число заболевших не превышает критического значения I* считаем, что все больные изолированы и не заражают здоровых. Когда I(t)>I*, тогда инфицирование способны заражать восприимчивых к болезни особей.

Таким образом, скорость изменения числа S(t) меняется по следующему закону:

$$\frac{dS}{dt}= \begin{cases} -\alpha S &\text{,если I(t) > I*} \\
0 &\text{,если I(t) $\leq$ I*} \end{cases}$$

Поскольку каждая восприимчивая к болезни особь, которая, в конце концов, заболевает, сама становится инфекционной, то скорость изменения числа инфекционных особей представляет разность за единицу времени между заразившимися и теми, кто уже болеет и лечится. Т.е.:

$$\frac{dI}{dt}= \begin{cases} \alpha S -\beta I &\text{,если I(t) > I*} \\
-\beta I &\text{,если I(t) $\leq$ I*} \end{cases}$$

А скорость изменения выздоравливающих особей (при этом приобретающие иммунитет к болезни):

$$\frac{dR}{dt} = \beta I$$

Постоянные пропорциональности $\alpha, \beta$ - это коэффициенты заболеваемости и выздоровления соответственно. Для того, чтобы решения соответствующих уравнений определялось однозначно, необходимо задать начальные условия. Считаем, что на начало эпидемии в момент времени $t=0$ нет особей с иммунитетом к болезни $R(0)=0$, а число инфицированных и восприимчивых к болезни особей $I(0)$ и $S(0)$ соответственно. Для анализа картины протекания эпидемии необходимо рассмотреть два случая: $I(0) \leq I*$ и $I(0)>I*$

# Начальные данные

В варианте 34 дано:

На одном острове вспыхнула эпидемия. Известно, что из всех проживающих на острове $(N=12 200)$ в момент начала эпидемии $(t=0)$ число заболевших людей $(являющихся распространителями инфекции)$ I$(0)$=130, А число здоровых людей с иммунитетом к болезни R$(0)$=53. Таким образом, число людей восприимчивых к болезни, но пока здоровых, в начальный момент времени S$(0)$=N-I$(0)$- R$(0)$.

# Ход работы

1. Напишем программу на языке Modelica.

![Рис 1. Код программы](images/iZLH60GIhy.jpg)

2. Построили график изменения числа инфекционных особей I(t) и числа выздоравливающих особей R(t), если число инфицированных не превышает критического значения.

![Рис 2. График изменения числа инфекционных особей I(t) и числа выздоравливающих особей R(t), если число инфицированных не превышает критического значения](images/sn8ufcgViy.jpg)

3. Построили график изменения числа особей, восприимчивых к болезни S(t), если число инфицированных не превышает критического значения.

![Рис 3. График изменения числа особей, восприимчивых к болезни S(t), если число инфицированных не превышает критического значения](images/prkk58YtLj.jpg)

4. Изменили код, для случая $I(t) \leq I^*$.

![Рис 4. Код программы](images/ntkCKtDoth.jpg)

5. Построили график изменения числа особей, восприимчивых к болезни S(t), числа инфекционных особей I(t) и числа выздоравливающих особей R(t), если число инфицированных выше критического значения.

![Рис 5. График изменения числа особей, восприимчивых к болезни S(t), числа инфекционных особей I(t) и числа выздоравливающих особей R(t), если число инфицированных выше критического значения](images/f3KGckWMRu.jpg)

# Выводы

Ознакомились с простейшей моделью Эпидемии и построил графики с помощью языка программирования Modelica.

# Библиография

1. Методические материалы курса