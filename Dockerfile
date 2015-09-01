from google/cloud-sdk

RUN gcloud -q components update kubectl; \
    gcloud -q config set project fdic-cluster1-dev; \
    gcloud -q config set compute/zone us-central1-b; \
    gcloud -q config set container/cluster dev1 ;\
    gcloud config list
