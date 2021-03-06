# Análise de dados Virna Brandão

Dados de Virna Brandão (Mestrado profissional INTO 2016)

## Objetivo da Análise

Descrição, e associação de dados categóricos.

- Estatísticas descritivas
- Associação dos dados qualitativos
  - Tempo.Bloqueio x Técnica
  - Tempo.Cirurgia x Técnica
  - Bloqueio.Motor.Imediato x Técnica
  - Opioide.Imediato x Técnica
  - Bloqueio.Motor.Tardio
  - Opioide.Tardio x Técnica
  - Dor.Imediato3 x Técnica
  - Dor.Tardio3 x Técnica

As análises serão feitas em um *dataset* resumido e anonimizado.
Os dados brutos **não serão** disponibilizados neste repositório, apenas as figuras e o relatório.

## Características dos dados

Os pacientes foram submetidos a 2 grupos de tratamento anestésico (A e B).
Recentemente, algumas variáveis foram re-categorizadas, para simplificar a interpretação, exibição dos resultados e escrita.
A definição atual das categorias:

- Sexo é um dado qualitativo binário
- IMC é um dado quantitativo
- ASA é um dado qualitativo ordinal
- Tempo.Cirurgia é um dado qualitativo ordinal
- Tempo.Bloqueio é um dado qualitativo ordinal
- Bloqueio.Motor.Imediato é um dado qualitativo binário
- Bloqueio.Motor.Tardio é um dado qualitativo binário
- Opioide.Imediato é um dado qualitativo binário
- Opioide.Tardio é um dado qualitativo binário
- ~~Dor.Imediato2 é um dado qualitativo binário~~
- ~~Dor.Tardio2 é um dado qualitativo binário~~
- Dor.Imediato3 é um dado qualitativo binário
- Dor.Tardio3 é um dado qualitativo binário

Deve-se explicitar o n de cada grupo de tratamento, classificando assim cada categoria.

## Releases

Os releases a seguir indicam o estado da análise.
O planejamento foi dividido em etapas, e serão liberados de forma incremental.
O link de cada release será disponibilizado assim que ele ficar pronto.

Para baixar todos os resultados do release em um único arquivo ZIP, veja o(s) link(s) abaixo:

- [v0.9][] ([download][download-v0.9]) - Dados originais, análises prontas.
- v0.11 (download) - Dados corrigidos, análises refeitas.
- v1.0 (download) - Versão final da análise, relatório

[Todos os releases][].

[v0.9]: https://github.com/philsf-biostat/analise_dados_VB_2016/releases/tag/v0.9
[download-v0.9]: https://github.com/philsf-biostat/analise_dados_VB_2016/archive/v0.9.zip
[Todos os releases]: https://github.com/philsf-biostat/analise_dados_VB_2016/releases

## Resultados brutos

### Estatísticas descritivas

### Tabelas de contingência

Tabelas de associação e p-valores dos testes de independência.

- [Tabelas de associação][] (visualizar online)
  - Download no formato [Word][Tabelas Word]
  - Formato [TXT][Tabelas TXT]

[Tabelas de associação]: resultados/tc.md
[Tabelas TXT]: resultados/tc.txt?raw=true
[Tabelas Word]: resultados/tc.docx?raw=true

### Figuras

Gráficos de barra, cruzando os principais dados, por grupo de tratamento.

- [Tempo de cirurgia <2h x Dor T2][]
- [Tempo de cirurgia <2h x Dor T12][]
- [Tempo de cirurgia >2h x Dor T2][]
- [Tempo de cirurgia >2h x Dor T12][]
- [Composição][] das 4 figuras acima.

As figuras não contém título indicativo, para permitir a mestranda a incluir seu próprio título e legenda.
O p-valor do teste de Fisher está incluído na figura.

[Tempo de cirurgia <2h x Dor T2]: figuras/tempo-curto-dor-imediato.png?raw=true
[Tempo de cirurgia <2h x Dor T12]: figuras/tempo-curto-dor-tardio.png?raw=true
[Tempo de cirurgia >2h x Dor T2]: figuras/tempo-longo-dor-imediato.png?raw=true
[Tempo de cirurgia >2h x Dor T12]: figuras/tempo-longo-dor-tardio.png?raw=true
[Composição]: figuras/tempo-dor-2x2.png?raw=true
