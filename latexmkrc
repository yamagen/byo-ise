#!/usr/bin/perl

$pdflatex = 'xelatex %O %S';
$pdf_mode = 1;

$bibtex = 'biber --bibencoding=utf8 %B';
$bibtex_use = 2;

$pdf_previewer = 'zathura';
