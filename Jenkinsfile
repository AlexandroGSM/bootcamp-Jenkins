pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/AlexandroGSM/bootcamp-Jenkins.git'
            }
        }
        stage('Build') {
            steps {
                sh 'echo "Building..."'
            }
        }
        stage('Deploy') {
            steps {
                sshagent(['Slave']) {
                    sh '''
                    scp -o StrictHostKeyChecking=no index.html asurraco@192.168.1.20:/var/www/html/
                    ssh asurraco@192.168.1.20'sudo systemctl restart apache2'
                    '''
                }
            }
        }
    }
}

