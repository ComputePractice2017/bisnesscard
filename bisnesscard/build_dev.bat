docker build -t bisness-dev -f Dockerfile.dev .

docker run -d --rm --name dev -p "80:80" -d bisness-dev