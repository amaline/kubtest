from google/cloud-sdk

RUN apt-get -y install git vim; \
    gcloud -q components update kubectl; \
    gcloud -q config set project fdic-cluster1-dev; \
    gcloud -q config set compute/zone us-central1-b; \
    gcloud -q config set container/cluster dev1 ;\
    gcloud config list

# add certificates
ADD ./certs /usr/local/share/ca-certificates/
RUN update-ca-certificates

# env var needed for python to pick up certificates
ENV REQUESTS_CA_BUNDLE /etc/ssl/certs/ca-bundle.crt

