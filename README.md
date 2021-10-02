# jupyter-nltk
[Is a Jupyter Docker stacks SciPy + NLTK](https://www.mendeley.com/download-reference-manager/linux)

## Setup
Pull a Jupyter scipy-notebook image
```
docker pull jupyter/scipy-notebook
```
Build a new jupyter-nltk image over jupyter/scipy-notebook
```
docker build -t jupyter-nltk .
```

### *nix
```
docker run -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v ${PWD}:/home/jovyan/work -v "$PWD"/data:/home/jovyan/nltk_data --name jupyter-nltk jupyter-nltk
```

### Windows
```
docker run -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v ${PWD}\Project\tedyfrba\nlp:/home/jovyan/work -v ${PWD}\Project\tedyfrba\nlp\data:/home/jovyan/nltk_data --name jupyter-nltk jupyter-nltk
```

## Usage
If container was stopped just run
```
docker start jupyter-nltk
```
and access to url (or similar) given in `docker logs jupyter-nltk`
```
http://127.0.0.1:8888/lab?token=152078005ecb52e11970f6641ed28e4919b1aac25fc57110
```
### volumes
`${PWD}:/home/jovyan/work` workspace for the notebooks.
`${PWD}\data:/home/jovyan/nltk_data` avoid to download the data all the time.

### data
`data/` data directory.
