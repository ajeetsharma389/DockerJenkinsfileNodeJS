pipeline
{
	agent { 
	docker 
		{
			image 'maven:3-alpine'
			label 'slave1' 
		}
	}
	
	stages {
        stage('Example Build') {
            steps {
                echo "npm started"
            }
        }
    }
}