# Time_series_forecasting
Прогнозирование временных рядов методом singular spectrum analysis.

## Задача

По данным уличного датчика температуры/влажности/давления воздуха [BME280](https://robotchip.ru/bme280-datchik-atmosfernogo-davleniya-vlazhnosti-i-temperatury/) домашней метеостанции предсказать поведение графика температуры.
Для прогнозирования использовался метод [SSA](https://ru.wikipedia.org/wiki/SSA_(%D0%BC%D0%B5%D1%82%D0%BE%D0%B4)), известным также под именем ["Гусеница"](https://www.gistatgroup.com/gus/index.html).

Данная задача была решена с помощью MATLAB, файлы `ssafor.m` и `ssaspe.m` взяты из [этого](https://github.com/anton-a-tkachev/SSA-for-Matlab) репозитория.

## Описание файлов

