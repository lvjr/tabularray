
Contribution to the Manual
--------------------------

- You need to compile the manual files with LuaLaTeX,
  because it is rather slow to compile them with XeLaTeX or PDFLaTeX.

- The manual `tabularray.tex` is split into subfiles and put in manual folder.
  You can compile each subfile and see the output.

- After editing subfiles in manual folder,
  you need to run `texlua manual.lua` to generate `tabularray.tex` from subfiles.

- Now you can create a pull request for your contribution.


Contribution to the Code
------------------------

- You need to install `l3build` and `ppmcheckpdf` packages into your TeX distribution first.

- After editing the source code, run `l3build check` to compile test files.

- Then run `texlua buildend.lua` to compare MD5 checksums for test outputs.

