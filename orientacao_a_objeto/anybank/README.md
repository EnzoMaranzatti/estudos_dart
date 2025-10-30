# Herança

Herança é uma forma de criar novas classes (subclasses ou filhas) a partir de classes já existentes (superclasses ou mães). Essa nova classe herda todos os atributos e métodos da classe mãe (ou superclasse), podendo adicionar novos ou sobrescrever os existentes.

---

## Por que usar herança?
- Evitamos a reescrita de código comum a diferentes classes;
- Criamos uma estrutura de hierarquia entre as classes, o que organiza o código.
Vejamos um exemplo para compreender melhor essas ideias.

---

### exemplo

```dart
class Animal {
  String nome;

  Animal(this.nome);

  void comer() {
    print('$nome está comendo.');
  }
}

class Cachorro extends Animal {
  Cachorro(super.nome);

  void latir() {
    print('$nome está latindo.');
  }
}

class Gato extends Animal {
  Gato(super.nome);

  void miar() {
    print('$nome está miando.');
  }
}
```

**Classe Animal:**
- É a classe base `(superclasse)`;
- Possui um atributo nome e um método `comer()`.
**Classe Cachorro:**
- Herda o atributo `(nome)` e o método (`comer()`) da `classe Animal`;
- Possui um método específico `latir()`.
**Classe Gato:**
- Herda o atributos e o método da `classe Animal`;
- Possui um método específico `miar()`.
**As duas classes precisam inicializar dentro de seus construtores os atributos da superclasse:**
- Classe Cachorro usa `Cachorro(super.nome)`;
- Classe Gato usa `Gato(super.nome)`.

Certo, definimos a classe mãe (Animal) e suas classes filhas (Cachorro e Gato) com herança e polimorfismo. Como instanciar um objeto a partir dessas classes?

---

### Como instanciar:

```dart
void main() {
  Cachorro cachorro = Cachorro('Rex');
  cachorro.comer(); // Imprime: Rex está comendo.
  cachorro.latir(); // Imprime: Rex está latindo.

  Gato gato = Gato('Mia');
  gato.comer(); // Imprime: Mia está comendo.
  gato.miar(); // Imprime: Mia está miando.
}  
```
- Criamos um cachorro chamado Rex e um gato chamado Mia;
- Ambos podem usar o método `comer()` herdado da classe Animal;
- Além disso, o cachorro pode latir e o gato pode miar, utilizando seus métodos específicos que foram criados dentro das classes.

## Classes Abstratas

Em Dart, podemos pensar em uma classe abstrata como um "esqueleto" de uma classe. Ela define uma estrutura básica como um guia, com propriedades e métodos, mas não pode ser instanciada diretamente. Ou seja, você não pode criar um objeto a partir de uma classe abstrata.

Em orientação a objetos, a classe abstrata é, de forma mais técnica, uma classe que não pode ser instanciada, ou seja, você não pode criar um objeto a partir de uma classe abstrata. Então qual a utilidade?

### Então por que usar classes abstratas?

Você pode utilizar uma classe abstrata reaproveitando-a dentro de outras classes comuns. Como reaproveitamos o conteúdo de uma classe abstrata? Com herança e polimorfismo. É por isso que dizemos que a classe abstrata funciona como um molde para que outras classes comuns reaproveitem os atributos e métodos da classe abstrata.

- Com classes abstratas, nós definimos um "contrato" que as subclasses devem seguir, garantindo que todas as classes que herdam dela tenham as mesmas funcionalidades e propriedades.
- Incentivamos também o polimorfismo permitindo que objetos de diferentes classes sejam tratados como se fossem de uma classe abstrata mãe. Ex: Uma conta corrente ainda é um tipo de conta.

#### Exemplo

```dart
abstract class Figura {
  double calcularArea();
}

class Circulo extends Figura {
  double raio;

  Circulo(this.raio);

  @override
  double calcularArea() {
    return 3.14159 * raio * raio;
  }
}

class Quadrado extends Figura {
  double lado;

  Quadrado(this.lado);

  @override
  double calcularArea() {
    return lado * lado;
  }
}
```

**Explicando o código:**
- A classe Figura é uma classe abstrata. Ela define um método abstrato calcularArea(), que não possui implementação.
- As classes Circulo e Quadrado herdam da classe Figura. Elas implementam o método abstrato calcularArea() de acordo com suas respectivas fórmulas.

**Como usar:**

```dart
void main() {
  Circulo circulo = Circulo(5);
  Quadrado quadrado = Quadrado(4);

  print('Área do círculo: ${circulo.calcularArea()}');
  print('Área do quadrado: ${quadrado.calcularArea()}');
}
```
**O que aconteceu:**

- Criamos um círculo e um quadrado.
- Ambos podem calcular suas áreas, pois implementam o método abstrato herdado.

## Interface

Uma **interface** define padrões que uma classe deve cumprir. Ela especifica quais os métodos e propriedades que uma classe deve ter, sem se preocupar com a implementação. É bem parecido com o conceito de classes abstratas, mas com uma mudança.

### Por que usar interfaces?

- `Polimorfismo:` cada classe que usa uma interface precisa implementar da sua própria maneira os métodos da interface;
- `Desacoplamento:` a interface aumenta o desacoplamento entre as classes (separação de responsabilidades), o que deixa o código mais flexível e fácil de manter.
