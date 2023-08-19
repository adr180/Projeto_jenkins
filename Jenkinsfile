//? ESTRUTURA BASICA DE U PIPELINE


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
            docker.build("image_teste3")
          }
        }      
      }

      stage ('Criando segundo processo')
      {
        steps 
        {
         echo 'Segundo processo funcionando'
         sh 'ls'
        }
      }
    }
}