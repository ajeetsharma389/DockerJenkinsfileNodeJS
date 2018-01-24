pipeline
{
	agent any
	stages{
		stage('Build'){
			steps{
				echo "------ Pulling docker hello world image ------"
				sh docker pull hello-world 
			}	
		}		
		}
		stage('Deploy'){
			steps{
				echo "------ Runing docker hello world image ------"
				sh docker run hello-world
			}			
		}
	}
}