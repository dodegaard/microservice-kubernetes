kubectl rollout status deployment apache -n opentelemetry --image=docker.io/$DOCKER_ACCOUNT/microservice-kubernetes-demo-apache:latest --port=80
kubectl expose deployment apache -n opentelemetry --type="LoadBalancer" --port 80
kubectl create deployment catalog -n opentelemetry --image=docker.io/$DOCKER_ACCOUNT/microservice-kubernetes-demo-catalog:latest --port=8080
kubectl expose deployment catalog -n opentelemetry --type="LoadBalancer" --port 8080
kubectl create deployment customer -n opentelemetry --image=docker.io/$DOCKER_ACCOUNT/microservice-kubernetes-demo-customer:latest --port=8080
kubectl expose deployment customer -n opentelemetry --type="LoadBalancer" --port 8080
kubectl create deployment order -n opentelemetry --image=docker.io/$DOCKER_ACCOUNT/microservice-kubernetes-demo-order:latest --port=8080
kubectl expose deployment order -n opentelemetry --type="LoadBalancer" --port 8080
