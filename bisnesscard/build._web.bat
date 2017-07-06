cd bisnesscard-web
npm install
npm run build
cd ..
docker build -t bisness-web -f Dockerfile.web 