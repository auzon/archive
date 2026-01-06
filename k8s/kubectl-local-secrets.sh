# !THIS IS FOR DEV PURPOSES DON'T USE FOR PRODUCTION

# cleanup previous secrets if exists
kubectl delete user-service-secrets

# this creates the secret but update the related values for your needs
kubectl create secret generic "user-service-secrets" \
  --from-literal=DB_HOST="postgres" \
  --from-literal=DB_PORT="5432" \
  --from-literal=DB_NAME="user_db" \
  --from-literal=DB_USER="user_service" \
  --from-literal=DB_PASSWORD="user_service_password" \
  --dry-run=client -o yaml | kubectl apply -f -

# verify secrets are applied
kubectl get secret user-service-secrets -o jsonpath="{.data}"

# same as above but in yaml
kubectl get secret user-service-secrets -o yaml
