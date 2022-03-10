docker build -t asia.gcr.io/poc-innovation-iot/simple-cronjob:v1.0 ..
docker push asia.gcr.io/poc-innovation-iot/simple-cronjob:v1.0

gcloud container clusters get-credentials poc-cluster-cmmn --zone asia-southeast1-b --project poc-innovation-iot
helm upgrade --install simple-cronjob --history-max 3 -n example-app ../.helm
