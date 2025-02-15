# Test files for cells

| Test file  | What it tests |
| :---       | :---          |
| `cell-001` | vertical alignment of single-line cells, with or without `stretch` |
| `cell-002` | horizontal and vertical alignment of multi-line cells |
| `cell-003` | break lines in parbox cells |
| `cell-004` | auto break lines by `\\` |
| `cell-005` | simple multicolumn cells |
| `cell-006` | multicolumn cells with different `hspan` options |
| `cell-007` | simple mulitrow cells, with or without double hlines |
| `cell-008` | multirow cells with different `vspan` options and vertical alignment |
| `cell-009` | both multirow and multicolumn cells |
| `cell-010` | `cmd` option |
| `cell-011` | `stretch` option without struts |

# Test files for colors

| Test file   | What it tests |
| :---        | :---          |
| `color-001` | `bg`, `fg`, `font` and `measure` options for cells |
| `color-002` | `bg` options for rows and columns |
| `color-003` | `bg` and `hspan` options for multicolumn cells |
| `color-004` | `bg`, `vspan` and `valign` options for multirow cells  |
| `color-005` | `bg` option for both multirow and multicolumn cells |

# Test files for extra interfaces

| Test file   | What it tests |
| :---        | :---          |
| `extra-001` | `expand` outer option |
| `extra-002` | `odd`/`even`/`every` selectors and `U-Z` indexes (#576) |
| `extra-003` | mix child selectors with child indexes (#577) |
| `extra-004` | indexers and selectors for child tuples (#381) |
| `extra-005` | ids and classes in `\SetChild` command (#381) |

# Test files for hlines and vlines

| Test file    | What it tests |
| :---         | :---          |
| `hvline-001` | hlines and vlines with different styles and widths, `\hline` command |
| `hvline-002` | hlines and vlines in large tables |
| `hvline-003` | `leftpos`, `rightpos`, `abovepos`, `belowpos`, `\hline` and `\cline` |
| `hvline-004` | `text` |
| `hvline-005` | default rule widths and colors (#102, #172, #527) |

# Test files for libraries

| Test file     | What it tests |
| :---          | :---          |
| `library-001` | `booktabs` library and `\toprule`, `\midrule`, `\bottomrule` |
| `library-002` | `diagbox` library |
| `library-003` | `siunitx` library and table format |
| `library-004` | `siunitx` library and table alignment |
| `library-005` | `booktabs` library and trim options and extra commands |
| `library-006` | `counter` library |
| `library-007` | `siunitx` library and `s` column |
| `library-008` | `amsmath` library and its environments |
| `library-009` | `siunitx` library and multiline cells |
| `library-010` | `functional` library |
| `library-011` | `siunitx` library and `guard` option |
| `library-012` | `nameref` library |
| `library-013` | `zref` library |
| `library-014` | `amsmath` library and `delimiter` option |
| `library-015` | load the same library twice |
| `library-016` | `tikz` library for normal cells (#29) |
| `library-017` | `tikz` library for multispan cells (#29) |
| `library-018` | `tikz` library for corner nodes (#29) |
| `library-019` | load libraries in external files (#532) |
| `library-020` | `functional` library: evaluate inner specs (#106, #270) |
| `library-021` | `tikz` library: onepage long table (#29) |
| `library-022` | `tikz`: multipage table and `\ExpTblrChildClass` (#29, #381) |

# Test files for long tables

| Test file  | What it tests |
| :---       | :---          |
| `long-001` | long tables with `\NewTblrTheme`, `\SetTblrStyle`, `\TblrNote` |
| `long-002` | long tables with single row pages |
| `long-003` | long tables with `\pagebreak`, `\nopagebreak` |
| `long-004` | tall tables and `\TblrOverlap` command |
| `long-005` | long tables and blank page when using `\newpage` |
| `long-006` | long tables after `\section` commands |
| `long-007` | long tables and `pagebreak` option in `hborder` |
| `long-008` | long tables and first and last hlines in subtables |
| `long-009` | long tables and positive `\parskip` |
| `long-010` | long tables and `label=none` option |
| `long-011` | forbid page breaks inside multirow cells (#442) |

# Test files for rows and columns

| Test file    | What it tests |
| :---         | :---          |
| `rowcol-001` | row and column types `@`, `!`, `>`, `<` |
| `rowcol-002` | `rowsep` and `colsep` options |
| `rowcol-003` | `\\*[dimen]`, `\\\relax`, `\hline\relax` |
| `rowcol-004` | `X` columns with positive and negative coefficients |
| `rowcol-005` | `X` column errors from `\hfuzz=\maxdimen` setting (#445) |

# Test files for tables

| Test file   | What it tests |
| :---        | :---          |
| `table-001` | start `tabularray` in vertical mode |
| `table-002` | vertical alignment of tables |
| `table-003` | `baseline` outer option |
| `table-004` | table nesting |
| `table-005` | `stretch` option |
| `table-006` | `\SetTblrDefault` command |
| `table-007` | table in math and `mode` option |
| `table-008` | `rownum`, `colnum`, `rowcount`, `colcount` counters |
| `table-009` | `rulesep` option |
| `table-010` | space and `\par` tokens in cells |
| `table-011` | lists and `\color` with `measure=vbox` |
| `table-012` | `tabularray` in `align` environment |
| `table-013` | `\SetTblrInner` and `\SetTblrOuter` commands |
| `table-014` | throw errors for unknown inner/outer key names (#574) |

