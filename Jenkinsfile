pipeline {
    agent none
    // environment {
    //     dockerhub=credentials('Docker_Hub')
    // }
    stages {
        stage('Build Node App in container') {
            // agent { label 'container' }
            steps {
                withCredentials([kubeconfigContent(credentialsId: 'gke-config', variable: 'conf')]) {
                sh '''
                 kubectl get pods --kubeconfig=conf
                '''
}
            }
        }
    }
}