Aqui está a **Parte 1/5** do seu `README.md` sobre **Collections em Dart** — formatada para GitHub com badges, TOC e exemplos DartPad.
Quando quiser, envio as **Partes 2 a 5** para você montar o arquivo completo.

---

# 🧠 Dart Collections — Guia Completo

[![Dart](https://img.shields.io/badge/Dart-3.0+-blue?logo=dart)](https://dart.dev)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Open in DartPad](https://img.shields.io/badge/Open%20in-DartPad-orange?logo=dart)](https://dartpad.dev/)

> Este README foi criado como guia de estudo sobre **Collections em Dart**, com base na documentação oficial e exemplos práticos.
> Ideal para consulta e revisão, especialmente para quem está estudando o núcleo de coleções (`List`, `Set`, `Map`, `Iterable`) e seus comportamentos.

---

## 📚 Sumário (TOC)

1. [Introdução às Collections](#introdução-às-collections)
2. [Termos-chave e conceitos importantes](#termos-chave-e-conceitos-importantes)
3. [Tipos Core de Collections](#tipos-core-de-collections)

   * [List](#list)
   * [Set](#set)
   * [Map](#map)
   * [Iterable](#iterable)
4. [Métodos e Operações](#métodos-e-operações)
5. [Boas práticas e recomendações](#boas-práticas-e-recomendações)
6. [Exemplos executáveis (DartPad)](#exemplos-executáveis-dartpad)
7. [Fontes oficiais](#fontes-oficiais)

---

## 🧩 Introdução às Collections

As **Collections** (coleções) em Dart são estruturas de dados utilizadas para armazenar e manipular **grupos de valores**.
As principais coleções disponíveis em `dart:core` são:

* `List` — lista ordenada de elementos indexados.
* `Set` — conjunto não ordenado de valores únicos.
* `Map` — coleção de pares **chave:valor**.
* `Iterable` — interface base para estruturas que podem ser percorridas em sequência.

Essas estruturas são **fundamentais** para trabalhar com dados em Dart e aparecem em praticamente todos os tipos de projeto (Flutter, backend, CLI, etc).

Exemplo simples:

```dart
void main() {
  // Uma lista de nomes
  List<String> nomes = ['Enzo', 'Marina', 'Lucas'];

  // Um conjunto de números únicos
  Set<int> numeros = {1, 2, 3};

  // Um mapa chave:valor
  Map<String, int> idade = {'Enzo': 22, 'Marina': 25};

  print(nomes[0]); // Enzo
  print(numeros.contains(2)); // true
  print(idade['Marina']); // 25
}
```

---

## 🧱 Termos-chave e Conceitos Importantes

| Termo            | Significado                                                                      | Exemplo                                                 |
| ---------------- | -------------------------------------------------------------------------------- | ------------------------------------------------------- |
| **Growable**     | Coleção que pode **aumentar/diminuir** dinamicamente.                            | `List<int> nums = []; nums.add(10);`                    |
| **Fixed-length** | Tamanho fixo. Não é possível adicionar/remover elementos.                        | `List<int>.filled(3, 0, growable: false);`              |
| **Lazy**         | Dados são avaliados apenas quando necessários (ex: `Iterable.map()`, `where()`). | `nums.where((n) => n.isEven)` só é executado ao iterar. |
| **View**         | Representação de outra coleção, sem copiar dados.                                | `sublist`, `mapView`, `unmodifiable`.                   |
| **Immutable**    | Não pode ser alterada após criada.                                               | `const [1, 2, 3];`                                      |
| **Equality**     | Forma de comparar elementos (`==`, `hashCode`).                                  | `Set` depende de igualdade para definir unicidade.      |

---

✅ **Dica:**
Por padrão, listas e conjuntos em Dart são **growable**, ou seja, você pode adicionar ou remover elementos a qualquer momento.
Coleções **fixed-length** são úteis quando o tamanho é conhecido e fixo (melhor desempenho e menos erros).

---

## ⚙️ Tipos Core de Collections

Vamos detalhar cada tipo com **explicações, tabelas de métodos principais e exemplos práticos**.

---

## 🧾 List

Uma **List** é uma coleção **ordenada** de elementos, acessados por índice (começando em 0).
É semelhante a um array em outras linguagens, mas com muitos recursos adicionais.

### Criando listas

```dart
void main() {
  // Lista growable (dinâmica)
  var numeros = [1, 2, 3];

  // Lista vazia e growable
  var lista = <String>[];

  // Lista com tamanho fixo
  var fixa = List<int>.filled(3, 0, growable: false);

  // Lista imutável
  const imutavel = [10, 20, 30];
}
```

---

### 🧮 Métodos Principais de List

| Método                   | Descrição                                        | Exemplo                    |
| ------------------------ | ------------------------------------------------ | -------------------------- |
| `add(element)`           | Adiciona um elemento ao final da lista.          | `lista.add(4);`            |
| `addAll(list)`           | Adiciona todos os elementos de outra lista.      | `lista.addAll([5, 6]);`    |
| `insert(index, element)` | Insere no índice especificado.                   | `lista.insert(1, 10);`     |
| `remove(value)`          | Remove a primeira ocorrência do valor.           | `lista.remove(2);`         |
| `removeAt(index)`        | Remove pelo índice.                              | `lista.removeAt(0);`       |
| `contains(value)`        | Verifica se contém o valor.                      | `lista.contains(3);`       |
| `indexOf(value)`         | Retorna o índice da primeira ocorrência.         | `lista.indexOf(10);`       |
| `sort()`                 | Ordena os elementos (por padrão, crescente).     | `lista.sort();`            |
| `reversed`               | Retorna um Iterable com os elementos invertidos. | `lista.reversed.toList();` |
| `clear()`                | Remove todos os elementos.                       | `lista.clear();`           |

---

#### Exemplo prático

```dart
void main() {
  List<String> frutas = ['maçã', 'banana', 'laranja'];
  frutas.add('uva');
  frutas.remove('banana');
  frutas.sort();

  print(frutas); // [laranja, maçã, uva]
}
```

---

# Parte 2 — Set, Map e Iterable

---

## Set

`Set<T>` armazena elementos **únicos**, ou seja, não há duplicatas.
A implementação padrão é `LinkedHashSet`, que mantém a ordem de inserção.
Outras implementações incluem `HashSet` (sem ordem) e `SplayTreeSet` (ordenada por comparação).

### Características

* Armazena **valores únicos**
* Permite **operações matemáticas de conjunto**
* O acesso é geralmente O(1) em `HashSet`

---

### Métodos / Operações (`Set`)

| Método                | Descrição                                                        | Exemplo                  |
| --------------------- | ---------------------------------------------------------------- | ------------------------ |
| `add(value)`          | Adiciona o valor se ainda não existir.                           | `s.add(3);`              |
| `addAll(iterable)`    | Adiciona múltiplos valores.                                      | `s.addAll([1,2,3]);`     |
| `remove(value)`       | Remove um valor.                                                 | `s.remove(2);`           |
| `contains(value)`     | Verifica se o valor existe.                                      | `s.contains(1);`         |
| `union(other)`        | Retorna a união de dois sets (novo set).                         | `s.union({4,5});`        |
| `intersection(other)` | Retorna a interseção entre sets.                                 | `s.intersection({1,2});` |
| `difference(other)`   | Retorna a diferença entre sets.                                  | `s.difference({2});`     |
| `lookup(value)`       | Retorna o elemento equivalente (útil para objetos customizados). | `s.lookup(obj);`         |
| `clear()`             | Remove todos os elementos.                                       | `s.clear();`             |

---

### Exemplo prático

```dart
void main() {
  var s = <int>{1, 2, 3};
  s.add(2); // ignorado, pois já existe
  var u = s.union({3, 4});
  print(u); // {1, 2, 3, 4}

  var inter = u.intersection({2, 3});
  print(inter); // {2, 3}
}
```

---

## Map<K, V>

`Map<K, V>` é uma coleção de pares **chave → valor**, com chaves únicas.
O tipo mais comum é `HashMap`, com acessos médios O(1).
Também há `LinkedHashMap` (preserva ordem de inserção) e `SplayTreeMap` (ordenado por comparação).

### Características

* Cada **chave** é única
* Armazena valores associados a chaves
* Pode iterar sobre chaves, valores ou pares
* Suporta funções para atualizar ou inserir dinamicamente

---

### Métodos / Operações (`Map`)

| Método                            | Descrição                                      | Exemplo                                             |
| --------------------------------- | ---------------------------------------------- | --------------------------------------------------- |
| `[]` / `[]=`                      | Lê ou define um valor por chave.               | `map['a'] = 1; var v = map['a'];`                   |
| `putIfAbsent(key, ifAbsent)`      | Adiciona se a chave não existir.               | `map.putIfAbsent('k', () => 42);`                   |
| `update(key, update, {ifAbsent})` | Atualiza valor existente ou insere se ausente. | `map.update('x', (v) => v + 1, ifAbsent: () => 1);` |
| `remove(key)`                     | Remove a chave e retorna o valor.              | `map.remove('a');`                                  |
| `containsKey(key)`                | Verifica se a chave existe.                    | `map.containsKey('x');`                             |
| `containsValue(value)`            | Verifica se o valor existe.                    | `map.containsValue(10);`                            |
| `keys` / `values`                 | Retorna iteráveis de chaves ou valores.        | `map.keys.toList();`                                |
| `forEach((k, v))`                 | Itera sobre todos os pares.                    | `map.forEach((k,v)=>print('$k → $v'));`             |
| `cast<K2,V2>()`                   | Converte os tipos do mapa.                     | `map.cast<String,int>();`                           |
| `clear()`                         | Remove todos os pares.                         | `map.clear();`                                      |

---

### Exemplo prático

```dart
void main() {
  var m = <String, int>{};
  m['x'] = 10;
  m.putIfAbsent('y', () => 20);
  m.update('x', (v) => v + 5);
  print(m); // {x: 15, y: 20}

  m.forEach((k, v) => print('$k = $v'));
}
```

---

## Iterable

`Iterable<T>` é a **base de todas as coleções iteráveis** em Dart.
Muitos métodos retornam resultados **preguiçosos (lazy)**, ou seja, só executam quando realmente iterados.
Isso permite criar pipelines eficientes com `map`, `where`, `expand`, `take`, `skip` etc.

### Características

* Define a interface comum para `List`, `Set`, etc.
* Métodos *lazy* — executam apenas quando avaliados
* Ideal para operações em cadeia

---

### Métodos / Operações (`Iterable`)

| Método                       | Descrição                                     | Exemplo                                      |
| ---------------------------- | --------------------------------------------- | -------------------------------------------- |
| `map(transform)`             | Transforma cada elemento (lazy).              | `iter.map((e) => e * 2)`                     |
| `where(test)`                | Filtra elementos (lazy).                      | `iter.where((e) => e > 0)`                   |
| `expand(mapper)`             | Mapeia e concatena iteráveis.                 | `iter.expand((e) => [e, e * 2])`             |
| `take(n)` / `skip(n)`        | Pega ou pula os primeiros `n` elementos.      | `iter.take(3)`                               |
| `fold(initial, combine)`     | Reduz todos os elementos acumulando um valor. | `[1,2,3].fold(0, (a,b)=>a+b)`                |
| `reduce(combine)`            | Reduz sem valor inicial.                      | `[1,2,3].reduce((a,b)=>a+b)`                 |
| `firstWhere(test, {orElse})` | Retorna o primeiro que satisfaz a condição.   | `iter.firstWhere((e)=>e>10, orElse: ()=>-1)` |
| `toList()` / `toSet()`       | Converte para coleção concreta.               | `iter.where(...).toList()`                   |
| `any(test)` / `every(test)`  | Testa se algum/todos satisfazem.              | `[1,2,3].any((x)=>x>2)`                      |
| `join([separator])`          | Une os elementos em uma string.               | `[1,2,3].join('-')`                          |

---

### Exemplo prático

```dart
void main() {
  var i = [1, 2, 3, 4]
      .where((x) => x.isEven)
      .map((x) => x * x)
      .take(2);
  
  print(i.toList()); // [4, 16]
}
```

---

# Parte 3 — Literais, Termos-chave, Growable e Imutabilidade

---

## Literais e inicialização

Em Dart, podemos criar coleções de forma concisa usando **literais** (`[]`, `{}`) ou construtores (`List()`, `Set()`, `Map()`).

```dart
var nums = <int>[1, 2, 3]; // Lista tipada
var growable = [1, 2, 3]; // Lista growable (padrão)
var s = <int>{1, 2, 3}; // Conjunto (Set)
var m = <String, int>{'a': 1, 'b': 2}; // Mapa
var fixed = List<int>.filled(3, 0, growable: false); // Lista de tamanho fixo
```

### Dicas

* **`[]`** → cria uma `List` growable.
* **`{}`** → cria um `Map` vazio por padrão (não um `Set`).
* Para criar um `Set` vazio tipado: use `<T>{}`.
* Sempre use **tipagem explícita** (`<int>`, `<String, double>`) para evitar `dynamic`.

---

## Termos-chave e definições

| Termo                           | Definição                                                           |
| ------------------------------- | ------------------------------------------------------------------- |
| **growable**                    | Coleção cujo tamanho pode mudar após criada (`List`, `Set` padrão). |
| **fixed-length**                | Coleção com tamanho fixo (não suporta `add`/`remove`).              |
| **lazy**                        | Métodos que só executam quando realmente iterados (`map`, `where`). |
| **view**                        | Uma "janela" sobre uma coleção existente, sem cópia dos dados.      |
| **immutable**                   | Coleção que não pode ser alterada (`const`, `List.unmodifiable`).   |
| **mutation**                    | Alteração no conteúdo de uma coleção (`add`, `remove`, etc.).       |
| **ConcurrentModificationError** | Erro lançado quando uma coleção é modificada durante uma iteração.  |

---

## Growable vs Fixed-length

As listas podem ser **growable (expansíveis)** ou **de comprimento fixo**.

| Tipo             | Criação                                       | Permite `add`/`remove` | Pode alterar elementos? |
| ---------------- | --------------------------------------------- | ---------------------- | ----------------------- |
| **Growable**     | `var l = [1,2,3];`                            | ✅ Sim                  | ✅ Sim                   |
| **Fixed-length** | `var l = List.filled(3, 0, growable: false);` | ❌ Não                  | ✅ Sim                   |

### Exemplo — Growable

```dart
void main() {
  var g = [1, 2, 3];
  g.add(4);
  g.removeAt(0);
  print(g); // [2, 3, 4]
}
```

### Exemplo — Fixed-length

```dart
void main() {
  var f = List<int>.filled(3, 0, growable: false);
  f[1] = 42;
  print(f); // [0, 42, 0]

  // f.add(5); // Erro! Lista de tamanho fixo.
}
```

### Quando usar cada um

| Situação                            | Tipo recomendado |
| ----------------------------------- | ---------------- |
| Tamanho variável e dinâmico         | Growable         |
| Tamanho fixo e previsível           | Fixed-length     |
| Arrays com uso intensivo de índices | Fixed-length     |
| Listas temporárias ou buffers       | Growable         |

---

## Imutabilidade e Views

Dart oferece formas de criar **coleções imutáveis** (não modificáveis) ou **views** (acessos somente leitura).

### Imutabilidade

Use `const` ou `List.unmodifiable()` para impedir alterações.

```dart
void main() {
  const listConst = [1, 2, 3]; // Imutável em tempo de compilação
  final listUnmod = List.unmodifiable([4, 5, 6]); // Imutável em runtime

  // listConst.add(4); // Erro!
  // listUnmod.removeAt(0); // Erro!
}
```

### Views (somente leitura)

As *views* refletem as alterações da coleção base, mas não podem ser modificadas diretamente.

```dart
import 'dart:collection';

void main() {
  var base = [1, 2, 3];
  var view = UnmodifiableListView(base);

  // view.add(4); // UnsupportedError
  base.add(4); // Alterar base reflete na view

  print(view); // [1, 2, 3, 4]
}
```

| Tipo de View           | Descrição                |
| ---------------------- | ------------------------ |
| `UnmodifiableListView` | Lista somente leitura    |
| `UnmodifiableMapView`  | Mapa somente leitura     |
| `UnmodifiableSetView`  | Conjunto somente leitura |

---

# Parte 4 — Generics, Métodos Funcionais e Bibliotecas de Coleções

---

## 🧩 Generics em Collections

Os **Generics** permitem definir o tipo dos elementos de uma coleção para evitar erros em tempo de compilação e garantir segurança de tipos (*type safety*).

### Exemplo básico

```dart
void main() {
  // Lista tipada
  List<String> nomes = ['Ana', 'Lucas', 'Rafa'];

  // Erro se tentar adicionar tipo incorreto
  // nomes.add(123); // ❌

  // Mapa tipado
  Map<String, int> idades = {'Ana': 25, 'Lucas': 30};

  print(nomes);
  print(idades);
}
```

### Benefícios

| Vantagem                     | Explicação                                       |
| ---------------------------- | ------------------------------------------------ |
| **Segurança de tipos**       | Evita erros de tipo em tempo de compilação.      |
| **Autocompletar aprimorado** | O editor reconhece o tipo dos elementos.         |
| **Legibilidade**             | Facilita entender o tipo esperado na coleção.    |
| **Performance**              | Evita verificações de tipo em tempo de execução. |

---

## ⚙️ Métodos Funcionais de Collections

As coleções em Dart implementam métodos inspirados em programação funcional.
Esses métodos retornam novas coleções ou *views* transformadas, e **não alteram a coleção original**, a menos que explicitamente projetados para isso.

### Principais métodos e exemplos

| Método                 | Descrição                                         | Exemplo                                    |
| ---------------------- | ------------------------------------------------- | ------------------------------------------ |
| `map()`                | Aplica uma função a cada elemento                 | `[1,2,3].map((n) => n*2)` → `(2,4,6)`      |
| `where()`              | Filtra elementos com base em uma condição         | `[1,2,3,4].where((n)=>n.isEven)` → `(2,4)` |
| `reduce()`             | Combina todos os elementos em um único valor      | `[1,2,3].reduce((a,b)=>a+b)` → `6`         |
| `fold()`               | Similar ao `reduce`, mas permite valor inicial    | `[1,2,3].fold(10,(a,b)=>a+b)` → `16`       |
| `any()`                | Retorna `true` se algum elemento satisfaz o teste | `[1,3,5].any((n)=>n.isEven)` → `false`     |
| `every()`              | Retorna `true` se todos satisfazem o teste        | `[2,4,6].every((n)=>n.isEven)` → `true`    |
| `expand()`             | “Achata” listas de listas                         | `[[1,2],[3]].expand((x)=>x)` → `(1,2,3)`   |
| `take()` / `skip()`    | Controla quantos elementos pegar ou pular         | `[1,2,3,4].skip(2)` → `(3,4)`              |
| `toList()` / `toSet()` | Converte iteráveis em coleções concretas          | `(1,2,3).toList()` → `[1,2,3]`             |

### Exemplo completo

```dart
void main() {
  var numeros = [1, 2, 3, 4, 5];

  var paresDobro = numeros
      .where((n) => n.isEven)
      .map((n) => n * 2)
      .toList();

  print(paresDobro); // [4, 8]
}
```

✅ *Esses métodos são “lazy” — ou seja, a operação só é executada quando o resultado é realmente percorrido.*

---

## 🧠 Combinações avançadas

Dart permite **encadear** métodos funcionais de forma fluida:

```dart
void main() {
  var resultado = [1, 2, 3, 4, 5, 6]
      .where((n) => n.isEven)
      .map((n) => n * n)
      .fold(0, (a, b) => a + b);

  print(resultado); // Soma dos quadrados dos pares = 56
}
```

---

## 🧰 Biblioteca `dart:collection`

A biblioteca [`dart:collection`](https://api.dart.dev/stable/dart-collection/dart-collection-library.html) contém coleções e *wrappers* especiais com funcionalidades extras além das básicas de `List`, `Set` e `Map`.

| Classe                    | Descrição                                                          |
| ------------------------- | ------------------------------------------------------------------ |
| `Queue<E>`                | Estrutura FIFO/LIFO — permite `addFirst`, `addLast`, `removeFirst` |
| `LinkedList<E>`           | Lista duplamente encadeada de elementos com ponteiros              |
| `HashSet<E>`              | Implementação de conjunto com hash eficiente                       |
| `HashMap<K, V>`           | Implementação de mapa com hashing                                  |
| `SplayTreeSet<E>`         | Conjunto ordenado automaticamente                                  |
| `SplayTreeMap<K, V>`      | Mapa ordenado por chave                                            |
| `UnmodifiableListView<E>` | View somente leitura de uma lista                                  |
| `ListQueue<E>`            | Fila baseada em lista dinâmica, eficiente em inserções/remover     |

### Exemplo com Queue

```dart
import 'dart:collection';

void main() {
  Queue<String> fila = Queue();

  fila.addAll(['Ana', 'Lucas', 'João']);
  fila.addFirst('Início');
  fila.removeLast();

  print(fila); // (Início, Ana, Lucas)
}
```

### Exemplo com SplayTreeMap (ordenado)

```dart
import 'dart:collection';

void main() {
  var mapa = SplayTreeMap<String, int>();
  mapa['c'] = 3;
  mapa['a'] = 1;
  mapa['b'] = 2;

  print(mapa); // {a: 1, b: 2, c: 3}
}
```

---

## 📦 Pacote `collection` (externo)

O pacote [`collection`](https://pub.dev/packages/collection) (mantido pela equipe oficial do Dart) estende as coleções padrão com **comparadores, mixins, equality helpers** e **views otimizadas**.

### Instalação

```bash
dart pub add collection
```

### Recursos úteis

| Função/Classe                                   | Descrição                                            |
| ----------------------------------------------- | ---------------------------------------------------- |
| `IterableEquality`                              | Compara listas ignorando identidade (profundamente). |
| `DeepCollectionEquality`                        | Compara listas, mapas e sets aninhados.              |
| `ListEquality`, `SetEquality`, `MapEquality`    | Comparam coleções do mesmo tipo.                     |
| `UnmodifiableListView` / `CombinedIterableView` | Cria visualizações compostas e imutáveis.            |

### Exemplo de uso

```dart
import 'package:collection/collection.dart';

void main() {
  const l1 = [1, 2, 3];
  const l2 = [1, 2, 3];

  print(const ListEquality().equals(l1, l2)); // true

  var combined = CombinedIterableView([
    [1, 2],
    [3, 4]
  ]);
  print(combined.toList()); // [1, 2, 3, 4]
}
```

---

Quer que eu siga com a **Parte 5 (Performance, Boas práticas, Cheatsheet e Exemplos executáveis)** para finalizar o README?



