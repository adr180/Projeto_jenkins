//? ESTRUTURA BASICA DE U PIPELINE DECLARATIVO
//? Este arquivo esta no repositorio raiz de adr180/Projeto_jenkins arquivo:(Jenkinsfile)
//!! Este repositorio foi é publico, portando quando configurar o Jenkins, usa-se o caminho https ao invés SSH. 


pipeline
{
  agent any
  stages
  {
    stage ('Criando a imagem Docker')
    {
      steps   //b passos do estagio inicial
      {
        script
        {
          docker.build("image_teste3") //b cria uma imagem 'image_teste3'
        }
      }      
    }
    
    
    stage ('')
    {
      steps 
      { //b Algumas variavies de ambiente
       echo 'número da construção atual: '
       echo "Segundo: Compilação número: BUILD_NUMBER ${BUILD_NUMBER}"   //b O número da construção atual.
       echo "Nome do projeto(Projeto) ${JOB_NAME}"                       //b O nome do trabalho (nome do projeto no Jenkins)
       echo "Quarto:  BUILD_TAG ${BUILD_TAG}"                            //b Uma tag exclusiva para a construção, geralmente no formato "jenkins-${JOB_NAME}-${BUILD_NUMBER}"
       echo "página de detalhes da construção ${BUILD_URL}"              //b A URL para a página de detalhes da construção no Jenkins
       echo "Jenkins está instalado em:  ${JENKINS_HOME}"                //b O diretório onde o Jenkins está instalado
       echo "página de detalhes do trabalho: ${JOB_URL}"                 //b A URL para a página de detalhes do trabalho (projeto) no Jenkins.
       echo "Hash do commit recente ${GIT_COMMIT}"                       //b O hash do commit mais recente
       echo "Quarto processo BUILD_URL ${GIT_BRANCH}"                    //b O nome do branch em que o pipeline está sendo executado
       sh 'ls'
      }
    }
  }
}

