//? ESTRUTURA BASICA DE U PIPELINE
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
    
    
    stage ('Criando segundo processo')
    {
      steps 
      {
       echo "Segundo processo funcionando ${BUILD_NUMBER}"
       sh 'ls'
      }
    }
  }
}

