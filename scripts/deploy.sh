
#Must gcloud init and select project and set creditenial first 

#Building Image 
# docker build --help for more info 
# -t whichmean we push the image with tag in this case we tag the image as version 1.0 (v1.0)
docker build -t asia.gcr.io/poc-innovation-iot/simple-cronjob:v1.0 ..

#Push built Image to container Registry
docker push asia.gcr.io/poc-innovation-iot/simple-cronjob:v1.0

#Get Creditdential set to destination project
# gcloud container clusters get-credentials clustername --zone zone --project project
gcloud container clusters get-credentials poc-cluster-cmmn --zone asia-southeast1-b --project poc-innovation-iot

#Deploy project using helm file 
#helm upgrade --install name --history-max 3 -n namespace {helm_location}
helm upgrade --install simple-cronjob --history-max 3 -n example-app ../.helm
