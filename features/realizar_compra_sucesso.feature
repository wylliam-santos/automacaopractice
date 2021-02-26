#language: pt

Funcionalidade: Realizar Compra
    Sendo um usuário do site de compras
    Quero acessar o sistema
    Para que eu possa realizar compras de produtos disponiveis

    @temp
    Cenario: Realizar uma compra com sucesso

        Dado que acesso a página do site de compras
        E escolha um produto qualquer na loja
        E adicione o produto escolhido ao carrinho
        E valide se o produto foi corretamente adicionado ao carrinho e prossiga caso esteja tudo certo
        E prossiga para o checkout        
        Quando eu realizo o cadastro do cliente preenchendo todos os campos obrigatórios do formulário
        E valide se o endereço está correto e prossiga
        E aceite os termos de serviço e prossiga
        E valide o valor total da compra
        E selecione um método de pagamento e prossiga
        Então devo confirmar a compra e validar se foi finalizada com sucesso. 