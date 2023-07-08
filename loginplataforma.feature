            #language: pt

            Funcionalidade: Login na plataforma
            Cono cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login do portal

            Esquema do Cenário: Tela de Checkout
            Quando eu digitar o usuário <usuario>
            E a senha <senha>
            Então deve ir para a tela de Checkout

            Exemplos:
            | usuario               | senha      |
            | "solange@ebac.com.br" | "teste123" |
            | "nadia@ebac.com.br"   | "teste456" |
            | "deise@ebac.com.br"   | "teste789" |

            Cenário: Campos inválidos
            Quando eu digitar o usuário "solangeebac.com.br"
            E a senha "teste123"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"