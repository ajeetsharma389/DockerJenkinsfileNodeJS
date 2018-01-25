pipeline
{
	agent { dockerfile true }
	
	stages {
        stage('Build') {
            steps {
                echo "npm started"
            }
        }
        stage('Deploy') {
            steps {
                echo "npm deployed"
                docker build -t "simple_flask:dockerfile" .
            }
        }
    }
}