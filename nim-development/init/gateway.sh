docker image rm -f nim_gateway:latest
rm --recursive -f nim-gateway
git clone https://github.com/Pampaka/nim-gateway.git -b dev nim-gateway
# shellcheck disable=SC2164
cd nim-gateway
docker build -t nim_gateway .
# shellcheck disable=SC2103
cd ..
rm --recursive -f nim-gateway
docker rm -f nim_gateway
cd ..
docker-compose up -d nim_gateway

# NGINX DEBUG
#docker image rm -f nim_gateway:latest
## shellcheck disable=SC2164
#cd ../../../nim-gateway
#docker build -t nim_gateway .
## shellcheck disable=SC2164
#cd ../docker-scripts/nim-master
#docker rm -f nim_gateway
#docker-compose up -d nim_gateway
