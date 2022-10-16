## Файл `squirrels.csv`

### Контекст

Результаты наблюдений за белками в Центральном парке Нью-Йорка.

### Данные

Основное описание переменных [здесь](https://github.com/rfordatascience/tidytuesday/tree/master/data/2019/2019-10-29). 
Также в датафрейм добавлены столбцы `cinnamon`, `grey` и `black` с дамми-переменными на цвет белки 
(рыжий или нет, серый или нет, черный или нет).

Примечание: если будете учитывать цвет белки в модели, не добавляйте в модель все три переменные 
`cinnamon`, `grey` и `black`, какую-нибудь одну нужно выкинуть. Например, можно включить все цвета, 
кроме серого, и тогда серый цвет будет базовой (референтной) категорией, с которой сравниваются все остальные. 
Так, например, коэффициент при `cinnamon` в такой модели будет отвечать не просто за различия между рыжими белками и всеми остальными,
а за различия между рыжими белками и серыми. С остальными дамми-переменными история аналогичная.