pipeline {
    agent any
    tools {
        maven 'localMaven'
    }
stages{

stage('Example') {
            hook = registerWebhook()
 
echo "Waiting for POST to ${hook.getURL()}"
 
data = waitForWebhook hook
echo "Webhook called with data: ${data}"
            }
            steps {
                echo "Hello, ${PERSON}, nice to meet you."
            }


        stage('Build'){
            steps {
                bat 'mvn clean package'
            }
            post {
                success {
                    echo 'WTF...'
                    
                }
            }
        }
    }
}
