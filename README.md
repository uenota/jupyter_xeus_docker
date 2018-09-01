# jupyter_xeus_docker
Docker image for xeus-cling

## Run docker container
The container is built by running the following command in the same directory as `Dockerfile`.
```sh
docker build -t container_name .
```
The following command is to run the docker container while exposing jupyter server on port 8888 and mounting current working directory on `/home/jovyan/work`.
```sh
docker run --rm -p 8888:8888 -v "$PWD":/home/jovyan/work container_name:tag
```

### Reference
- https://jupyter-docker-stacks.readthedocs.io/en/latest/

## xeus-cling 
Jupyter kernel for C++.

- Document  
  https://xeus-cling.readthedocs.io/en/latest/
- GitHub  
  https://github.com/QuantStack/xeus-cling
  
  
## xwidget
- Document  
  https://xwidgets.readthedocs.io/en/latest/
- GitHub  
  https://github.com/QuantStack/xwidgets
  
## xplot
Unable to include `xplot/xfigure.hpp` with C++11 kernel.

- Document  
  https://github.com/QuantStack/xplot
- GitHub  
  https://xplot.readthedocs.io/en/latest/
- Examples  
  https://mybinder.org/v2/gh/QuantStack/xplot/stable?filepath=notebooks
