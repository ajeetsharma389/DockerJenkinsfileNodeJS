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
        			image 'maven:3.5.0-jdk-8'
        			reuseNode true
        			}
        	}
        	steps {
        		echo "hello world"
      		}
        }
        stage('Deploy') {
            steps {
                echo " deployed. Thanks!"
            }
        }
    }
}