pipeline {
    agent any

    stages {
        stage('Authentication') {
            steps {

                script {
                 withCredentials([file(credentialsId: 'serv-acc', variable: 'GC_KEY')]) {
                sh '''
                 gcloud auth activate-service-account --key-file=${GC_KEY}
                 gcloud container clusters get-credentials gke-cluster --zone us-central1-a --project optimistic-yeti-367811
                '''
                 }
                    }

            }
            
        }
        stage('Build APP') {
            steps {
                script {
                sh '''
                  docker build -t gcr.io/optimistic-yeti-367811/python .
                  docker push gcr.io/optimistic-yeti-367811/python
                '''
                    }                
            }
        }
        
        stage('Deploy APP') {
            steps {
                script {
                sh '''
                  kubectl apply -f app.yml
                '''
                    }                
            }
        }
    }
}