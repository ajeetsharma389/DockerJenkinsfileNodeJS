pipeline
{
	agent any
	stages{
		stage('Build'){
			steps{
				docker pull hello-world 
			}			
		}
		stage(‘Deploy’){
			steps{
				docker run hello-world
			}			
		}
	}
}