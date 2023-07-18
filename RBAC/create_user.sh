# create private key
openssl genrsa -out private-key/hitesh.key 2048

#create csr ime certificate-signing-request
#CN - commonName
#O - organisation
openssl req -new -key private-key/hitesh.key -out certificate-signing-request/hitesh.csr -subj "/CN=hitesh-dev/O=developers"

#Two ways to generate client .crt
#generate client certificate
#1)
openssl x509 -req -in certificate-signing-request/hitesh.csr -CA ~/.minikube/ca.crt -CAkey ~/.minikube/ca.key -CAcreateserial -out client-crt/hitesh.crt -days 20

#2) we can create kubernetes csr certificate request resource and apply it
# will get client crt in the applied yaml spec