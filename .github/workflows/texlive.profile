# Based on https://github.com/CTeX-org/ctex-kit/blob/master/.github/workflows/texlive.profile
# Based on https://github.com/latex3/latex3/blob/main/support/texlive.profile

# Personal texmf folders will not be created in TeX Live installation.
# This will cause failures to generate PK fonts in compiling documents.
# Therefore we make the three personal folders the same as common folders.

# We will run install-tl script inside install-tl-20YYMMDD subfolder.
# Therefore TEXDIR is actually the same as ${{github.workspace}} folder.

TEXDIR              ../tmp/texlive
TEXMFSYSCONFIG      ../tmp/texlive/texmf-config
TEXMFSYSVAR         ../tmp/texlive/texmf-var
TEXMFLOCAL          ../tmp/texlive/texmf-local
TEXMFCONFIG         ../tmp/texlive/texmf-config
TEXMFVAR            ../tmp/texlive/texmf-var
TEXMFHOME           ../tmp/texlive/texmf-local
option_doc          0
option_src          0
tlpdbopt_autobackup 0
selected_scheme     scheme-infraonly
