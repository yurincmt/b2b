# b2b -- base to bases

O **b2b**, com acrônimo para "base to bases," é um utilitário desenvolvido para converter números entre diferentes sistemas numéricos, ou bases. Em informática, bases são sistemas de numeração que determinam a forma como os números são representados. Os sistemas mais comuns são a base decimal (base 10), a base binária (base 2), a base octal (base 8), e a base hexadecimal (base 16).

O **b2b** recebe um número e sua base de origem como entrada e produz como saída o número convertido para outras bases desejadas. Por exemplo, ele pode receber um número em formato decimal e convertê-lo para binário, octal e hexadecimal. Isso é útil para programadores e administradores de sistemas que frequentemente trabalham com diferentes representações numéricas e precisam converter números de uma base para outra de maneira rápida e eficiente.

## Mensagem de ajuda

    b2b - 'base to bases', ferramenta para conversão de um número inteiro entre
           as bases binária, decimal e hexadecimal.

	    b2b -b|-d|-h [NUM]

	    -b  NUM na base binária
	    -d  NUM na base decimal
	    -h  NUM na base hexadecimal

	    Como saída, retorna NUM e as demais conversões na seguinte ordem:
	    bin  dec  hex

    EXEMPLO:
	    b2b -b 1011
	    1011  11  B

	    b2b -d 12
	    1100  12  C

	    b2b -h D
	    1101  13  D

## Experimentando em sua máquina
#### Clone o repositório

    git clone https://github.com/yurincmt/b2b.git

#### Rodando no diretório do projeto

    ./b2b -h ff

#### Instalando na máquina

> Os comando make devem ser executado no diretório raiz do projeto (onde o arquivo Makefile se encontra).

Para rodar o comando `b2b` de qualquer diretório, como qualquer outro comando de sua máquina, precisa-se colocá-lo em um dos diretórios da variável `PATH`. Para fazer isso em um comando, execute o seguinte.

    make install

#### Removendo da máquina

    make uninstall

#### Rode alguns testes

    make test

