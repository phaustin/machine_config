#!/bin/bash -v
HOME=/home/phil
CONDA_DIR=/home/phil/mini38;
CONDA_VERSION=4.8.2-1;
echo "Installing Miniforge..." ;
URL="https://github.com/conda-forge/miniforge/releases/download/${CONDA_VERSION}/Miniforge3-${CONDA_VERSION}-Linux-x86_64.sh" ;
wget  ${URL} -O miniconda.sh ;
/bin/bash miniconda.sh -u -b -p ${CONDA_DIR} ;
rm miniconda.sh ;
conda clean -afy ;
find ${CONDA_DIR} -follow -type f -name '*.a' -delete ;
find ${CONDA_DIR} -follow -type f -name '*.pyc' -delete;
${CONDA_DIR}/bin/conda init bash;
. ${HOME}/.bashrc;
${CONDA_DIR}/bin/conda activate base;
${CONDA_DIR}/bin/conda install -y conda-forge::conda-lock;
# conda-lock -f environment.yml -p linux-64;
# ${CONDA_DIR}/bin/conda create -n work --file *lock*;
# conda config --prepend channels conda-forge
# conda config --prepend channels eoas_ubc


