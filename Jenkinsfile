pipeline {
    agent { label 'Slave-Jenkins' }
    stages {
        stage('Check Apache') {
            steps {
                sh 'systemctl is-active apache2 || (echo "Apache is not running" && exit 1)'
            }
        }
        stage('Deploy to Apache') {
            steps {
                sh 'echo "<h1>Hello from Jenkins Pipeline</h1>" | sudo tee /var/www/html/index.html'
            }
        }
    }
}
