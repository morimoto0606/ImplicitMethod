#!/usr/bin/perl
# LaTeX
$pdflatex = 'pdflatex -synctex=1 -halt-on-error -file-line-error %O %S';
$bibtex = 'bibtex %O %S';
$pdf_mode = 1;
$max_repeat = 5;


# preview
$pvc_view_file_via_temporary = 0;
if ($^O eq 'linux') {
    $dvi_previewer = "xdg-open %S";
    $pdf_previewer = "xdg-open %S";
} elsif ($^O eq 'darwin') {
    $dvi_previewer = "open %S";
    $pdf_previewer = "open %S";
} else {
    $dvi_previewer = "start %S";
    $pdf_previewer = "start %S";
}
# clean up

END {

    system('find out -type f ! -name "*.pdf" -delete');

}