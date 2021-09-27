## Importando os dados do excel ##
library(readxl)
dados <- read_excel("C:/Users/maric/OneDrive/Estudos/Data Science/Portfolio/Clustering/Dados.xlsx")

## Leitura dos pacotes do clustering ##
library(FactoMineR)
library(ggplot2)
library(factoextra)
library(cluster)

## Clustering ##
data <- dados[,-c(1)] # criar uma base sem a coluna de nomes dos municípios para transformar os dados em escala
rownames(dados) <- dados$mun # dar nome as linhas
data.scale <- scale(data) # transformar valores em escalas
fviz_nbclust(data.scale, kmeans, method = "gap_stat")
data.kmeans <- kmeans(data.scale, 4)   # gerar kmeans com 4 clusters
fviz_cluster(data.kmeans, data = data )  # visualizar grafico de distribuição dos grupos
clusters.data <- data.kmeans$cluster  # criar tabela com coluna de clusters
data.clusters <- cbind(data, clusters.data)  # agrupando as duas tabelas
km.res=kmeans(data.clusters, 4, nstart=25)
print(km.res) # visualizar médias de cada cluster
# Comparando as médias, o cluster numero 2 apresenta as melhores variaveis positivas e negativas

## Separando um base com os melhores municípios ##
data.clusters["mun"]<-c(dados$mun)
best.data <- data.clusters[data.clusters$clusters.data==2,]
View(best.data)

