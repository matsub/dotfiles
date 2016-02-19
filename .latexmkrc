#!/usr/bin/env perl

$latex = 'platex -halt-on-error -file-line-error -interaction=nonstopmode';
$bibtex = 'pbibtex';
$dvipdf = 'dvipdfmx %S';

$new_viewer_always = 1;
$pdf_mode = 3;
$pdf_previewer = 'open -a Preview';

# you can check this comment out.
# then succeeded typeset are commited automatically.
# $pdf_update_command = "git add %T && git commit -m':automatically: :update: typeset;'"
