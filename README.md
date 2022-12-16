# African Wordnet Zulu adjectives tool

## Introduction
The tool presented here is based on the Zulu Grammatical Framework resource grammar and seeks to extend the usage of adjectives in the Zulu African Wordnet. For more information, see [GWC2023](https://www.hitz.eus/gwc2023/programme).

## Prelimininaries

Install the `pgf` Python package.

    $ pip3 install pgf

## Running the tool

Run the following to see the top-level usage instructions.

    $ python3 afwn_adjectives.py -h

    usage: afwn_adjectives.py [-h] {query,construct} ...

     positional arguments:
       {query,construct}  sub-command help
         query            find adjectives
         construct        get correct Zulu adjective constructions

     optional arguments:
       -h, --help         show this help message and exit

### Query English
To check for support for English adjectives, use `query`.

    $ python3 afwn_adjectives.py query -h

    usage: afwn_adjectives.py query [-h] adjective

    positional arguments:
      adjective   adjective or part of an adjective (English)

    optional arguments:
      -h, --help  show this help message and exit

For example:

    $ python3 afwn_adjectives.py query wrong
    wrong
    wrongful

### Generate Zulu
To see the Zulu form(s) of English adjectives, use `generate`.

    $ python3 afwn_adjectives.py generate -h

    usage: afwn_adjectives.py generate [-h] [--csv]
                             {Pres,Past,Fut,RemPast,RemFut,?} {Pos,Neg,?} {1,1a,2,2a,3,4,5,6,7,8,9,10,11,14,15,17,?} {Attr,Pred,?} adjective

    positional arguments:
      {Pres,Past,Fut,RemPast,RemFut,?}
      {Pos,Neg,?}
      {1,1a,2,2a,3,4,5,6,7,8,9,10,11,14,15,17,?}
      {Attr,Pred,?}
      adjective

    optional arguments:
      -h, --help            show this help message and exit
      --csv                 print output in csv format

Some examples to try:

    $ python3 afwn_adjectives.py generate Pres Pos 1 Pred happy
    $ python3 afwn_adjectives.py generate Pres Pos 5 Attr unfortunate
    $ python3 afwn_adjectives.py generate ? Neg 9 Pred accessible
    $ python3 afwn_adjectives.py generate Past ? 9 Pred heated
    $ python3 afwn_adjectives.py generate Pres Pos 9 ? improved
    $ python3 afwn_adjectives.py generate Past Neg 7 Attr "three legged"

### Analyze Zulu
To analyze Zulu qualificatives, use `analyze`.

    usage: afwn_adjectives.py analyze [-h] qualificative

    positional arguments:
    qualificative  Zulu qualificative (multi-token constructions should be enclosed in quotations)

    optional arguments:
    -h, --help     show this help message and exit

Some examples to try:

    $ python3 afwn_adjectives.py analyze unomsindo
    $ python3 afwn_adjectives.py analyze uyangeneka
    $ python3 afwn_adjectives.py analyze ongekenayo
    $ python3 afwn_adjectives.py analyze "esinemilenze emithathu"

## Compiling the grammars

The latest code of the ZRG can be obtained as part of the official [GF RGL repository](https://github.com/GrammaticalFramework/gf-rgl). In addition, the `rg` folder in this repository contains extension modules with which the version of the ZRG used in this project can be compiled. [Install](http://www.grammaticalframework.org/download/index.html) the latest version of GF and clone the `gf-rgl` code from Github. Let `GF_RGL` point to the `gf-rgl` folder on your machine and set the GF_LIB_PATH variable as follows

    export GF_LIB_PATH=$GF_LIB_PATH:$GF_RGL/src/*:$GF_RGL/src/zulu/*

Then compile ZWNAdjectives.pgf with

    gf --make ZWNAdjectivesZul.gf

Or compile the ZRG directly with

    cd rg/
    gf --make ZWNLangZul.gf
