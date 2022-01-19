pipeline{
    agent any
    tools {
        terraform 'TF'
    }
    stages{
        stage ('Scm checkout'){
            steps{
                		stage('Checkout'){
		    steps{
		        checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/keerthy-sith/AMI-PICK.git']]])

            }
        }
        stage('Terraform Init'){
            steps{
                sh label: '',script: 'terraform init'
            }
        } 
        stage('plan'){
            steps{
                sh label:'running plan command',script: 'terraform plan -input=false -out tfplan -var name=${Name}'
                sh label:'running show command',script: 'terraform show -no-color tfplan > tfplan.txt'
            }
        }

       stage('apply'){
            steps{
                withCredentials([aws(credentialsId: 'Terraform credentials')]){
                sh label:'running apply command',script: 'terraform ${action} -var name=${Name} --auto-approve'
                }
            }
        }
        
    }
post{
    always{
        archiveArtifacts artifacts: 'tfplan.txt'
    }
    success{
        echo 'pipeline runned and server created successfully'
    }
}
}
