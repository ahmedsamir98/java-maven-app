pipeline{
    agent any
    tools{
        maven "Maven-3.6"
    }
    stages{ 
        stage("build jar") {
            steps{
                script{
                    echo "################ Building the application #################"
                    sh 'mvn package'
                }
            }
        }
        stage("build image") {
            steps{
                script{
                    echo "################ Building docker image #################"
                    withCredentials([
                        usernamePassword(credentialsID: 'Docker-hub-repo', passwordVariable: 'PASS',usernameVariable: 'USER')]) {
                            sh 'docker build -t ahmedsamir98/my-repo:jma-2.0 .'
                            sh "echo $PASS | docker login -u $USER --password-stdin"
                            sh 'docker push ahmedsamir98/my-repo:jma-2.0'
                        }
                }
            }
        }
        stage("deploy") {
            steps{
                script{
                    echo "################ Deploying the application #################"
                }
            }
        }
    }
}
