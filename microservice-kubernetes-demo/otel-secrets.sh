kubectl delete secret otel-collector-secret -n opentelemetry
kubectl delete secret otel-opamp-bridge-secret -n opentelemetry

export LS_TOKEN=''
kubectl create secret generic otel-collector-secret -n opentelemetry --from-literal="LS_TOKEN=$LS_TOKEN"

export LS_OPAMP_API_KEY=''
kubectl create secret generic otel-opamp-bridge-secret -n opentelemetry --from-literal="LS_OPAMP_API_KEY=$LS_OPAMP_API_KEY"

