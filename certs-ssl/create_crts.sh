
#create diff certs for two domail app.example.com apis.example.com
#add 1)FQDN app.example.com
openssl req -x509 -nodes -days 9999 -newkey rsa:2048 -keyout ./ingress-tls.key -out ./ingress-tls.crt


#add 1)FQDN apis.example.com
openssl req -x509 -nodes -days 9999 -newkey rsa:2048 -keyout ./ingress-tls-apis.key -out ./ingress-tls-apis.crt
