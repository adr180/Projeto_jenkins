//? ESTRUTURA BASICA DE U PIPELINE DECLARATIVO
//? Este arquivo esta no repositorio raiz de adr180/Projeto_jenkins arquivo:(Jenkinsfile)
//!! Este repositorio foi é publico, portando quando configurar o Jenkins, usa-se o caminho https ao invés SSH. 


pipeline
{    
  environment 
  { 
    CC = 'clang'  //b Esta variavel CC fica disponivel em todo o codigo do pipeline Ex: echo "Variável CC: ${CC}"
  }

  agent any  
  stages
  {   
    stage ('Testando variáveis de ambiente')
    {
      steps 
      {
        echo "Número da construção atual: ${BUILD_NUMBER}"
        echo "Nome do projeto(Projeto): ${JOB_NAME}"
        echo "Tag Exclusiva: ${BUILD_TAG}"
        echo "Página de detalhes da construção: ${BUILD_URL}"
        echo "Jenkins está instalado em:  ${JENKINS_HOME}"
        echo "Página de detalhes do trabalho: ${JOB_URL}"
        echo "Hash do commit recente: ${GIT_COMMIT}"
        echo "O nome do branch no GitHub: ${GIT_BRANCH}"
        sh 'ls'
      }
    }
   
 
    stage ('Push image docker hub')
    {
      steps 
      {
        script 
        {          
          def app = docker.build ("adr180/app")   //b criar uma imagem Docker com o nome "adr180/app"
          //b  autenticar-se no registro do Docker Hub usando as credenciais definidas no Jenkins (teste). Isso é necessário para poder enviar a imagem para o Docker Hub.
          docker.withRegistry('https://registry.hub.docker.com', 'teste') 
          {         
           app.push("${BUILD_TAG}")  //b  enviar a imagem Docker criada anteriormente para o Docker Hub
          }           
        }
      }    
    }
  }
}

