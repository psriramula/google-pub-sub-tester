FROM google/cloud-sdk:162.0.0-alpine
# source : https://hub.docker.com/r/adilsoncarvalho/gcloud-pubsub-emulator
RUN apk --update add openjdk7-jre
RUN apk --no-cache --update add ca-certificates
RUN gcloud components install --quiet beta pubsub-emulator
RUN mkdir -p /var/pubsub
VOLUME /var/pubsub
EXPOSE 8001
CMD [ "gcloud", "beta", "emulators", "pubsub", "start", "--data-dir=/var/pubsub", "--host-port=0.0.0.0:8001", "--log-http", "--verbosity=debug", "--user-output-enabled" ]
