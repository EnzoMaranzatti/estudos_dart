# 1. Criando classes de gatos e cachorros

Crie uma classe Animal com um método emitirSom(). Em seguida, crie duas outras classes: Cachorro e Gato, que herdam o método da classe Animal. Ao adicionar o método emitirSom() nas classes Cachorro e Gato, utilize a anotação @override para indicar que estão sobrescrevendo o método — o método emitirSom deve fazer um print “O cachorro late” para Cachorro e “o gato miou” para Gato.

Além disso, adicione métodos específicos para cada classe, como abanarRabo() para o Cachorro e arranharMoveis() para o Gato.

# 2. Produzindo uma conta salário com herança

Continuando o projeto Any Bank, é hora de criar um terceiro tipo de conta: a conta salário. Assim como as classes conta corrente e conta poupança, ela possui duas características essenciais: o titular e o saldo.

Escreva o código da classe ContaSalario e um objeto de conta salário de uma pessoa chamada Catarina (ou qualquer nome que você desejar). Se quiser, imprima o saldo da pessoa no terminal.

# 3. Incrementando a conta salário com polimorfismo

Agora, vamos melhorar a classe da conta salário. Você deve saber que a contaSalario tem duas características em comum com as contas corrente e poupança: titular e saldo. No entanto, ela apresenta três características diferentes:

Variável com o CNPJ da empresa que emprega o(a) titular da conta;
Variável do nome da empresa;
Um método (função print) que diz algo como: “O salário da $empresa, de CNPJ X no valor de R$xx.x, foi depositado!”
Aplique essas três características na classe contaSalario!

# 4. Representando quartos com herança

Crie três classes que representam três tipos de quartos em um hotel: quarto simples, quarto médio e quarto luxo. Todos os quartos têm em comum as seguintes características:

Tipo de quarto: indica se o quarto é simples, médio ou luxo;
Valor da diária: registra a diária do tipo do quarto. Por exemplo, a diária do quarto simples é 80 reais; a do quarto médio é 250 reais; a do quarto luxo é 1000 reais. Repare que todos possuem a característica valorDiaria em comum, que é reaproveitada nos três tipos de quarto;
Número de diárias: o número de diárias reservadas por um(a) hóspede;
Método de reservar: realiza a ação de reservar um quarto.

# 5. Adicionando diferenças com polimorfismo

Agora que você criou as três classes de quartos, adicione as diferenças que existem entre elas:

Café da manhã: apenas os quartos médio e luxo possuem esta comodidade. Implemente essa característica com método que contém um print como “Servindo café da manhã no quarto do $tipo”;
Serviço de quarto: exclusivo do quarto luxo. Crie um método print do serviço de quarto, como "Limpando o quarto $tipo."
Vamos lá?

# 6. Criando um método de cálculo de diárias

Agora, cada tipo de quarto deve calcular o valor total da reserva com base em tarifas específicas. Você precisa ajustar as classes para lidar com essas tarifas.

Adicione um método calcularValorTotal nas classes Quarto, QuartoMedio e QuartoLuxo. O método deve calcular o valor total da reserva com base em uma tarifa diária específica para cada tipo de quarto. Na main, crie exemplos de reservas para os três tipos de quarto e mostre o valor total calculado.

# 7. Implementando uma classe de ingrediente

Considere que você precisa criar um programa que registra ingredientes de receitas e informações sobre eles. O primeiro passo é implementar a classe Ingrediente, que terá as seguintes características (atributos) e ações (métodos):

string nome: armazena o nome de um ingrediente (por exemplo, cebola);
string tipo: armazena o tipo de ingrediente (por exemplo, fruta, legume ou tempero).
Método detalhes(): printa o nome e o tipo do ingrediente.
A ideia é apenas criar a classe. Não se preocupe em printar nada no terminal por enquanto!

# 8. Implementando as classes de tipos de ingrediente

Vamos continuar o programa de receitas. Agora que você concluiu a classe abstrata Ingrediente, vamos usá-la de molde para criar três classes de tipos de ingrediente:

Fruta: em geral, são vegetais que não podem ser cozidos nas receitas;
Legume: em geral, são vegetais que precisam ser cozidos;
Tempero: são especiarias que condimentam os alimentos.
Ao criar as três classes, aplique a herança e polimorfismo. Sobrescreva o método detalhes() em cada uma das classes. Por exemplo, em Fruta, você pode inserir um print “em geral, são vegetais que não podem ser cozidos nas receitas” e assim por diante.

Por fim, crie os objetos banana (de Fruta), cenoura (de Legume) e sal (de Tempero) e os métodos para exibir suas informações e detalhes.
