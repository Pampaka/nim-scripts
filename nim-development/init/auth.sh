docker image rm -f nim_auth:latest
rm --recursive -f nim-auth
git clone https://github.com/Pampaka/nim-auth.git -b dev nim-auth
# shellcheck disable=SC2164
cd nim-auth
docker build -t nim_auth .
# shellcheck disable=SC2103
cd ..
rm --recursive -f nim-auth
docker rm -f nim_auth
cd ..
docker-compose up -d nim_auth

# NGINX DEBUG
#docker image rm -f nim_auth:latest
## shellcheck disable=SC2164
#cd ../../../nim-auth
#docker build -t nim_auth .
## shellcheck disable=SC2164
#cd ../nim-scripts/nim-development
#docker rm -f nim_auth
#docker-compose up -d nim_auth
