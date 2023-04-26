pipeline {
    agent any
    
    environment {
        NEW_VERSION = '1.0.1'
        //SERVER_CREDENTIALS = credentials("server-credentials")
    }

    stages{

        stage("build"){
            steps{
                echo "Building the application..."
                echo "Version: ${NEW_VERSION}"
                echo "Working branch name: ${env.BRANCH_NAME}"
            }
        }

        stage("test"){
            steps{
                echo "Testing the application..."
            }
        }

        stage("deploy"){
            steps{
                echo "Deploying the application..."
                // echo "${SERVER_CREDENTIALS}"
                // sh "${SERVER_CREDENTIALS}"
                withCredentials([
                    usernamePassword(credentials: 'server-credentials', usernameVariable:USER,passwordVariable:PWD)
                ]){
                    echo "user details- username:${USER} and password: ${PWD}"
                }

            }
        }
    }
}