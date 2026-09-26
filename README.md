Last change: 2026/09/26-18:57:10.

# The Tale of Ise — BYO Reading

- Yomite Katte Ise Monogatari
- Bring Your Own Reading of _The Tale of Ise_

## Author

- Hilofumi Yamamoto, Ph.D.
- Institute of Science Tokyo, Japan

## About

The translator does not impose a reading, so the reader can read freely.

## Editions

- Japanese: `byo-ise-ja.pdf`
- English: `byo-ise-en.pdf`

## Repository

[https://github.com/yamagen/byo-ise](https://github.com/yamagen/byo-ise)

## Source Data

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.13994483.svg)](https://doi.org/10.5281/zenodo.13994483)

The book is generated from the structured _Tale of Ise_ data in `ise.json`.

Generated translation fragments are not edited directly.

## Build

```sh
make
make ja
make en
make ja en
```

## Generate Translation Fragments

If you want to generate translation fragments from `ise.json`, you need to install `glosslint` first.
[https://github.com/yamagen/glosslint](https://github.com/yamagen/glosslint), which includes `glossemit`.

For example, to generate Dan 1:

```sh
./tr-gen.sh 1
```

The generation pipeline is:

```text
ise.json
    ↓
   jq
    ↓
glossemit
    ↓
dan/001tr.tex
```

## Structure

```text
dan/NNN.tex      human-authored
dan/NNNtr.tex    generated
config/...       glossemit publication controls
```

Do not edit `dan/NNNtr.tex` directly. These files are generated from `ise.json`.

## Requirements

- XeLaTeX
- latexmk
- ExPex
- jq
- glossemit

## License

Software in this repository is released under the MIT License.

Textual and other non-software content is licensed under the Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) license.

See:

- `LICENSE-MIT`
- `LICENSE-CC-BY-SA-4.0`

Copyright (c) 2026 Hilofumi Yamamoto
