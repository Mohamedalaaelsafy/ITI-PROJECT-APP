pipeline {
    agent none
    // environment {
    //     dockerhub=credentials('Docker_Hub')
    // }
    stages {
        stage('Build Node App in container') {
            // agent { label 'container' }
            steps {
                script {
                 withCredentials([file(credentialsId: 'config', variable: 'cfg')]) {
                sh '''
                 kubectl get pods --kubeconfig=cfg
                '''
                 }
}
            }
        }
    }
}