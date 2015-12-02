pushd mock_server
npm install
docker build -t mock-server:1.0.0 .
popd
docker run -d -p "80:80" mock-server:1.0.0