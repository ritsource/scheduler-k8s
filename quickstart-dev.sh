kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/mandatory.yaml

minikube addons enable ingress

kubectl apply -f ingress-service.yaml

kubectl apply -f scheduler/
