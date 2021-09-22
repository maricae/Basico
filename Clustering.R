## Importando os dados #
library(readxl)
dados <- read_excel("C:/Users/maric/OneDrive/Estudos/Data Science/Portfolio/Clustering/Dados.xlsx")

## Leitura dos pacotes do clustering
library(FactoMineR)
library(ggplot2)
library(factoextra)
library(cluster)

## Clustering
data <- dados[,-c(1)] 
rownames(dados) <- dados$mun
data.scale <- scale(data) 

fviz_nbclust(data.scale, kmeans, method = "gap_stat") # definir quantidade ?tima de clusters
data.kmeans <- kmeans(data.scale, 4)   # gerar kmeans com 4 clusters
fviz_cluster(data.kmeans, data = data )  # Visualizar gr?fico
clusters.data <- data.kmeans$cluster  # criar tabela com coluna de clusters
data.clusters <- cbind(data, clusters.data)  # agrupando as duas tabelas
table(data.clusters$clusters.data)
km.res=kmeans(data.clusters, 4, nstart=25)
print(km.res)
# Comparando as m?dias, O cluster n?mero 2 apresenta as melhores vari?veis
data.clusters["mun"]<-c(dados$mun)
best.data <- data.clusters[data.clusters$clusters.data==2,]
View(best.data)

