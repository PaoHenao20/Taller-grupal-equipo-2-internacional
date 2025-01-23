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
   
### Análisis de Clustering
El script implementa el algoritmo K-means, que:
1. **Inicialización**
   - Comienza con k centroides aleatorios (k = número de clusters deseados)
   - Utiliza múltiples inicializaciones (nstart = 25) para encontrar la mejor solución

2. **Iteración**
   - Asigna cada punto al centroide más cercano
   - Recalcula los centroides basándose en las nuevas asignaciones
   - Repite hasta la convergencia (máximo 100 iteraciones)

3. **Visualización**
   - Genera gráficos de dispersión con clusters coloreados
   - Implementa visualizaciones para k=2 y k=3 clusters

4. **Determinación del Número Óptimo de Clusters**
   - Utiliza el método "elbow" (WSS: Within-cluster Sum of Squares)
   - Ayuda a determinar el número más apropiado de clusters

## Requisitos de Software
- R version 4.0 o superior
- Paquetes de R requeridos:
  - dplyr
  - ggplot2
  - factoextra
  - stats
    
## Objetivos del Proyecto
- Identificar patrones en los datos de expresión génica.
- Agrupar genes con perfiles de expresión similares.
- Facilitar la identificación de grupos funcionales o coregulados.

## Instrucciones para Contribuir
1. Hacer un fork del repositorio.
2. Crear una nueva rama.
3. Realiza tus cambios y confirma.
4. Envía los cambios a tu rama.
5. Abre un Pull Request para que tus cambios sean revisados.

## Notas de la Versión
- **v1.0.0**: Versión inicial.
- **v1.1.0**: Cambio realizado.

## Licencia
Este proyecto está licenciado bajo la Licencia GNU.

## Créditos
Danitza Castañeda Peña
Sebastian Osorio Sepulveda
Paola Andrea Henao Suárez
Juan Carlos Mariños Legendre
Ruben Darío Ferro Mauricio

## Historial de Cambios
- v1.0.0: Versión inicial.
- v1.1.0: Cambio realizado.
