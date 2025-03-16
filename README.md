# Trabalho prático de P.D.S. II

*Programação e Desenvolvimento de Software II* é uma matéria ofertada pelo Departamento de Ciência da Computação da Universidade Federal de Minas Gerais 
e que utiliza da linguagem de programação *C++* para introduzir os conceitos que caracterizam o paradigma de programação orientada a objetos – no qual, por sua vez, 
contribui para a criação de um código enxuto, modularizado (organizado em subdivisões, promovendo a indepedência entre diferentes partes do código) e escalável.

O presente projeto se trata do desenvolvimento de jogos de tabuleiro, cuja interface com a qual o usuário interage é o próprio terminal de comando. Este trabalho foi 
realizado em grupo; neste repositório, encontra-se um ensaio do que viria a ser o código final – e que encontra-se [aqui](https://github.com/jufernandino/Jogos-de-Tabuleiro).

Em particular, chamo atenção para o uso de um arquivo *Makefile* para otimizar o processo de compilação; a sua utilização garante que arquivos que não sofreram alterações sejam recompilados desnecessariamente.

## Modo de uso

```bash
# gere o executável ao digitar, no terminal, o comando:
make all
```

```bash
# Então, mude o diretório para a pasta "bin" com o comando
cd bin
```

```bash
# A seguir, digite:
./jogosDeTabuleiro
```

```bash
# Para excluir os arquivos .o, volte para o diretório anterior com o comando
cd ..
```

```bash
# e digite 
make clean
```
