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
            imagem = docker.build("adr180/teste", '-f ./dockerfile ./')
          }
        }      
      }
    }
}