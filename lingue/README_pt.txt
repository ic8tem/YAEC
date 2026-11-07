YAEC – Yet Another EME Calc 1.2.1
por Costantino IC8TEM
==========================================

Calculadora para radioamadores que trabalham em EME (Terra–Lua–Terra) de 50 a 432 MHz: posição da Lua e janelas de apontamento segundo os limites da própria antena, planeamento dos dias com a melhor Dgrd, balanço da ligação EME, ruído do céu e do Sol, base de dados de cabos coaxiais e manuais sobre EME. Para Windows, Linux e macOS, em 26 línguas.
Código-fonte e transferência: https://github.com/ic8tem/YAEC/releases

INSTALAÇÃO – WINDOWS
1. Transfira YAEC-1.2.1-Setup.exe da página Releases e execute-o. Instala o YAEC em Documentos\YAEC, sem direitos de administrador, com atalhos no menu Iniciar e no ambiente de trabalho, e o programa de desinstalação.
2. Se aparecer o aviso do SmartScreen: "Mais informações" → "Executar mesmo assim".
3. Sem instalação: extraia YAEC-1.2.1-windows-portable.zip para uma pasta onde possa escrever e inicie YAEC.exe.

INSTALAÇÃO – LINUX
O YAEC funciona com o Mono, o ambiente de execução .NET livre.
- Debian, Ubuntu, Mint: transfira yaec_1.2.1_all.deb e instale-o com
      sudo apt install ./yaec_1.2.1_all.deb
  (instala também o Mono). O YAEC inicia-se a partir do menu de aplicações ou com o comando "yaec".
- Outras distribuições: instale o Mono (Fedora: sudo dnf install mono-complete; Arch: sudo pacman -S mono; openSUSE: sudo zypper install mono-complete), extraia YAEC-1.2.1-linux.tar.gz e execute ./install.sh.

INSTALAÇÃO – macOS (experimental)
1. Instale o Mono para macOS (https://www.mono-project.com/download/stable/) e o XQuartz (https://www.xquartz.org).
2. Abra YAEC-1.2.1-macOS.dmg e arraste o YAEC para Aplicações. Na primeira vez: clique com o botão direito em YAEC → Abrir (a app não está assinada pela Apple).

VERIFICAÇÃO DOS FICHEIROS TRANSFERIDOS (SHA-256)
Cada release contém SHA256SUMS.txt com a impressão digital SHA-256 de cada pacote. Compare-a com a do ficheiro transferido:
- Windows (PowerShell): Get-FileHash .\YAEC-1.2.1-Setup.exe -Algorithm SHA256
- Linux: sha256sum -c --ignore-missing SHA256SUMS.txt
- macOS: shasum -a 256 -c --ignore-missing SHA256SUMS.txt
Se os dois valores forem diferentes, não instale o ficheiro: transfira-o novamente.

LÍNGUA E DADOS
A língua escolhe-se na parte superior da janela principal. Todos os dados do programa ficam na pasta "data": no Windows ao lado de YAEC.exe, no Linux em ~/.local/share/YAEC/data, no macOS em ~/Library/Application Support/YAEC/data.

LICENÇA
O YAEC é gratuito; o texto da licença está no ficheiro LICENSE_pt.txt e no separador LICENÇA do programa. Em caso de dúvida, prevalece a versão italiana (LICENZA.txt).

CONTACTOS
Erros, dados melhores, traduções: ccerrotta@gmail.com · ic8tem@gmail.com · www.qrz.com/db/ic8tem

HISTÓRICO DE VERSÕES
As versões anteriores à 1.0 chamam-se beta.
- 1.2.1 - A página CONTACTOS DO AUTOR E AGRADECIMENTOS volta a abrir corretamente em Linux e macOS; a referência para os transverters indica o § 1.7.1.
- 1.2 - Balanço EME com os indicadores A minha EIRP, EIRP do DX, perda de percurso e S/R nos dois sentidos (com o Sol); fórmulas do documento Word num só tamanho, dentro das margens; botões preenchidos e listas pendentes planas com rebordo arredondado em todos os esquemas; oito esquemas de cores pastel; caixas de valores com as setas lado a lado; os três melhores dias por ordem de data; fundo do céu desfocado; DEPURAÇÃO DE FÓRMULAS traduzido; manual TEORIA E CONSELHOS SOBRE EME com os conselhos de Relu NJ9R (GRAVES, apontamento, conectores, ganho das antenas, JT65B e MAP65, relé de polarização), as novas secções sobre a primeira receção e sobre os chats na Internet e as tabelas de VE7BQH no prefácio; agradecimentos a NJ9R, a memória de IK1UWL e os autores de artigos, hardware e software, com um balão de ajuda sobre as suas obras.
- 1.1 - Posição em direto e +- 24h (antes Seguimento) também no passado e no futuro: dia no calendário e hora arrastando a linha vermelha, frequência no quadro Eco e frequências; caixa do indicativo do DX com o CALL3.TXT descarregado de W7GJ e do WSJT-X Improved e fundido, locator proposto e cópia para a pasta do WSJT-X; Distância e Dgrd sem classificação, com a declinação sobreposta, linhas coloridas como o gráfico e horas úteis a verde à escolha; caixas de verificação no estilo do programa; cabos ordenados por diâmetro nas listas e por nome, fabricante e tipo na tabela, com fontes traduzidas; Balanço EME só com os modos de 60 s (JT65, Q65-60A, Q65-60B, Q65-60C) e esquema da instalação que se adapta aos textos; MANUAL DE UTILIZAÇÃO com a revisão de todos os ecrãs; TEORIA E CONSELHOS SOBRE EME com o prefácio do autor, numeração a partir de 1 e fórmulas do ruído solar; HTTPS em Linux e macOS com os certificados do sistema.
- 1.0.1 - Na página da versão no GitHub está o ficheiro SHA256SUMS.txt com as impressões SHA-256 de todos os pacotes: servem para verificar que os ficheiros descarregados são os originais (instruções no README).
- 1.0 - Primeira versão estável, para Windows, Linux e macOS (Linux e macOS com Mono; os dados em ~/.local/share/YAEC/data ou em ~/Library/Application Support/YAEC/data); instalador para Windows e pacotes para Linux e macOS criados no GitHub; as versões anteriores chamam-se beta. Novo separador Lua sobre o mundo (elevação da Lua sobre as terras emersas de todo o mundo, estação DX com um clique, estado da sua antena); manual dividido em MANUAL DE UTILIZAÇÃO APROFUNDADO e TEORIA E CONSELHOS SOBRE EME; grupos Ajuda e ferramentas e Credits and thanks; separador Exportar os cálculos para Excel; deixa de haver margem sobre o modo: S/N em 2500 Hz com o limiar típico como referência e os limites do JT65 no manual; no manual também a tabela do Q65 para TX1 – TX6, a rotação de Faraday e a síntese do artigo de SM5BSZ; tabela de cabos ordenável por perda, com novos cabos Messi & Paoloni, SSB (SeaTex para ambientes marinhos, Aircom Premium), Belden e Tasker; caixas com a unidade sem textos residuais.
- beta 30 - Curva da declinação da Lua sob o gráfico de Distância e Dgrd, com os máximos a norte e a sul e a zona favorável ao seu hemisfério; novo parágrafo do manual sobre a declinação (ciclo mensal, elevação máxima e horas acima do horizonte, ligações entre hemisférios, ciclo de 18,6 anos, ruído); dados de I2FAK sobre o Sagitário precisados para o norte de Itália e acima de 5° de elevação.
- beta 29 - Manual traduzido por completo nas 17 línguas; fórmulas das secções 3.4, 3.5, 3.5.1 e 3.6 ao estilo do editor de equações; nova secção 3.7.3 sobre o sequenciador TX/RX (IK1UWL); botão "Salva in Word (.docx)" do manual com índice, números de página e fórmulas do Word; separador entre índice e texto a 25 %; aviso quando o Dpol ultrapassa 60° em 24 horas (fonte: entrevistas em vídeo a Franco I2FAK).
- beta 28d - Corrigido o fecho da beta 28c no arranque (caixas com unidade); os erros imprevistos aparecem numa mensagem e são escritos em data\errori.txt; quadro DGRD do ecrã principal com o mínimo e o máximo do gráfico e o valor atual.
- beta 28c - Ecrã de arranque com uma barra que se enche em 6 segundos; CONTACTOS DO AUTOR E AGRADECIMENTOS com a Lua, o céu arco-íris e os agradecimentos; botões em pastilha e listas arredondadas; Budget EME como no esboço (fichas das estações, indicadores, tabela desenhada, esquema que se adapta ao tamanho da letra, unidades dentro das caixas, lista de transverters); posição da Lua com fichas, pastilhas em direto, cadeados e nova janela Colunas; ruído solar com a fonte Learmonth (BoM) e eixos 100 – 20 000 MHz; CABOS COAXIAIS com filtros em pastilha, tabela desenhada e gráfico 1 – 20 dB.
- beta 28b - Manual: retirado o capítulo «Os separadores» e renumerados os capítulos e todas as referências; fórmulas de MNR, T(f), Dgrd e do Balanço EME no estilo do editor de equações; títulos, tabelas lado a lado, barras, linhas destacadas, cores e locator de exemplo como nos esboços; pré-amplificador com os testes do IC-746PRO (ARRL) e do FT-897 (RadCom); transverter com ábaco grande e Kuhne TR 144 H +40 a 25 dB; créditos passados do separador ABOUT & CREDITS para o capítulo «Fontes, dados e créditos»; mapa do Reconhecimento dos meus obstáculos centrado em JJ00AA sem locator.
- beta 28a - Janela de fecho com os botões Sim e Não sempre visíveis; linha amarela dos limites mais grossa na Abóbada celeste; textos que já não se sobrepõem com letras ampliadas; oito cabos novos (H1000, H100, RT5020, XT2400, LLF195, RG-142, RG-393, RG-115) e balões dos cabos no estilo do programa; licença com entrelinha e espaçamento como o esboço; separador CONTACTOS DO AUTOR E AGRADECIMENTOS; clique fora do círculo do Reconhecimento dos meus obstáculos para escolher um novo locator; língua, tipo e tamanho de letra mudam sem reiniciar o programa.
- beta 27 - bandas só até 432 MHz; ecrã de arranque com o logótipo e o patrocínio da secção ARI Valle del Liri; linha de agradecimento na janela de fecho; línguas bengali, árabe e turco (17 línguas); ecrã principal com quatro cartões coloridos, IR PARA OS CÁLCULOS e IR PARA A ABÓBADA CELESTE, locator até 14 caracteres, escolha do tipo de letra e dicas escuras; Reconhecimento dos meus obstáculos com opacidade e tom do cinzento; dia destacado em Distância e Dgrd; botão Colunas na Posição da Lua; Balanço EME com o esquema da instalação TX/RX; Ruído solar com fontes, indicadores e espectro; DEPURAÇÃO DE FÓRMULAS em estilo Word com gravação .docx; novos separadores CABOS COAXIAIS, CONTACTOS DO AUTOR e LICENÇA; manual dentro do programa (MANUAL DE UTILIZAÇÃO APROFUNDADO).
- beta 26 - Nova escolha dos separadores em dois níveis (grupos e separadores); esquema de cores Preto e esquema Noite em tons de azul; cor e espessura editáveis para as duas curvas da Dgrd e dias com o Sol perto da Lua; avisos de possível absorção polar (PCA) e auroral para as duas estações; caixa para a desfocagem no Mapa de apontamento; riscas diagonais cinzentas fora dos limites na Abóbada celeste e textos que já não se sobrepõem; novo separador DEPURAÇÃO DE FÓRMULAS; ícone da Lua; manuais PDF nas 14 línguas.
- beta 25 - Separador Distância e Dgrd renovado: os três melhores dias, calendário dos dias com fase lunar, gráfico do Dgrd (zero em baixo) com a distância média sobreposta, lua nova e lua cheia, classificação curta; novo separador Mapa de apontamento com fotografia aérea ou mapa topográfico, Lua, trajetória, nascer e pôr e limites da antena que se movem com o rato.
- beta 24 - Textos da Abóbada celeste com o dobro do tamanho; línguas russo, ucraniano e africâner; o compila.bat já não cria os manuais PDF.
- beta 23 - Novo ecrã principal: hora UTC, hora local e hora local do DX, faixa de estado com contagem decrescente, bússola de azimute e arco de elevação com os limites da antena, fase da Lua com nascer e pôr, barras de Dgrd e S/R, barra das próximas 24 horas; tema noite em todos os separadores; três escalas de cores na Abóbada celeste com textos com contorno.
- beta 22 - Todos os dados na subpasta data junto ao executável (movidos do AppData e da pasta do programa), controlados e descarregados de novo no arranque; manuais PDF com capturas em italiano, inglês, francês, alemão, espanhol e português; caixas e ESCOLHA DE BANDAS em cima à direita da janela, S/R de novo em baixo à direita.
- beta 21 - Ecrã principal: caixa CÁLCULOS APROFUNDADOS, AZIMUTE e ELEVAÇÃO LOCAL, data junto ao título, quadro S/R sob ESCOLHA DE BANDAS; escolha do tipo de letra para todo o programa. Novas bandas de 70 MHz e 222 MHz.
- beta 20 - Altitude do terreno obtida automaticamente da web (Open Topo Data, Open-Meteo) quando o locator tem 10 caracteres.
- beta 19 - Título com o indicativo do utilizador; nenhum locator ou indicativo predefinido; definições na pasta do programa; nova ordem dos separadores; INSTRUÇÕES com todos os parâmetros, MNR e CFOM; separador experimental-EXCEL; descarga do log do LoTW; ABOUT & CREDITS; idiomas hindi, coreano e indonésio.
- beta 18 - Balanço EME: largura de banda até 3000 Hz, figuras de ruído junto aos ganhos, transverter excluído do cálculo com ganho 0, temperatura de antena Tant (tabelas VE7BQH); definições gerais no separador Seguimento; Lua crescente desfocada no fundo do ecrã principal.
- beta 17 - Caixa "CÁLCULOS APROFUNDADOS" no Seguimento (colunas a partir de Dpol, linhas intermédias do Balanço EME, separador Ruído solar); S/R estimada no ecrã principal; botão "ESCOLHA DE BANDAS" com as bandas de 50 MHz a 122 GHz.
- beta 14 - Novo nome YAEC - Yet Another EME Calc; interface em 8 idiomas (inglês, italiano, alemão, francês, espanhol, português, chinês, japonês) com o inglês como idioma de arranque; indicativo no título da janela.
- beta 13 - Correção do erro de compilação CS0051 (acessibilidade da função de Friis).
- beta 12 - A figura de ruído do rádio é obtida do seu MDS com a largura de banda escolhida pelo utilizador (a mesma do cálculo da S/R).
- beta 11 - Ecrã principal Seguimento refeito (o meu locator e o do DX, frequência, data e horas, o meu azimute e elevação e os do DX, outros dados úteis); locator e frequência copiados automaticamente para todos os separadores; figura de ruído do recetor com a fórmula de Friis; Distância e Dgrd até 61 dias; indicativo nas definições gerais; recomendações sobre o ALC nas instruções.
- beta 10 - Separador Seguimento; kHz de 000 a 999; dia da semana; largura de banda e S/R com o Sol no balanço; ground gain BETA; perda dos cabos transverter-rádio; tema escuro e fontes; Dgrd de um mês com lua nova; LoTW a verde; separador INSTRUÇÕES; janela de arranque e confirmação de fecho.
- beta 9 - Abóbada celeste em azimute/elevação com horizonte plano e cores do ruído do azul ao vermelho; separador Distância e Dgrd; separador ABOUT.
- beta 6 - Separador Mapa WWL e ADIF com grelha Maidenhead.
- beta 5 - Colunas de estado substituídas pela cor; título "por Costantino IC8TEM"; lista kHz para a frequência CFOM.
- beta 4 - Hora local do DX obtida a partir da posição; duração em dias; dicas nas colunas; Doppler e frequências CFOM; separador Abóbada celeste.
- beta 3 - S/R estimada no balanço; separador Ruído solar com dados SFU da web e escolha da estação RSTN.
- beta 2 - Separador Balanço EME: PIRE, perda de percurso, sinal recebido e margem sobre o MDS.
- beta 1 - Segunda estação (DX), janelas comuns, Dpol, MNR, Tsky e Dgrd como no WSJT-X.
