#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com o meu e-mail e senha
    Para que eu possa ter acesso as playlists do Parodify

    @smoke
    Cenário: Login de usuário

        Dado que acesso a página de Login
        Quando submeto as minhas credênciais com: 'liu_lsa@hotmail.com' e '123456'
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de login

        Dado que acesso a página de Login
        Quando submeto as minhas credênciais com: '<email>' e '<senha>'
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
          | email              | senha  |
          | liu@404.com.br     | abc123 |
          |                    |        |
          | liu_lsa@google.com |        |
          | liu_lsa@404.com    |        |