            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP 
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:  
            Dado que eu acesse a página de produtos

            Esquema do Cenário: Cor, tamanho e quantdade obrigatórios
            Quando eu selecionar <cor>, <tamanho>
            E <quantidade>
            Então deve ser inserido no carrinho de compras

            Exemplo:
            | cor        | tamanho | quantidade |
            | "azul"     | "S"     | 1          |
            | "laranja"  | "XS"    | 2          |
            | "vermelho" | "M"     | 2          |

            Cenário: 10 produtos por venda
            Quando eu selecionar a cor "azul", o tamanho "S"
            E inserir a quantidade 12
            Então deve exibir uma mensagem de alerta: "A quantidade máxima de produtos é 10"

            Cenário: 10 produtos por venda
            Quando eu selecionar a cor "azul", o tamanho "S"
            E inserir a quantidade 8
            Então deve ser inserido no carrinho de compras

            Cenário: Estado original
            Quando eu selecionar a cor "vermelho", o tamanho "M", a quantidade 8
            E acionar o botão limpar
            Então deve voltar ao estado original

           




