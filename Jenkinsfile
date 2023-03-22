pipeline{
      agent {
        label{
           label "built-in"
				customWorkspace "/mnt/"
        }
    }
    stages{
        stage("install-dep"){
 			steps{ 			
 				sh  "sudo yum install git -y"
 				sh  "sudo yum install maven -y" 							
 			}
 		}
        stage("building-project"){
            steps{
               sh "sudo git clone https://github.com/rohaanuv/game-of-life.git"
               sh '''cd game-of-life/
               sudo mvn clean install
               '''
            }
        }
        
         stage("deply-yml"){
            steps{
               sh "git clone https://github.com/rohaanuv/stunning-lamp.git"
               sh '''
                    cd stunning-lamp/
                    whoami
                    su ron
                    whoami
                    ansible-playbook main.yml
               '''
                
            }
        }

    }
}
