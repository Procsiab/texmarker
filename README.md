# TexMarker

This repository is a Proof of Concept about compiling MarkDown notes into LaTeX generated PDFs

### Credits

[@RobertoBochet](https://github.com/RobertoBochet) came up with this idea; you will actually find some of his [notes](https://github.com/RobertoBochet/advanced-control-notes/blob/master/kalman_filter.md) inside the example MarkDown file provided with this repo.

## Requirements

To use the Makefile and generate the PDF file from the MarkDown notes, you will need the following dependencies:

- `make`
- `pandoc`
- `latexmk`
- `pdflatex`
- `hyperref.sty`
- `amsmath.sty`

## Usage

Run the following command inside the repository root:

```bash
make all
```

Afterwards, you will find the PDF of your notes inside the `pdf` folder.

## Settings

There are several things you may want to tweak before using the Makefile:

- the output PDF name is defined inside the `Makefile`, at the first line, inside the `OUTNAME` variable;
- the file containing the MarkDown notes is defined at the second line, inside the `CONTENTFILE` variable;
- the file containing the document and packages settings is defined at the third line, inside the `MAINFILE` variable.
