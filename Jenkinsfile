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
        				def myEnv = docker.build 'ajeetsharma389/nodeapp:101'
        				reuseNode true
        			}
        	}
        	steps {
        			myEnv.run('docker run -p 49160:8080 -d ajeetsharma389/nodeapp:101')
      		}
        }
        stage('Deploy') {
            steps {
                echo " deployed. Thanks!"
            }
        }
    }
}