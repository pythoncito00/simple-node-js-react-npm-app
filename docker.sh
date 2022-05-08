docker run -u root --name jenkins-blueocean \
--detach --restart unless-stopped \
--network jenkins-network \
--volume jenkins-data:/var/jenkins_home \
--volume jenkins-docker-certs:/certs/client:ro \
--volume /Users/fernando/Documents/GitHub/simple-node-js-react-npm-app:/repos:ro \
--publish 8080:8080 \
--publish 50000:50000 \
--volume /var/run/docker.sock:/var/run/docker.sock \
myjenkins-blueocean




--env DOCKER_HOST="tcp://docker:2376" \
--env DOCKER_CERT_PATH=/certs/client \
--env DOCKER_TLS_VERIFY=1 \