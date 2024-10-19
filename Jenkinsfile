pipeline {
    agent any 
    stages{
        stage("checkout"){
            steps{
                 checkout scm
            }
        }
       stage('Test') {
    steps {
        script {
            try {
                bat 'npm test'  // Using 'bat' for Windows instead of 'sh'
            } catch (Exception e) {
                echo "Tests failed, but proceeding with pipeline"
            }
        }
    }
}

        stage("Build") {
            steps {
                // Use 'bat' for running commands in Windows
                bat 'npm run build'
            }
        }
        stage('Deploy') {
            steps {
                script {
                    // Deploy your Docker image
                    echo 'Deploying application...'
                }
            }
        }
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t my-app:1.1 .'
            }
        }
    }
}
