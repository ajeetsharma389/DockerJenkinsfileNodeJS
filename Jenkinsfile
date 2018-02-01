pipeline
{
	agent { 
		node{
			label 'dockerslave'
			customWorkspace '/Users/ajeet/jobs/'
		}
	 }
	
	stages {
        stage('Build') {
        agent{
        	docker
        		{
        		reuseNode true
        		}
        	}
        }
        stage('Deploy') {
            steps {
                echo " deployed. Thanks!"
            }
        }
    }
}