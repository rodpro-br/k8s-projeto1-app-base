echo "Criando as imagens......"

docker build -t rodpro/projeto-backend:1.0 backend/.

docker build -t rodpro/projeto-database:1.0 database/.

echo "Realizando push das imagens...."

docker push rodpro/projeto-backend:1.0

docker push rodpro/projeto-database:1.0

echo "Criando serviços no cluster kubernetes......"

kubectl apply -f ./services.yml

echo "Criando os deployments no cluster kubernetes......"

kubectl apply -f ./deployment.yml




