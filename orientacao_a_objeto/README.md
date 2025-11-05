# 🔑 Final & Const

`Final` é um modificador de variável, ou seja, uma palavra-chave usada para indicar que o valor da variável não pode ser alterado depois de ser atribuído uma vez.

> “Essa variável só pode ser definida uma vez. Depois disso, não posso mudar o valor dela.”

### Comparando com var e const:

| Palavra-chave | Pode mudar o valor depois? | Valor definido em tempo de compilação?              | Exemplo                            |
| ------------- | -------------------------- | --------------------------------------------------- | ---------------------------------- |
| `var`         | ✅ Sim                      | ❌ Não necessariamente                               | `var nome = 'Ana'; nome = 'João';` |
| `final`       | ❌ Não                      | ❌ Não necessariamente                               | `final data = DateTime.now();`     |
| `const`       | ❌ Não                      | ✅ Sim, precisa ser conhecido em tempo de compilação | `const pi = 3.14;`                 |

--- 

### ⚙️ A diferença principal está no momento em que o valor é definido:

| Palavra-chave | Quando o valor é conhecido                                 | Exemplo válido                 | Explicação                                                              |
| ------------- | ---------------------------------------------------------- | ------------------------------ | ----------------------------------------------------------------------- |
| **`final`**   | Em **tempo de execução** (ou seja, quando o programa roda) | `final data = DateTime.now();` | O valor de `DateTime.now()` só é conhecido quando o código é executado. |
| **`const`**   | Em **tempo de compilação** (antes do programa rodar)       | `const pi = 3.14;`             | O valor de `pi` é fixo e já conhecido durante a compilação.             |


> ✅ final é uma palavra-chave que indica que o valor não pode mudar depois de atribuído, e esse valor pode ser definido em tempo de execução.
✅ const também torna o valor imutável, mas o valor precisa ser conhecido e fixo em tempo de compilação — ou seja, não pode depender de nada que só exista quando o programa está rodando.

---

# Get em Orientação a Objetos no Dart

Em `Dart`, a palavra-chave get é usada para definir um método acessor de leitura, ou seja, uma forma controlada de acessar um valor de um objeto.

Ela faz parte do encapsulamento, um dos pilares da Programação Orientada a Objetos (POO), permitindo que atributos internos de uma classe sejam protegidos, mas ainda acessíveis de maneira segura e organizada.

O get serve para:

- Proteger dados internos (atributos privados);
- Calcular valores dinamicamente quando solicitados;
- Simplificar o acesso a métodos, fazendo com que pareçam atributos normais;

---

### Estrutura básica

A sintaxe geral de um getter é:

```dart
tipo get nomeGetter {
  // corpo do método
  return valor;
}
```

> O getter não recebe parâmetros, pois é apenas uma forma de ler dados, não de modificá-los.

### ⚙️ Exemplo prático

``` dart
class Pessoa {
  String nome;
  int anoNascimento;

  Pessoa(this.nome, this.anoNascimento);

  // Getter que calcula a idade com base no ano atual
  int get idade {
    var anoAtual = DateTime.now().year;
    return anoAtual - anoNascimento;
  }
}

void main() {
  var pessoa = Pessoa("Lucas", 1990);

  print("Nome: ${pessoa.nome}");
  print("Idade: ${pessoa.idade}");
}
```

- O atributo anoNascimento é usado internamente.
- O getter idade calcula automaticamente a idade com base no ano atual.
- Ao chamar pessoa.idade, o Dart executa o getter como se fosse um atributo, sem precisar de parênteses.

---

## Getters e Encapsulamento

Muitas vezes usamos atributos privados (com `_` no início) e getters públicos para controlar o acesso a eles:

``` dart
class ContaBancaria {
  double _saldo = 0; // atributo privado

  // Getter público (só leitura)
  double get saldo => _saldo;

  void depositar(double valor) {
    if (valor > 0) _saldo += valor;
  }
}
```
```dart
void main() {
  var conta = ContaBancaria();
  conta.depositar(500);
  print(conta.saldo); // Acesso controlado
}
```

> Aqui, o atributo _saldo não pode ser acessado diretamente, mas o getter saldo permite ler o valor com segurança.

---

### Comparação entre get e método comum

| Tipo         | Sintaxe                  | Uso no código         | Exemplo               |
| ------------ | ------------------------ | --------------------- | --------------------- |
| Método comum | `int calcularIdade() {}` | `obj.calcularIdade()` | Precisa de parênteses |
| Getter       | `int get idade {}`       | `obj.idade`           | Parece um atributo    |

---

# get + set

Você também pode criar pares de getters e setters para controlar tanto leitura quanto escrita de uma propriedade:

```dart
class Produto {
  double _preco = 0;

  // Getter: lê o valor
  double get preco => _preco;

  // Setter: define o valor com validação
  set preco(double valor) {
    if (valor >= 0) {
      _preco = valor;
    } else {
      print("Erro: preço não pode ser negativo!");
    }
  }
}

void main() {
  var p = Produto();
  p.preco = 50;      // Usa o setter
  print(p.preco);    // Usa o getter

  p.preco = -10;     // Mensagem de erro
}
```

- O `get` retorna o valor (leitura);
- O `set` atribui o valor (escrita);
- Ambos permitem aplicar regras de negócio sem expor o atributo diretamente.