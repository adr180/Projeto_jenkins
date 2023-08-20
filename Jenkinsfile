//? ESTRUTURA BASICA DE U PIPELINE DECLARATIVO
//? Este arquivo esta no repositorio raiz de adr180/Projeto_jenkins arquivo:(Jenkinsfile)
//!! Este repositorio foi é publico, portando quando configurar o Jenkins, usa-se o caminho https ao invés SSH. 


pipeline
{    
  environment 
  { 
    CC = 'clang'
  }

  agent any  
  stages
  {
    stage ('Criando a imagem Docker')
    {
      steps
      {
        script
        {
          def app = docker.build ("adr180/app")                                 
        }
      }
    }
    
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
   
    stage ('Teste com variáveis')
    {
      steps 
      {
        echo "Variável CC: ${CC}"
      }    
    }

    stage ('DEPLOY')
    {
      steps 
      {
        script 
        {
          docker.withRegistry('https://registry.hub.docker.com', 'teste') 
          {         
           app.push("${BUILD_TAG}")
          } 
          echo 'deploy Concluido!'
        }
      }    
    }
  }
}

