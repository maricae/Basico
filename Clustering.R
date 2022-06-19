## Importando os dados do excel ##
library(readxl)
data <- read_excel("C:/Users/Cliente/OneDrive/Estudos/Data Science/Machine Learning/Clustering - R/Dados.xlsx")

## Leitura dos pacotes do clustering ##
install.packages("FactoMineR")
library(FactoMineR)
install.packages("ggplot2")
library(ggplot2)
install.packages("factoextra")
library(factoextra)
install.packages("cluster")
library(cluster)

## Transformando em Escala ##
data.no_name <- data[,-c(1)]
rownames(data.no_name) <- data$mun
data.scale <- scale(data.no_name)
rownames(data.scale) <- data$mun


############# Clustering ## Metodo 1 ## Clusters: 5
range_k <- c(1:25)
range_k

soma_quadrados <- 0

set.seed(1987)
for (i in range_k) {
  cluster <- kmeans (data.scale, centers = i, nstart = 25)
  soma_quadrados[i] <- sum(cluster$withinss)
}
soma_quadrados #quanto o dados no mesmo cluster sao semelhantes, se sao homogeneos

# observar onde teve a primeira variacao, neste caso no cluster 5 (Metodo Elbow)
plot(range_k, soma_quadrados, type = 'b',
     xlab = 'Nemero de Clusters',
     ylab = 'Soma dos Qaudrados')
axis(side = 1, at = range_k, labels = range_k)

abline(v = 5, col = 'red') # Traca a linha no cluster 5


############# Clustering ## Metodo 2 ## Clusters: 2
fviz_nbclust(data.scale, kmeans, method = "gap_stat") # Saber numero de cluster ideal


############# Clustering ## Metodo 3 ## Clusters: 2
range_k <- c(2:15)
medias_silhouete <- c(0)

set.seed(1987) # Reproduzir os mesmos resultados
for(i in range_k) {
  clusters <- kmeans(data.scale, centers = i)
  silhouete <- silhouette(clusters$cluster, dist(data.scale))
  medias_silhouete[i] <- mean(silhouete[,3])
}
medias_silhouete

plot(medias_silhouete, type = 'b',
     xlab = 'Nuemro de Cluster',
     ylab = 'Media Silhouete')
axis(side = 1, at = range_k, labels = range_k) # Cluster 2 tem a maior media

#######################################
data.kmeans <- kmeans(data.scale, 2)   # gerar kmeans com 2 clusters
fviz_cluster(data.kmeans, data = data.no_name )  # visualizar grafico de distribuicao dos grupos
clusters.data <- data.kmeans$cluster  # criar tabela com coluna de clusters
data.clusters <- cbind(data.no_name, clusters.data)  # agrupando as duas tabelas
km.res <- kmeans(data.clusters, 2, nstart=25)
print(km.res) # visualizar medias de cada cluster
# Comparando as medias, o cluster numero 2 apresenta as melhores variaveis positivas e negativas

## Separando um base com os melhores municipios ##
best.data <- data.clusters[data.clusters$clusters.data==1,]
View(best.data)

