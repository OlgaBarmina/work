---
# Front matter
lang: ru-RU
title: Молекулярная динамика
subtitle: Этап 1
author: |
	Асеинова Е.В.; 
    Бармина О.К.;
	Горбунова Я.М.;
	Евсеева Д.О.;
	Исаханян Э.Т.
group: NFIbd-01-19
institute: RUDN University, Moscow, Russian Federation
date: 2022 Feb 24th

# Formatting
toc: false
slide_level: 2
header-includes: 
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
aspectratio: 43
section-titles: true
theme: metropolis

---

## Молекулярная динамика

Метод молекулярной динамики рассматривает поведение вещества
на микроуровне — мы наблюдаем за движением отдельных молекул. При
этом мы хотим понять поведение сложной многочастичной системы. Применение данного метода даже к небольшим системам дает много для понимания наблюдаемых свойств газов, жидкостей
и твердых тел.

# Уравнения молекулярной динамики

## Потенциал взаимодействия

Влияние молекул друг на друга описывается потенциалом взаимодействия U. 

Мы будем рассматривать простейший случай - парное взаимодействие:

$$ U_{ij} = U(r_{ij}),$$ 
где $$ r_{ij} = |r_i - r_j|$$ 

## Движение частиц

Движение частиц описывается вторым законом Ньютона:

$$ m_i\frac{d^2r_i}{dt^2} = F_i$$ 

# Алгоритм Верле

Также будем использовать алгоритм Верле в скоростной форме:

$$ r_i^{n+1} = r_i^n + v_i^n * \delta t + a_i^n * \frac{\delta t^2}{2} $$ 

$$ v_i^{n+1} = v_i^n + \frac{1}{2} (a_i^n + a_i^{n+1}) \delta t$$ 

Здесь верхние индексы обозначают номер шага по времени

## Выбор шага по времени

Критерием для выбора шага по времени может служить условие сохранения полной энергии системы:

$$ E = \sum_1\frac{m_iv_i^2}{2} + \sum_{i<j} U_{ij} $$

# Потенциал Леннард-Джонса

$$U_{LJ} = \varepsilon ((\frac{b}{r})^{12} - 2(\frac{b}{r})^6)) $$

## Начальные и граничные условия

Нас интересует внутреннее состояние системы частиц. Из принципа относительности
следует, что равномерное поступательное движение системы как целого
не влияет на ее внутренние свойства. Такое движение можно исключить, задав суммарный импульс системы равным нулю.

Чтобы соотносить результаты расчета со свойствами гораздо большей системы, необходимо  задать периодические граничные условия.

# Выводы

Задача нашего проекта заключается в написании программы двумерной молекулярной динамики.

Для этого мы:

- задаем начальные условия с нулевым суммарным импульсом частиц
- задаем периодические граничные условия
- подбираем подходящий шаг по времени
- проверяем сохранение полной энергии и импульса
