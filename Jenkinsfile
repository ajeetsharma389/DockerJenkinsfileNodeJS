pipeline
{
	agent { 
		node{
			label 'dockerslave'
			customWorkspace '/Users/ajeet/jobs/'
		}
	 }
	
	stages {
        stage('Pulling') {
        	steps {
        		checkout scm
      		}
        }
        
        stage('Build') {
        	
        	steps {
        		def myEnv = docker.build 'ajeetsharma389/nodeapp:101'
      		}
        }
        
        stage('Deploy') {
            steps {
                myEnv.run('docker run -p 49160:8080 -d ajeetsharma389/nodeapp:101')

            }
        }
    }
}