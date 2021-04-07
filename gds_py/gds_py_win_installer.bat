REM Please run this from the Anaconda Prompt
REM This installer is pinned to the latest released version
REM Set up GDS environment
conda-env create -f https://github.com/darribas/gds_env/raw/v6.1/gds_py/gds_py.yml
REM Add pip packages
conda install -y -c conda-forge git
pip install -r https://github.com/darribas/gds_env/raw/v6.1/gds_py/gds_py_pip.txt
REM JupyterLab old plugin's
jupyter labextension install nbdime-jupyterlab --no-build
jupyter lab build -y
jupyter lab clean -y
conda clean --all -f -y
