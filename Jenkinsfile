pipeline {
    agent any
    // environment {
    //     dockerhub=credentials('Docker_Hub')
    // }
    stages {
        stage('Build Node App in container') {
            // agent { label 'container' }
            steps {
                // script {
                //  withCredentials([file(credentialsId: 'config', variable: 'cfg')]) {
                // sh '''
                //  kubectl get pods --kubeconfig=cfg
                // '''
                //  }
                //     }

                script {
                 withCredentials([file(credentialsId: 'serv-acc', variable: 'GC_KEY')]) {
                sh '''
                 gcloud auth activate-service-account --key-file=${GC_KEY}
                 gcloud container clusters get-credentials prod --zone us-central1-a --project optimistic-yeti-367811
                 kubectl get pods
                '''
                 }
                    }

            }
        }
    }
}