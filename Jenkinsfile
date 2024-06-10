pipeline {
    agent any


    stages {
        stage('Checkout') {
            steps {
                // Clone the Git repository to the Jenkins workspace
                 git branch: 'main', url: 'https://github.com/idil21/node-app.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                // Install Node.js dependencies using npm
                sh 'npm install'
            }
        }
        stage('Run Tests') {
            steps {
                // Run tests using npm
                sh 'npm test'
            }
        }
        
    }

    post {
        always {
            // Clean up workspace
            cleanWs()
        }
    }
}
