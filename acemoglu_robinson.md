## Файл `acemoglu_robinson.csv`

### Контекст (на английском)

D. Acemoglu, S. Johnson, and J. A. Robinson in the paper “The Colonial Origins of Comparative Development: 
An Empirical Investigation” (2001) evaluated the effect of institutions on economic performance. According to their theory, 
current economic performance of former colonies depends on the type of institutions europeans introduced during the process 
of colonization. The type of institutions, in its own turn, depends on natural conditions in a colony.

If natural conditions in a colony were bad and caused diseases and higher mortality, europeans tended to set up 
‘extractive states’ that was used only to transfer resources to the metropolitan country. In such cases colonizers did not 
develop high-quality institutions and thus, provided no protection for private property (Kongo). In colonies with good 
conditions europeans tried to settle more thoroughly and replicated European institutions with higher emphasis on the private 
property and the system of checks and balancies against government expropriation (Canada, New Zealand).

### Переменные 

* `shortnam` : сокращенное название страны;

* `logpgp95` : логарифм ВВП на душу населения в 1995 году;

* `avexpr` : индекс защищенности от экспроприации государством частного иностранного финансирования, 
усредненное значение за 1985-1995 годы, принимает значение от 0 до 10, где более высокие значения соответствуют меньшему риску;

* `lat_abst` : мера расстояния до экватора, абсолютное значение широты, переведенное в шкалу от 0 до 1, где 0 соответствует экватору;

* `africa`, `asia`, `america`, `other` : дамми-переменные, где 1 соответствует определенному континенту.

Примечание: если будете учитывать континент в модели, не добавляйте в модель все четыре переменные `africa`, `asia`, `america`, `other`,
какую-нибудь одну нужно выкинуть. Например, можно включить все континенты, кроме Америки, и тогда Америка будет 
базовой (референтной) категорией, с которой сравниваются все остальные. Так, например, коэффициент при `africa` в такой модели будет 
отвечать не просто за различия между странами Африки и остальными, а за различия между странами Африки и Америки. 
С остальными дамми-переменными история аналогичная.

