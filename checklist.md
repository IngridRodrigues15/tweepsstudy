# Checklist de avaliação

## É esperado que:

| ok? | item |
|-----|------|
|     | tenha um Readme claro, com instruções de: |
|     | + como fazer setup do ambiente |
|     | + como subir a aplicação e acessar as rotas |
|     | + como rodar os testes |
|     | o Reame tenha explicações sobre as decisões tomadas
|     | tenha um arquivo .ruby-version |
|     | o Gemfile não tenha gems desnecessárias |
|     | não tenha utlizado activerecord ou algum tipo de persistencia |
|     | utilize ENVs ou yaml (ou algo do tipio) para setar as configurações |
|     | a url /most_relevants funcione e: |
|     | + retorne o json como especificado |
|     | + ordere os tweeps como especificado |
|     | + filtre os tweeps de reply para a locaweb como especificado |
|     | a url /most_mentions funcione e: |
|     | + retorne o json como especificado |
|     | + ordere os tweeps como especificado |
|     | + filtre os tweeps de reply para a locaweb como especificado |
|     | + use um array e não uma hash para não perder a ordenação dos tweets |
|     | os testes rodem sem quebrar nenhum cenário |
|     | os testes estejam testando os pontos mais importantes |
|     | tenha criado classes/metodos coerentes e enxutos |
|     | o código esteja identado |
|     | o id 42 (do usuario da locaweb) e a url tweeps.locaweb.com.br esteja em uma constante / configuração |

## Será um bonus se:

| ok? | item |
|-----|------|
|     | a url /most_relevants responder para formato html |
|     | a url /most_mentions responder para formato html |
|     | usar rubocop (ou algum lint da linguagem) para lint do código |
|     | os commits estiverem bem feitos |
|     | enviar Dockerfile para rodar testes e subir a app |

## Pontos positivos

## Pontos negativos

## Conclusão
