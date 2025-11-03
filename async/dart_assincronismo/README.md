# Bibliotecas

Uma **biblioteca** é um conjunto de códigos prontos que oferece funcionalidades específicas que você pode reutilizar em seus projetos. Você pode pensar nela como uma caixa de ferramentas: ao invés de criar todas as ferramentas do zero, você usa as que já foram feitas por outras pessoas. Se você precisa manipular datas, por exemplo, em vez de criar funções para calcular o tempo entre dois dias, você pode usar uma biblioteca que já faz isso.

No Dart, as bibliotecas são coleções de códigos Dart que podem ser importadas para o seu projeto para fornecer funcionalidades adicionais. Um exemplo é a biblioteca `dart:math`, que fornece funções matemáticas.

---

# Pacotes

Um **pacote** é uma coleção de bibliotecas, arquivos e recursos organizados em uma estrutura específica. Pacotes podem conter uma única biblioteca ou várias bibliotecas, além de documentação, exemplos e outros arquivos úteis.

No contexto do Dart e Flutter, pacotes são distribuídos através do pub.dev e podem ser facilmente adicionados ao seu projeto como dependências.

Existem pacotes para as mais diversas funcionalidades (sem exagero, tem para quase tudo), como manipulação de JSON, integração com APIs, e até pacotes que fornecem widgets prontos para Flutter. O pacote http, por exemplo, fornece bibliotecas que ajudam a fazer requisições HTTP em Dart.

---

# Plugins

**Plugins** são um tipo de pacote que permite que seu código Dart interaja com funcionalidades nativas do sistema operacional, como a câmera, GPS, ou sensores do dispositivo.

No Flutter, os plugins são importantes para acessar esses recursos em plataformas como Android e iOS. Na verdade, plugins só existem para o Dart no contexto do Flutter, um exemplo bom seria um plugin de câmera que permite que você use, claro, a câmera do dispositivo em um aplicativo Flutter. Ele contém código Dart que se comunica com as APIs nativas da câmera no Android e iOS.

---

# Dependências

Dependências são bibliotecas externas que seu projeto precisa para funcionar corretamente. Quando você desenvolve um software, pode ser que você não queira ou não precise reinventar a roda. Ao invés disso, você adiciona ao seu projeto dependências que outras pessoas já criaram, economizando tempo e esforço.

Essas dependências também são gerenciadas pelo pub.dev, e você pode definí-las no seu projeto aa através do arquivo pubspec.yaml, e o Dart ou Flutter cuida de baixar e instalar essas dependências.

Ou seja, bibliotecas, pacotes e plugins que são externos ao seu código (e dos quais o seu código dependem) são considerados “dependências”.

---

# Pub.dev

O pub.dev é o repositório oficial de pacotes para Dart e Flutter, onde você encontra diversas bibliotecas, ferramentas e plugins que podem ser integrados ao seu projeto.

Vamos explorar os principais dados e as diferentes páginas de um pacote no pub.dev, para que você possa fazer escolhas certas e aproveitar ao máximo essa plataforma.

---

# URI

As URIs (Uniform Resource Identifiers ou Identificadores uniformes de recursos) são fundamentais para identificar recursos na web. No Dart, ao trabalhar com requisições HTTP, entender como criar e utilizar URIs garante que a comunicação com o servidor ocorra de forma eficaz.

URI é um conceito abrangente que inclui URLs (Uniform Resource Locators ou Localizadores uniformes de recursos) e URNs (Uniform Resource Names ou Nomes de recursos uniformes). Enquanto URLs fornecem a localização exata de um recurso, URNs servem como identificadores únicos sem indicar a localização. Juntos, ambos são tipos de URIs.

A URI padrão segue uma estrutura bem definida:

`esquema://host/caminho?query#fragmento`


Por exemplo, na URI:

`https://www.exemplo.com/recurso?parametro=valor#ancora`

- `https://` é o esquema (ou protocolo);
- `www.exemplo.com` é o host;
- `/recurso` é o caminho para o recurso;
- `?parametro=valor` é a query string;
- `#ancora` é o fragmento que refere a uma parte específica do recurso.

Essa estrutura foi estabelecida na RFC 3986 - Uniform Resource Identifier (URI): Generic Syntax, um documento publicado pela IETF (Internet Engineering Task Force) que define a sintaxe e os componentes de uma URI. A RFC 3986 é a referência central para entender como as URIs funcionam e como devem ser manipuladas.

---

## URI no contexto de Dart e do pacote http

No Dart, o uso correto de URIs é fundamental ao interagir com APIs. O pacote `http` do Dart, por exemplo, exige que as URLs sejam convertidas em objetos `URI` antes de serem usadas em requisições HTTP. Isso garante que a URL esteja formatada e que a comunicação com o servidor seja confiável.

Além de usar `Uri.parse()` para converter uma string em URI, você pode criar uma URI diretamente utilizando o construtor da classe `Uri`. Isso permite montar a URI especificando seus diferentes componentes de forma explícita.

Aqui está um exemplo de como fazer isso:

```dart
import 'package:http/http.dart' as http;

void main() async {
  // Criando uma URI diretamente utilizando o construtor
  var uri = Uri(
    scheme: 'https',
    host: 'jsonplaceholder.typicode.com',
    path: '/posts/1',
  );

  // Realizando uma requisição GET utilizando a URI criada
  var response = await http.get(uri);

  if (response.statusCode == 200) {
    print(response.body);
  } else {
    print('Erro: ${response.statusCode}');
  }
}
```

Nesse exemplo:

- `Uri`: a classe `Uri` do Dart possui um construtor que permite especificar diretamente o esquema (scheme), o host (host), e o caminho (path) da URI.
- `http.get(uri)`: utiliza a URI criada para realizar a requisição GET.

Ao criar a URI dessa forma, você tem maior controle sobre cada parte dela, o que pode ser especialmente útil quando você precisa construir URIs complexas com parâmetros de consulta ou fragmentos.
