[![CircleCI](https://dl.circleci.com/status-badge/img/gh/ilatyphi95/microservice-kubernetes/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/ilatyphi95/microservice-kubernetes/tree/main)

## Project Overview

This project has pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Modes of Running the project

1. Standalone: `python app.py`
2. Run in Docker: `./run_docker.sh`
3. Run in Kubernetes: `./run_kubernetes.sh`

### Standalone Steps:

- Ensure that python3 is installed then run the following commands in the project directory
  python3 -m venv .venv
  source .venv/bin/activate
  python3 -m pip install --upgrade pip
  python3 -m pip install -r requirements.txt
  python -m flask run --host=0.0.0.0 --port=80
- Open another terminal the run the following comand in the project directory
  ./make_prediction.sh

### Run in Docker Steps:

- Ensure that docker is installed on the host machine then run the following commmand in the project directory
  ./run_docker.sh
- Open another terminal the run the following comand in the project directory
  ./make_prediction.sh

### Run in Kubernetes Steps:

- Ensure that kubectl is installed and running on the host machine then run the following commmand in the project directory
  ./run_kubernetes.sh
- Open another terminal the run the following comand in the project directory
  ./make_prediction.sh

### Files description:

- the folder model_data contains data used to train the model
- the folder output_txt_files contain the log output of docker application run as well as the kubernetes output
- app.py is the server entry point for the application
- the .circleci folder contains the config file for the circleci build
- make_prediction.sh is a script file for testing the model with a particular sample
- run_docker.sh is a script file for running the application in a docker environment
- run_kubernetes.sh is a script file for running the application in a kubernates environment
