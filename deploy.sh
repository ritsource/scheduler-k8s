kubectl apply -f ingress-service.yaml
kubectl apply -f scheduler/

kubectl set image deployments/client-deployment client=ritwik310/scheduler-client:$SCHEDULER_TAG
kubectl set image deployments/server-deployment server=ritwik310/scheduler-server:$SCHEDULER_TAG
