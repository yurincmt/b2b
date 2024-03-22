# b2b

**b2b**, acrônimo para '*base to bases*', é um utilitário que tem, como saída, a conversão equivalente em outras bases de determinado número passado como entrada.

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

## Como usá-lo em sua máquina
Para fazer o b2b funcionar em qualquer diretório que vc esteja pelo terminal, é necessário colocar o b2b em um dos diretórios que é listado no $PATH, como visto a seguir.

    echo $PATH
    /usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games
Assim, pode-se colocar o b2b no /bin/ que o shell encontrará o b2b e o executará.

**Link simbólico em /bin/**

    git clone https://github.com/thrxshxll/b2b.git
    cd b2b
    aux=$(pwd)
    sudo chmod ug+x b2b.sh
    cd /bin/
    sudo ln -s "$aux/b2b.sh" b2b
    unset aux

 - Como este é um link simbólico para o b2b.sh no diretóro do repositório que foi clonado, se esse diretório for apagado, o b2b não funcionará mais.

**b2b em /bin/**

    git clone https://github.com/thrxshxll/b2b.git
    cd b2b
    sudo mv b2b.sh /bin/b2b
    sudo chmod ug+x /bin/b2b

 - Agora que o b2b.sh foi movido para /bin/b2b, o diretório do repositório baixado com o git pode ser apagado que o b2b funcionará.
