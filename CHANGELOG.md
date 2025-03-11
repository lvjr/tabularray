All notable changes to this package will be documented here.
The format is based on [Keep a Changelog](https://keepachangelog.com).

# [v2025A] - 2025-03-11

## Added

- Allow rollback to version 2024 by `\usepackage{tabularray}[=v2024]`
- Load `tabularray` libraries in external files ([#532])
- Evaluate inner specifications with `functional` library ([#270])
- Add `tikz` library for drawing below or above tables ([#29], [#552])
  - Create table node `table` for each table
  - Create cell nodes `<i>-<j>` for each cell
  - Create corner nodes `h<i>` for each hborder
  - Create corner nodes `v<j>` for each vborder
  - Create `tblrtikzbelow` and `tblrtikzabove` environments
- Add `measure=vstore` option to `varwidth` library ([#549])
- Add `\AddToTblrHook` and `\AddToTblrHookNext` commands ([#197])
- Add `\DeclareTblrKeys` and `\SetTblrKeys` commands ([#547])
- Add `\lTblrDefaultHruleWidthDim` and `\lTblrDefaultVruleWidthDim` ([#102], [#527])
- Add `\lTblrDefaultHruleColorTl` and `\lTblrDefaultVruleColorTl` ([#172])
- Add experimental public variable `\lTblrPortraitTypeTl` ([#29], [#197])
- Add experimental public variable `\lTblrRowHeadInt` ([#29], [#197])
- Add experimental public variable `\lTblrRowFootInt` ([#29], [#197])
- Add experimental public variable `\lTblrTablePageInt` ([#29], [#197])
- Add experimental public variable `\lTblrRowFirstInt` ([#29], [#197])
- Add experimental public variable `\lTblrRowLastInt` ([#29], [#197])
- Add experimental public variable `\lTblrCellBreakBool` ([#442])
- Add `\NewTblrChildIndexer` for selecting a child index ([#578])
- Allow mixing child indexes, indexers, and selectors ([#577])
- Add support for selecting cells with two dimensional indexes ([#381])
- Add support for two dimensional indexers and selectors ([#381])
- Add `\lTblrChildIndexTl` for child indexers ([#578])
- Add `\lTblrChildHtotalInt` and `\lTblrChildVtotalInt` for indexers and selectors ([#381])
- Add `\SetChild` commands for setting ids and classes ([#381])
- Add `\ExpTblrChildId` for expanding index from an id ([#381])
- Add `\ExpTblrChildClass` for expanding indexes from a class ([#381])
- Add child selector `every` for selecting indexes in an arithmetic sequence ([#576])
- Add benchmark tests and publish results to `gh-pages` branch ([#480])
- Add new chapter "Experimental Interfaces" in the manual
- Document how to use color models with `functional` library ([#106])
- Document that double blank lines around cells are not supported ([#282])
- Document that math cells cannot include multiline math ([#491], [#492])

## Changed

- Support old TeX Live releases published within previous three years only
- Use linked property lists to make `tabularray` run much faster ([#541])
- Avoid using `l3regex` to make `tabularray` run much faster ([#553])
- Recognize spaces between `\\` and `*` or `[<length>]` ([#526])
- Keep braces when splitting table body to cells ([#501])
- Keep braces when extracting table commands from cells ([#501])
- Make `measure` setting apply to subtables in `varwidth` library
- Set `measure=vbox` as default in `varwidth` library ([#540])
- Make `hook` library depend on `varwidth` library ([#179])
- Set `measure=vstore` as default in `hook` library ([#179])
- Forbid page breaks in the middle of multirow cells ([#442])
- Rename all key paths and add `tabularray` prefix to them ([#547])
- Raise an error for using an undefined template in `\SetTblrTemplate` ([#517])
- Replace `x`-type expansions with `e`-type expansions ([#560])
- Optimize internal structure of child index lists ([#575])
- Make local definitions for child selectors ([#381])
- Make indexer `Z` accept an optional argument for a negative index ([#509], [#578])
- Ensure the converted index of `U`/`V`/`W`/`X`/`Y`/`Z` is positive ([#385], [#578])
- Load `ninecolors` with `package/xcolor/after` hook ([#490])
- Rename `\l_tblr_childs_clist` as `\lTblrChildClist` ([#249], [#527])
- Rename `\l_tblr_childs_total_tl` as `\lTblrChildTotalInt` ([#249], [#527])
- Rename `\lTblrCellRowSpanTl` as `\lTblrCellRowSpanInt` ([#527])
- Rename `\lTblrCellColSpanTl` as `\lTblrCellColSpanInt` ([#527])
- Rename `\lTblrCellAboveBorderWidthTl` as `\lTblrCellAboveBorderWidthDim` ([#527])
- Rename `\lTblrCellBelowBorderWidthTl` as `\lTblrCellBelowBorderWidthDim` ([#527])
- Rename `\lTblrCellLeftBorderWidthTl` as `\lTblrCellLeftBorderWidthDim` ([#527])
- Rename `\lTblrCellRightBorderWidthTl` as `\lTblrCellRightBorderWidthDim` ([#527])
- Replace `\verb` commands with meaningful commands in the manual
- Improve documentation for `booktabs` library ([#443])

## Deprecated

- Deprecate `\DefTblrTemplate` in favor of `\DeclareTblrTemplate` ([#563])
- Deprecate `\NewColumnType` in favor of `\NewTblrColumnType` ([#421])
- Deprecate `\NewRowType` in favor of `\NewTblrRowType` ([#421])
- Deprecate `\NewColumnRowType` in favor of `\NewTblrColumnRowType` ([#421])
- Deprecate `\NewTableCommand` in favor of `\NewTblrTableCommand` ([#421])
- Deprecate `\NewContentCommand` in favor of `\NewTblrContentCommand` ([#421])
- Deprecate `\NewDashStyle` in favor of `\NewTblrDashStyle` ([#421])
- Deprecate `\NewChildSelector` in favor of `\NewTblrChildSelector` ([#579])
- Deprecate `\tablewidth` in favor of `\lTblrTableWidthDim` ([#527])
- Deprecate `\g_tblr_level_int` in favor of `\gTblrLevelInt` ([#527])

## Fixed

- Fix `bad register code` errors from huge tables ([#305])
- Fix measuring phase of `\lTblrMeasuringBool` ([#179])
- Fix expansion errors with border text ([#303])
- Fix undeclared variables and inconsistent assignments ([#22])
- Fix `X`-column errors from `\hfuzz=\maxdimen` setting ([#445])
- Fix misspelled variable name of `\lTblrCellRightBorderColorTl` ([#476])
- Fix missing `tblr` prefixes in some variable names ([#469])
- Throw an error for an unknown inner key name ([#574])
- Suppress "table-width-too-small" warning if table width is not set ([#497])

## Removed

- Drop support for TeX Live 2020 and 2021
- Drop support for end index in `odd` and `even` selectors ([#580])
- Remove deprecated inner key `verb` ([#530])
- Remove undocumented `\rulewidth` ([#102], [#527])

# [v2024A] - 2024-02-16

## Added

- Add experimental `hook` and `html` libraries (#197)
- Expand multiple macros with outer key `expand` (#77)

## Changed

- Only run code of the same library once (#364)
- Update rollback release 2021 to version 2021R

## Fixed

- Fix undefined props with latest l3kernel (#22, #474)
- Fix incorrect `longtblr` pagebreaks before sectioning commands (#361)

# [v2023A] - 2023-03-01

## Added

- Add experimental `\lTblrMeasuringBool` for measuring phase (#179)
- Allow to evaluate all functions in the table body (#254)
- Add `\empty` as a table command (#328)
- Allow to define `\relax` as a table command (#328)
- Extend from `X-Z` to `U-Z` for the last children (#353)
- Add new chapter "Tips and Tricks" in manual

## Deprecated

- Mark inner key `verb` as obsolete for future removal (#104, #294, #358, #370)

## Fixed

- Fix vline positions when `belowpos=0` (#272)
- Fix wrong `capcont` template when `label=none` (#335)

# [v2022D] - 2022-11-01

## Added

- Add inner key `delimiter` and its `left` and `right` subkeys (#300)
- Add `\tblrcontheadname` and `\tblrcontfootname` for `babel` translations (#167)
- Allow setting multiple environments at the same time (#37)
- Add `nameref` and `zref` libraries (#256)

## Fixed

- Fix wrong delimiter positions of delimited matrices in `amsmath` library (#300)
- Fix a mistake in storing styles of elements (#286)

# [v2022C] - 2022-07-01

## Changed

- Avoid adding struts before and after cell text (#265)
- Make `\pagebreak` and `\nopagebreak` accept an optional argument (#259)
- Restore table commands before building cells (#31)
- Share `rownum` and `colnum` counters (#269, davidcarlisle/dpctex#33)
- Replace TeXSE with TopAnswersTeX in support sites

## Fixed

- Fix wrong calculation of border sizes (#260)
- Fix extra line breaks when cells begin or end with CJK punctuations (#145, #257)

# [v2022B] - 2022-06-01

**It is in Overleaf installation of [TeX Live 2022](https://www.overleaf.com/blog/tex-live-2022-now-available).**

## Added

- Provide `functional` library for doing functional programming in tables (#81)
  + Add outer specification `evaluate` for file inputting and table building
  + Add inner specification `process` for cell summing and conditional styling
  + Add `\cellGetText`, `\cellSetText`, `\cellSetStyle`, `\rowSetStyle`, `\columnSetStyle`
- Add `guard` option in `siunitx` library (#175)

## Fixed

- Make `tabularray` correctly nest in `align` environment (#143)
- Fix wrong page breaks of long tables with positive `\parskip` (#203)
- Fix missing first and last hlines in subtables (#227)

# [v2022A] - 2022-03-01

## Added

- Allow rollback to version 2021 by `\usepackage{tabularray}[=v2021]` (#28)
- Add `longtabs` and `talltabs` environments in `booktabs` library (#170)
- Add `stretch=-1` option for removing vertical space around lists (#99)
- Add an optional argument to `odd` and `even` selectors (#105)
- Add new interfaces `hborder` and `vborder` (#183)
- Add `pagebreak=yes/no/auto` options to `hborder` (#165)
- Add `baseline` key for aligning table at any row (#72)
- Update change log on wiki page of the project (#95)

## Changed

- Make justifying the default in table cells (#69)
- Make justifying the default in table head/foot (#174)
- Make \TblrNote overlap to the right side by default (#198)
- Restore paragraph parameters in table head/foot (#181)
- Don't add `headsep`/`footsep` if table head/foot is empty (#86)
- Normalize `\NewSomeThing` and `\DefSomeThing` commands (#115)
- Rename `README` as `README.txt` and add `CONTRIBUTING.txt` (#178)

## Fixed

- Fix multiline nonnumeric cells in `siunitx`'s `S` columns (#90)
- Fix wrong cell widths when using `font=\boldmath` option (#137)
- Fix `@` expression in math mode (#138)
- Fix vlines that cross double hlines caused by span cells (#141)
- Fix wrong counters in math mode for `counter` library (#154)
- Fix wrong cell widths caused by `counter` library (#162)
- Fix wrong widths of enumerate cells caused by `hyperref` (#196)

## Removed

- Remove `\firsthline` and `\lasthline` commands (#72)
- Remove `\multicolumn` and `\multirow` commands (#28)

# [v2021Q] - 2021-12-01

## Added

- Add missing `\therownum`, `\thecolnum`, `\therowcount`, `\thecolcount` (#129)

## Changed

- Use `\thetable` in `caption-lot` template (#126)

## Fixed

- Fix missing last row (#114)

# [v2021P] - 2021-10-01

## Added

- Add `counter` library for manipulating LaTeX counters (#89)
- Add `mode` option for cells/columns/rows (#45)
- Allow to modify `fg` settings (#62)
- Allow to modify `cmd` settings (#57)
- Define `+array`, `+cases`, `+pmatrix`, etc with `amsmath` library (#87)
- Update `endpos` and `expand` options in the manual (#92, #110)

## Changed

- Use `\tablename` in `caption-tag` templates (#103)

## Fixed

- Fix lost lines in some long tables in PDF readers (#88)
- Fix an error caused by `verb` option (#112)

# [v2021N] - 2021-09-01

## Added

- Add crossing and trimming options for hlines and vlines (#55)
- Add trim options for `\cmidrule` command (#41)
- Add vertical spaces below and above booktabs rules (#79)
- Add `\morecmidrules`, `\specialrule` and `\addlinespace` for booktabs
- Add `varwidth` library for using enumerate inside cell text (#36)
- Add simple template for caption and capcont (#70)

## Changed

- Change pdfborder setting only inside `tblr` environment (#33)
- Remove `\par` tokens at the beginning and at the end of cell text (#32)

## Fixed

- Fix bug in including `\linewidth` graphics in `X` columns (#80)
- Fix disappeared borders around colored cells in Adobe Acrobat (#76)
- Fix wrong span widths with `hspan=minimal` option (#71)
- Fix bug with tabularray and shortverb `|` (#58)
- Fix bug with extra space at the end of a multiline cell (#48)
- Fix blank page in long tables when using `\newpage` command (#39)
- Fix blank page after `\section` starts at the top of a page (#42)

# [v2021M] - 2021-08-01

## Added

- Expand every occurrence of the specified macro once (#18, #23)
- Provide some table commands (T-F-S/csvsimple#12)
- Use `X`, `Y`, `Z` for the last three childs in child selectors (#24)
- Support `\verb` command via `verb` option (#13)
- Implement `s` column for `siunitx` library
- Implement `\\*`, `\nopagebreak` and `\pagebreak` (#30)
- Define `empty` template for every elements
- Implement `\caption[]{text}` and `\caption*{text}` (#25)
- Implement floatable tall tables (#26)

## Fixed

- Fix empty table pages with only one row (#38)

# [v2021L] - 2021-07-01

**It is in Overleaf installation of [TeX Live 2021](https://www.overleaf.com/blog/tex-live-2021-now-available).**

## Added

- Add full support for long tables with `longtblr` environment
- Add templates for caption and continuation text and table footnotes
- Add templates `firsthead`, `middlehead`, `lasthead`, `firstfoot`, `middlefoot`, `lastfoot` (#12)
- Add `\DefTblrTemplate`, `\SetTblrTemplate`, `\UseTblrTemplate` and `\ExpTblrTemplate`
- Add `\SetTblrStyle` for setting color, font, alignment, parindent and hangindent
- Add `\NewTblrTheme` command for defining new themes for long tables
- Add `\SetTblrOuter` command for setting outer specifications
- Add `\NewTblrEnviron` command for defining new `tblr` environments
- Add `\UseTblrLibrary` command and `booktabs`, `diagbox`, `siunitx` libraries
- Provide `\leftsep`, `\rightsep`, `\abovesep` and `\belowsep` for cell text
- Add options for distributing span sizes evenly to columns or rows (#3)
- Add `preto`/`appto`/`cmd` options for cells/rows/columns (#18)

## Changed

- Replace `\SetTblrDefault` with `\SetTblrInner` for setting inner specifications
- Update the manual and add three chapters

## Fixed

- Keep row height and column widths even if all cells in them are spanned (#15)
- Fix font option for multiline cells (#17)
- Fix problem with `\relax` after `\\` or `\hline` (#20)

# [v2021K] - 2021-06-05

## Added

- Allow to change `rulesep`
- Add `fg` and `font` options
- Include old version as `tabularray-2021.sty`

## Changed

- Make it run much faster by using less property lists

## Fixed

- Fix child selectors with more than nine childs

# [v2021J] - 2021-05-25

## Added

- Document `\SetTblrTracing` command

## Changed

- Compatible with TeX Live 2020

## Fixed

- Avoid "need 0.0pt more!" warnings

# [v2021H] - 2021-05-13

## Added

- First public release

[#22]: https://github.com/lvjr/tabularray/issues/22
[#29]: https://github.com/lvjr/tabularray/issues/29
[#102]: https://github.com/lvjr/tabularray/issues/102
[#106]: https://github.com/lvjr/tabularray/issues/106
[#172]: https://github.com/lvjr/tabularray/issues/172
[#179]: https://github.com/lvjr/tabularray/issues/179
[#197]: https://github.com/lvjr/tabularray/issues/197
[#249]: https://github.com/lvjr/tabularray/issues/249
[#270]: https://github.com/lvjr/tabularray/issues/270
[#282]: https://github.com/lvjr/tabularray/issues/282
[#303]: https://github.com/lvjr/tabularray/issues/303
[#305]: https://github.com/lvjr/tabularray/issues/305
[#381]: https://github.com/lvjr/tabularray/issues/381
[#385]: https://github.com/lvjr/tabularray/pull/385
[#421]: https://github.com/lvjr/tabularray/issues/421
[#442]: https://github.com/lvjr/tabularray/issues/442
[#443]: https://github.com/lvjr/tabularray/pull/443
[#445]: https://github.com/lvjr/tabularray/issues/445
[#469]: https://github.com/lvjr/tabularray/issues/469
[#476]: https://github.com/lvjr/tabularray/issues/476
[#480]: https://github.com/lvjr/tabularray/issues/480
[#490]: https://github.com/lvjr/tabularray/issues/490
[#491]: https://github.com/lvjr/tabularray/issues/491
[#492]: https://github.com/lvjr/tabularray/issues/492
[#497]: https://github.com/lvjr/tabularray/pull/497
[#501]: https://github.com/lvjr/tabularray/issues/501
[#509]: https://github.com/lvjr/tabularray/pull/509
[#517]: https://github.com/lvjr/tabularray/pull/517
[#526]: https://github.com/lvjr/tabularray/issues/526
[#527]: https://github.com/lvjr/tabularray/issues/527
[#530]: https://github.com/lvjr/tabularray/issues/530
[#532]: https://github.com/lvjr/tabularray/issues/532
[#540]: https://github.com/lvjr/tabularray/issues/540
[#541]: https://github.com/lvjr/tabularray/issues/541
[#547]: https://github.com/lvjr/tabularray/issues/547
[#549]: https://github.com/lvjr/tabularray/issues/549
[#552]: https://github.com/lvjr/tabularray/issues/552
[#553]: https://github.com/lvjr/tabularray/issues/553
[#560]: https://github.com/lvjr/tabularray/issues/560
[#563]: https://github.com/lvjr/tabularray/issues/563
[#574]: https://github.com/lvjr/tabularray/issues/574
[#575]: https://github.com/lvjr/tabularray/issues/575
[#576]: https://github.com/lvjr/tabularray/issues/576
[#577]: https://github.com/lvjr/tabularray/issues/577
[#578]: https://github.com/lvjr/tabularray/issues/578
[#579]: https://github.com/lvjr/tabularray/issues/579
[#580]: https://github.com/lvjr/tabularray/issues/580

[Unreleased]: https://github.com/lvjr/tabularray/compare/2024A...HEAD
[v2025A]: https://github.com/lvjr/tabularray/compare/2024A...2025A
[v2024A]: https://github.com/lvjr/tabularray/compare/2023A...2024A
[v2023A]: https://github.com/lvjr/tabularray/compare/2022D...2023A
[v2022D]: https://github.com/lvjr/tabularray/compare/2022C...2022D
[v2022C]: https://github.com/lvjr/tabularray/compare/2022B...2022C
[v2022B]: https://github.com/lvjr/tabularray/compare/2022A...2022B
[v2022A]: https://github.com/lvjr/tabularray/compare/2021Q...2022A
[v2021Q]: https://github.com/lvjr/tabularray/compare/2021P...2021Q
[v2021P]: https://github.com/lvjr/tabularray/compare/2021N...2021P
[v2021N]: https://github.com/lvjr/tabularray/compare/2021M...2021N
[v2021M]: https://github.com/lvjr/tabularray/compare/2021L...2021M
[v2021L]: https://github.com/lvjr/tabularray/compare/2021K...2021L
[v2021K]: https://github.com/lvjr/tabularray/compare/2021J...2021K
[v2021J]: https://github.com/lvjr/tabularray/compare/2021H...2021J
[v2021H]: https://github.com/lvjr/tabularray/compare/2021G...2021H
