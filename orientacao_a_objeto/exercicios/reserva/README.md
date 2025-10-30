# 1. Criando uma classe de cliente

- Crie a classe `Cliente`, que possui os atributos `nome` e `reservas`;
- “Ative” a classe com o construtor `Cliente(this.nome, this.reservas)`;.

# 2. Realizando uma reserva

- Crie a função fazerReserva dentro da classe Cliente, que recebe um quarto como parâmetro;
- Adicione o quarto à lista de reservas do cliente;
- Crie uma instância da classe, por exemplo, um cliente chamado “Joaquim”;
- Exiba a lista de reservas atualizada.

# 3. Cancelando uma reserva

- Crie a função cancelarReserva dentro da classe Cliente;
- Verifique se o cliente tem uma reserva ativa para o quarto;
- Remova o quarto da lista de reservas do cliente;
- Exiba a lista de reservas atualizada após o cancelamento.

# 4. Protegendo os dados das reservas

- Torne a propriedade `reservas` privada adicionando um underscore `_` no início do nome da variável;
- Garanta que a manipulação da lista de reservas só seja feita por meio dos métodos `fazerReserva` e `cancelarReserva.`