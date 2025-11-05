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