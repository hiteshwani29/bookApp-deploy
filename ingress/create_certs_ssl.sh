mkdir certs

openssl req -x509 -nodes -days 9999 -newkey rsa:2048 -keyout certs/ingress-tls.key -out certs-ssl/ingress-tls.crt

kubectl create secret tls ingress-cert  --key=certs-ssl/ingress-tls.key --cert=certs-ssl/ingress-tls.crt -o yaml --dry-run=client