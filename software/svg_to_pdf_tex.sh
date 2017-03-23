#!/bin/bash

usage() {
    echo "Useage: $0 <filename>"
    echo "Converts an SVG to PDF with embedded Latex using Inkscape"
    echo "filename should end with .svg"
}

if [ ! $1 ]
then
    usage
    exit 1
fi

# See http://anorien.csc.warwick.ac.uk/mirrors/CTAN/info/svg-inkscape/InkscapePDFLaTeX.pdf
# for instructions on converting SVG to PDF with Latex in Inkscape
inkscape -D -z --file=$1 --export-pdf=${1%.svg}.pdf --export-latex
