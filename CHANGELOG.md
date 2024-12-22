All notable changes to this package will be documented here.
The format is based on [Keep a Changelog](https://keepachangelog.com).

# [Unreleased]

## Added

- Load `tabularray` libraries in external files ([#532])
- Evaluate inner specifications with `functional` library ([#270])
- Document how to use color models with `functional` library ([#106])
- Add `tikz` library for drawing on short or tall tables ([#29], [#552])
  - Create cell nodes `i-j` and table node `table` for each table
  - Create `tblrtikzbefore` and `tblrtikzafter` environments
- Add `measure=vstore` option to `varwidth` library ([#549])
- Add `\AddToTblrHook` and `\AddToTblrHookNext` commands ([#197])
- Add `\DeclareTblrKeys` and `\SetTblrKeys` commands ([#547])
- Allow `U`/`V`/`W`/`X`/`Y`/`Z` in from-part of `odd`/`even` selector ([#385])
- Ensure the converted index of `U`/`V`/`W`/`X`/`Y`/`Z` is positive ([#385])
- Add benchmark tests and publish results to `gh-pages` branch ([#480])
- Add new chapter "Experimental Interfaces" in the manual
- Document math cells cannot include multiline math ([#491], [#492])

## Changed

- Support old TeX Live releases published in previous three years
- Make `measure` setting apply to subtables in `varwidth` library
- Set `measure=vbox` as default in `varwidth` library ([#540])
- Make `hook` library depend on `varwidth` library ([#179])
- Set `measure=vstore` as default in `hook` library ([#179])
- Rename all key paths and add `tabularray` prefix to them ([#547])
- Raise an error for using an undefined template in `\SetTblrTemplate` ([#517])
- Replace `x`-type expansions with `e`-type expansions ([#560])
- Replace `\verb` commands with meaningful commands in the manual
- Improve documentation for `booktabs` library ([#443])

## Deprecated

## Fixed

- Fix expansion errors with border text ([#303])
- Fix undeclared variables and inconsistent assignments ([#22])
- Fix `X`-column errors from `\hfuzz=\maxdimen` setting ([#445])
- Fix misspelled variable name of `\lTblrCellRightBorderColorTl` ([#476])
- Fix missing `tblr` prefixes in some variable names ([#469])
- Suppress "table-width-too-small" warning if table width is not set ([#497])

## Removed

- Drop support for TeX Live 2020 and 2021
- Remove deprecated inner key `verb` ([#530])

# [v2024A] - 2024-02-16

# [v2023A] - 2023-03-01

# [v2022D] - 2022-11-01

# [v2022C] - 2022-07-01

# [v2022B] - 2022-06-01

# [v2022A] - 2022-03-01

# [v2021Q] - 2021-12-01

# [v2021P] - 2021-10-01

# [v2021N] - 2021-09-01

# [v2021M] - 2021-08-01

# [v2021L] - 2021-07-01

# [v2021K] - 2021-06-05

# [v2021J] - 2021-05-25

# [v2021H] - 2021-05-13


[#22]: https://github.com/lvjr/tabularray/issues/22
[#29]: https://github.com/lvjr/tabularray/issues/29
[#106]: https://github.com/lvjr/tabularray/issues/106
[#179]: https://github.com/lvjr/tabularray/issues/179
[#197]: https://github.com/lvjr/tabularray/issues/197
[#270]: https://github.com/lvjr/tabularray/issues/270
[#303]: https://github.com/lvjr/tabularray/issues/303
[#385]: https://github.com/lvjr/tabularray/pull/385
[#443]: https://github.com/lvjr/tabularray/pull/443
[#445]: https://github.com/lvjr/tabularray/issues/445
[#469]: https://github.com/lvjr/tabularray/issues/469
[#476]: https://github.com/lvjr/tabularray/issues/476
[#480]: https://github.com/lvjr/tabularray/issues/480
[#491]: https://github.com/lvjr/tabularray/issues/491
[#492]: https://github.com/lvjr/tabularray/issues/492
[#497]: https://github.com/lvjr/tabularray/pull/497
[#517]: https://github.com/lvjr/tabularray/pull/517
[#530]: https://github.com/lvjr/tabularray/issues/530
[#532]: https://github.com/lvjr/tabularray/issues/532
[#540]: https://github.com/lvjr/tabularray/issues/540
[#547]: https://github.com/lvjr/tabularray/issues/547
[#549]: https://github.com/lvjr/tabularray/issues/549
[#552]: https://github.com/lvjr/tabularray/issues/552
[#560]: https://github.com/lvjr/tabularray/issues/560

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
