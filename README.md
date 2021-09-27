# Clusterização dos Municípios Mineiros
O objetivo principal desse projeto é identificar municípios que apresentam as melhores características para a inclusão de uma nova linha de supermercados. Para isso, foram utilizados dados, socioeconômicos e outros, dos municípios de Minas Gerais e, a partir da comparação das médias dos clusters, poder identificar o grupo de municípios que apresentam as melhores médias das variáveis.

São consideradas **variáveis positivas** aquelas que afetam positivamente o poder aquisitivo das pessoas, em que um aumento dessa variável seria benéfico para a nova linha de supermercados. Da mesma forma, as **variáveis negativas** são aquelas que afetam negativamente o mercado consumidor, em que seu alto valor seria uma barreira para a entrada de novos estabelecimentos do setor.

Para fazer a clusterização, foi utilizado o algotirmo *k-means* (machine learning), atráves da linguagem R, e depois foi feita uma comparação entre as médias das variáveis de cada cluster, em que o melhor foi aquele que apresetou as maiores médias das variáveis positivas e as menores médias das variáveis negativas.

*Observações sobre o banco de dados: a capital de Minas Gerais (Belo Horizonte), não foi incluída na base, pois os valores dos seus indicadores são muito discrepantes em relação aos outros municípios, o que poderia enviesar a média na hora da comparação. Além disso, os municípios que não têm supermercados não foram incluídos na base.*

Primeiramente, é necessário apresentar a descrição de cada variável para melhor entendimento do processo de comparação:

* **Índice de Gini da renda domiciliar per capita (2010):** é um índice que mensura a desigualdade social de uma região e que varia entre 0 e 1. Valores próximos de 1 representam alto nível de desigualdade e, próximo de zero, baixo nível de desigualdade. Neste caso, é considerado uma **variável negativa**.

* **Índice de Desenvolvimento Humano Municipal (2010):** mensura o desenvolvimento de um município com base em três âmbitos sociais, a longevidade, educação e renda. Um bom indicador para a inclusão de uma nova empresa, já que define ajuda na comparação do poder de compra e qualidade de vida de um município. É considerado uma **variável positiva**.

* **Pobreza (2010):** é a proporção de pessoas com baixa renda (menos de meio salário mínimo no ano de 2010). Considerada uma **variável negativa**.

* **Taxa de desemprego (2010):** nível de desocupação de pessoas com 16 anos ou mais. Municípios com altas taxas de desemprego, apresentam um fraco mercado consumidor. Portanto, é uma **variável negativa**.

* **Densidade demográfica (2010):** é o número de pessoas por kilômetro quadrado, ou seja, quanto maior a densidade demográfica, maior será o alcance de pessoas por estabelecimento. Portanto, é uma **variável positiva**.

* **Renda média domiciliar per capita (2010):** bom indicador para avaliar o poder de compra da população. Considerada uma **variável positiva**.

* **Proporção da população urbana (2010):** como os supermercados são instalados na área urbana de um município, é vantajoso para o estabelecimento uma proporção maior do número de pessoas que vivem na área urbana. Considerada uma **variável positiva**.

* **Distância da capital:** um município muito distante da capital pode ser um fator custoso, em relação à logística, para a nova empresa. Portanto, é uma **variável negativa**.

* **População de 25 anos ou mais (2000):** quanto maior o nível populacional, maior é número de consumidores em um município. O intervalo de idade das pessoas que mais frequentam supermercados é de 40 a 60 anos. Portanto, as pessoas com 25 anos no ano 2000 é, hoje, o principal público de supermercados. Então, essa é uma **variável positiva**.

* **Taxa de crescimento populacional entre os anos de 2000 e 2010:** é a taxa de variação entre a população de 2000 e 2010. Se há crescimento populacional em um município, haverá crescimento do mercado consumidor. Considerado uma **variável positiva**.

* **Número de supermercado por mil habitantes (julho/2021):** é a taxa do número de supermercados que tem disponível para cada mil habitantes em um município. Pode dar uma ideia da concorrência de supermercados no município. Considerada uma **variável negativa**.




