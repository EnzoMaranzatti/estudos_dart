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
