pipeline
{
	agent { dockerfile true }
	
	stages {
        stage('Build') {
            steps {
                echo "Mounting Docker"
                docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker -p 8080:8080 jenkins

            }
        }
        stage('Deploy') {
            steps {
                echo "Docker deployed"
            }
        }
    }
}