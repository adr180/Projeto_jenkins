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
            imagem = docker.build("image_teste")
          }
        }      
      }

      stage ('Criando segundo processo')
      {
        steps 
        {
         echo 'Segundo processo funcionando'
        }
      }
    }
}