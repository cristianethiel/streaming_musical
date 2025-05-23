# Análise de Dados Musicais: Fatores de Sucesso no Streaming
Exploração de dados musicais para entender o impacto das características das faixas no desempenho de plataformas de streaming. Este projeto foi desenvolvido como parte da Jornada de Dados da Laboratoria, em colaboração com Bruna Derner.

## Visão Geral

O objetivo deste projeto é validar hipóteses sobre os fatores que influenciam o sucesso de uma música nas plataformas de streaming para apoiar uma gravadora no lançamento estratégico de um novo artista no mercado musical.

## Problema Central

A gravadora levantou uma série de hipóteses sobre o que faz uma música ser mais ouvida. Essas hipóteses são:  

1- Músicas com BPM (Batidas Por Minuto) mais altos fazem mais sucesso em termos de número de streams no Spotify.  
2- As músicas mais populares no ranking do Spotify também possuem um comportamento semelhante em outras plataformas, como a Deezer.  
3- A presença de uma música em um maior número de playlists está correlacionada com um maior número de streams.  
4- Artistas com um maior número de músicas no Spotify têm mais streams.  
5- As características da música influenciam o sucesso em termos de número de streams no Spotify.

Vamos descobrir!

## Ferramentas e Tecnologias

*   **Linguagens:** Python, SQL (utilizado no BigQuery), DAX (para Power BI)
*   **Bibliotecas Python:** Pandas, NumPy, Matplotlib, Seaborn, SciPy, Statsmodels, Scikit-learn
*   **Banco de Dados / Plataforma:** Google BigQuery
*   **BI e Visualização:** Power BI (incluindo Power Query)
*   **Ambiente de Desenvolvimento:** VS Code

## Estrutura do Repositório

* **/dados_brutos:** Contém os arquivos CSV originais que foram fornecidos para a análise.
* **/dataset:** Contém os arquivos CSV processados e utilizados para a análise.
* **/SQL:** Contém as consultas SQL realizadas no BigQuery.
* **/documentacao:** Contém documentos explicativos sobre o projeto.
    * **ficha_tecnica_streaming.pdf:** Ficha técnica detalhando o processo, metodologia e resultados.
    * **apresentacao_streaming.pdf:** Apresentação com um resumo visual dos insights.
* **streaming_musical.ipynb:** O notebook com o código Python para limpeza, análise estatística, testes de hipótese, e modelos de regressão.
* **requirements.txt:** Lista das bibliotecas Python necessárias para executar o notebook.

## Metodologia

1.  **Coleta e Consolidação:** Dados carregados e unidos em um único DataFrame.
2.  **Limpeza e Tratamento:** Remoção de duplicatas, tratamento de valores ausentes (ex: 'key_note'), padronização de formatos (datas), seleção estratégica de colunas.
3.  **Análise Exploratória de Dados (EDA):** Investigação de distribuições, estatísticas descritivas, identificação de outliers e padrões iniciais (principalmente via Power BI e Python/Seaborn).
4.  **Análise de Correlação:** Cálculo de correlações de Pearson e Spearman.
5.  **Teste de Hipóteses:** Uso de testes estatísticos (Mann-Whitney U).
6.  **Modelagem (Regressão):** Aplicação de regressão linear (simples e múltipla) e avaliação dos modelos (R² e p-valores).
7.  **Visualização:** Criação de gráficos para ilustrar os padrões.

*Os resultados completos das análises e as recomendações estratégicas na [Ficha Técnica](/documentacao/ficha_tecnica_streaming.pdf).*

👉 [Link para a Apresentação](https://www.loom.com/share/31d5822bcbf94b328ebd2a27554e43cd?sid=f5c463d3-95a2-4fcc-ae01-6cf484a940a3)

## Data Visualization

Para explorar os insights, [acesse o dashboard em Power BI](https://app.powerbi.com/view?r=eyJrIjoiYTA1NDRkYTctY2U1NC00YzU5LWFhNTEtZmNjNWU1MWJlYWU5IiwidCI6IjVhOGViYWRmLTdlNDQtNDYzZi04OTdiLThkYzhiODcwZDAyZiJ9&pageName=381d13ad7bdbeda55a28&pageName=381d13ad7bdbeda55a28)

Este dashboard fornece uma visualização detalhada dos dados e das análises realizadas, permitindo uma compreensão mais profunda dos fatores que influenciam o sucesso de faixas musicais nas plataformas de streaming.

## Analista de Dados
*   **Cristiane Thiel**
*   **Site:** [https://cristianethiel.com.br/](https://cristianethiel.com.br/)
*   **LinkedIn:** [https://www.linkedin.com/in/cristianethiel/](https://www.linkedin.com/in/cristianethiel/)



