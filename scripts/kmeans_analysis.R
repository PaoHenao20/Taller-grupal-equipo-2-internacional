# Análisis de Clustering No Jerárquico con K-means
# Script principal para el análisis de datos de expresión génica

# Limpiar el ambiente de trabajo
rm(list=ls())

# Cargar las liberías necesarias
library(dplyr)
library(ggplot2)
library(factoextra)
library(stats)

# Configurar el directorio de trabajo
# Ajusta esta ruta según tu estructura de carpetas
setwd("ruta/a/tu/proyecto")

# 1. Cargar y preparar los datos
# ----------------------------------------
# Leer el archivo CSV
df <- read.csv("data/Dataset expresion genes.csv")

# Seleccionar solo las columnas de genes (prefijo AQ_)
df_genes <- df %>% dplyr::select(starts_with("AQ_"))

# Verificar la estructura de los datos
print("Estructura de los datos:")
str(df_genes)

# Verificar valores faltantes
is.na(colSums(df_genes))

# Normalización de datos
df_genes_scale <- scale(df_genes)  # Normalización z-score

# 2. Análisis de Clustering
# ----------------------------------------

# clustering con k=2
kmeans.result <- kmeans(df_genes_scale, centers = 2, iter.max = 100, nstart = 25)
fviz_cluster(kmeans.result, df_genes_scale, xlab = '', ylab = '') +
  ggtitle("Cluster plot, centers = 2", subtitle = "") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, margin = margin(b = -10)))

# clustering con k=3
kmeans.result <- kmeans(df_genes_scale, centers = 3, iter.max = 100, nstart = 25)
fviz_cluster(kmeans.result, df_genes_scale, xlab = '', ylab = '') +
  ggtitle("Cluster plot, centers = 3", subtitle = "") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, margin = margin(b = -10)))

# 3. Determinar número óptimo de clusters
# ----------------------------------------
# Generar y guardar gráfico del método elbow
fviz_nbclust(df_genes_scale, kmeans, method = "wss") +
  ggtitle("Optimal number of clusters", subtitle = "") +
  theme_classic()
