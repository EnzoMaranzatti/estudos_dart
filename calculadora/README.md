# Projeto Calculadora

Para desenvolver melhor a linguagem dart, vamos desenvolver um exercicio simples, sendo ele uma calculadora para realizar operações, usando as entradas dos usuários para o calculo do resultado.

### Null safety

No mundo da programação, os valores nulos podem ser um campo minado de erros.

É ai que entra a *segurança contra nulos* (null safety), um recurso do `Dart` que ajuda você a escrever um código mais confiável, ou seja, menos sujeito a interrupções e erros.

```
Um valor nulo é um "valor vazio". Um texto vazio "" é um dado do tipo `string` que não tem nenhum valor, não tem nada. O valor 0 é um valor do tipo int.
```

### Tipos de dados

Em `Dart` temos os *tipos primitivos* e os *tipos compostos*. Abaixo está a explicação de cada um

#### 1. Tipos primitivos

Os tipos primitivos são os elementos mais básicos para armazenar valores simples. Imagine-os como as peças únicas do seu quebra-cabeça. Ou seja, são *tipos simples, compostos de uma única parte.

No `Dart` encontramos os seguintes tipos primitivos:
- Números: `int` (números decimais, como 1,2,3,...) e `boll` (valores binários e lógicos, true ou false)
- Texto: `String` (sequência de caracteres)
- Caracteres: `rune` (Um único caractere)

```
Um detalhe importante é que, no `Dart`, String pode ser considerada um tipo primitivo, diferente de outras linguagens de programação. Esse caso é uma exceção, pois no `Dart` todos os tipos primitivos e compostos são uma referência a um objeto.
```

#### 2. Tipos Composstos

Já os tipos compostos são como se fossem *conjuntos de peças do quebra-cabeça que se unem para criar algo maior. Ou seja, são tipos compostos por mais de uma parte.*

Tipos compostos utilizam como base tipos primitivos e até outros tipos compostos. No `Dart`, os principais tipos compostos são:

- Listas: `List` Armazenam valores ordenados do mesmo tipo, como uma listade compras com itens repetidos ou não.
- Mapas: `Map` Associam chaves únicas a valores, como uma agenda telefônica com nomes e números de telefone.
- Conjunto: `Set` Coleções de valores *não ordenados* e *sem valores repetidos*, como um conjunto de cartas de baralho sem repetição