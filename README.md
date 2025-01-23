# Taller-grupal-equipo-2-internacional
Trabajo grupal para aprender el manejo de GitHub

## Descripción del Proyecto
Este proyecto implementa un análisis de clustering no jerárquico utilizando el algoritmo K-means en R sobre datos de expresión génica. El objetivo es identificar patrones y agrupar genes con perfiles de expresión similares, facilitando la identificación de grupos funcionales o coregulados.

## Estructura del Proyecto
```
clustering-project/
├── data/
│   └── Dataset_expresion_genes.csv    # Datos de expresión génica
├── scripts/
│   └── kmeans_analysis.R             # Script principal de análisis
└── results/
    ├── cluster_k2.png               # Visualización con 2 clusters
    ├── cluster_k3.png               # Visualización con 3 clusters
    └── optimal_clusters.png         # Gráfico del número óptimo de clusters
```

## Descripción de las Carpetas
1. **data/**
   - Contiene el archivo CSV con los datos de expresión génica
   - Cada fila representa una muestra
   - Las columnas con prefijo "AQ_" contienen los niveles de expresión de diferentes genes

2. **scripts/**
   - Contiene el script principal de R para el análisis de clustering
   - Implementa la normalización de datos, K-means clustering y visualización
   - Incluye análisis para determinar el número óptimo de clusters

3. **results/**
   - Almacena las visualizaciones generadas por el análisis
   - Incluye gráficos de clusters y el análisis del número óptimo de clusters

## Análisis Detallado del Script de Clustering

### Preparación de Datos
1. **Carga y Selección de Datos**
   - Lee el archivo CSV con datos de expresión génica
   - Selecciona específicamente las columnas que comienzan con "AQ_"
   - Verifica la ausencia de valores faltantes

2. **Normalización**
   - Aplica normalización Z-score para estandarizar los datos
   - Asegura que todas las variables contribuyan equitativamente al análisis

