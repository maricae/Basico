# Clusterização de Municípios Mineiros
O objetivo principal desse projeto é identificar municípios que apresentam as melhores características para a inclusão de uma nova linha de supermercados. Para isso, foram utilizados dados, socioeconômicos e outros, dos municípios de Minas Gerais e, a partir da comparação das médias dos clusters, poder identificar o grupo de municípios que apresentam as melhores médias das variáveis.

São consideradas **variáveis positivas** aquelas que afetam positivamente o poder aquisitivo das pessoas, em que um aumento dessa variável seria benéfico para a nova linha de supermercados. Da mesma forma, as **variáveis negativas** são aquelas que afetam negativamente o mercado consumidor, em que seu alto valor seria uma barreira para a entrada de novos estabelecimentos do setor.

Para identificar o melhor cluster, é feita uma comparação entre as médias das variáveis de cada cluster, em que o melhor será aquele que apresetar as maiores variáveis positivas e menores variáveis negativas.

*Observações sobre o banco de dados: a capital de Minas Gerais (Belo Horizonte), não foi incluída na base, pois os valores dos seus indicadores são muito discrepantes em relação aos outros municípios, o que poderia enviesar a média na hora da comparação. Além disso, os municípios que não têm supermercados não foram incluídos na base.*

Primeiramente, é necessário apresentar a descrição de cada variável para melhor entendimento do processo de comparação:

* **Índice de Gini da renda domiciliar per capita:** é um índice que mensura a desigualdade social de uma região e que varia entre 0 e 1. Valores próximos de 1 representam alto nível de desigualdade e, próximo de zero, baixo nível de desigualdade. Neste caso, é considerado uma **variável negativa**.

* **Índice de Desenvolvimento Humano Municipal (IDH-M):** mensura o desenvolvimento de um município com base em três âmbitos sociais, a longevidade, educação e renda. Um bom indicador para a inclusão de uma nova empresa, já que define ajuda na comparação do poder de compra e qualidade de vida de um município. É considerado uma **variável positiva**.

* 


