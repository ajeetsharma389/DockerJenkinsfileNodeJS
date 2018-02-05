node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */
		echo "Pulling code from repo"
        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */
         echo "Building Docker image"
         app = docker.build("ajeetsharma389/nodeapp:102")    
         app.run('-p 9000:8080 -d ajeetsharma389/nodeapp:102')
        
    }

    stage('Test image') {
        /* Ideally, we would run a test framework against our image.
         * This runs only a single dummy test inside the image. 
		 echo "Runing Docker image"
		 
        app.inside {
        	
        }*/
    }

    /*stage('Push image') {
         Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. 
        *docker.withRegistry('https://registry.hub.docker.com', 'Docker-hub') {
          *  app.push("${env.BUILD_NUMBER}")
           * app.push("latest")
        *}
    }*/
}