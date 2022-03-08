docker build -t asia.gcr.io/poc-innovation-iot/simple-cronjob:uat .
docker push asia.gcr.io/poc-innovation-iot/simple-cronjob:uat

gcloud container clusters get-credentials poc-cluster-cmmn --zone asia-southeast1-b --project poc-innovation-iot
helm upgrade --install simple-cronjob --history-max 3 -n simple-batch .helm
