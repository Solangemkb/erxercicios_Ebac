            #language: pt

            Funcionalidade: Tela de Cadastro - Checkout
            Como cliente EBAC-SHOP
            Quero fazer concluir meu Cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a tela de Cadastro

            Esquema do Cenário: Cadastro com dados obrigatórios
            Quando eu preencher os campos <Nome>, <Sobrenome>, <Pais> <rua>, <cidade>, <CEP>, <telefone>, <e-mail>
            Então deve finalizar minha compra

            Exemplos:
            | Nome      | Sobrenome   | Pais     | rua                 | cidade      | CEP      | telefone  | e-mail                    |
            | "Ana"     | "Botafogo"  | "Brasil" | "Av. Paulista, 123" | "São Paulo" | 12345001 | 123456789 | "ana@botafogo.com.br"     |
            | "Beatriz" | "Botafogo"  | "Brasil" | "Av. Paulista, 123" | "São Paulo" | 12345001 | 123456789 | "beatriz@botafogo.com.br" |
            | "Caio"    | "Fernandes" | "Brasil" | "Av. Angélica, 456" | "Jundiaí"   | 12345002 | 123456789 | "caio@fernandes.com.br"   |
            | "Carol"   | "Santana"   | "Brasil" | "Rua sem nome, 321" | "Itupeva"   | 12345003 | 987654321 | "carol@santana.com.br"    |

            Cenário: E-maicl com formato inválido
            Quando eu digitar o e-mail "solange.ebac.com.br"
            Então deve exibir uma mensagem de erro: "E-mail inválido"

            Cenário: Cadastro com campo vazio
            Quando eu deixar de preencher algum campo
            Então deve exibir uma mensagem de alerta
