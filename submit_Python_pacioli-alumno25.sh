#!/bin/bash
#SBATCH --output=output_%j.txt
#SBATCH --partition=hpc-bio-pacioli
#SBATCH --chdir=/home/alumno25/lab-python
#SBATCH --nodes=1
#SBATCH --ntasks=1

# Cargar el módulo de Anaconda
module load anaconda/2023.03

# Ejecutar el archivo con 10^7 elementos
ipython reduc-operation-alumno25.ipynb -- 10000000

# Ejecutar el archivo con 10^8 elementos
ipython reduc-operation-alumno25.ipynb -- 100000000

# Descargar el módulo de Anaconda después de la ejecución
module unload anaconda/2023.03

