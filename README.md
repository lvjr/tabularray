# The LaTeX3 package `tabularray`

```
Caption     : Typeset tabulars and arrays with LaTeX3
Author      : Jianrui Lyu <tolvjr@163.com>
Collaborator: Yukai Chou <muzimuzhi@gmail.com>
CTAN Page   : https://ctan.org/pkg/tabularray
Repository  : https://github.com/lvjr/tabularray
Repository  : https://bitbucket.org/lvjr/tabularray
License     : The LaTeX Project Public License 1.3c
```

## 1\. Introduction

LaTeX tables are implemented using TeX commands such as `\halign`, `\noalign`, `\span`, and `\omit`.
In order to implement new features, many macro packages have modified the inner table commands inside LaTeX.
This makes package code complicated, difficult to maintain, and often conflicts with each other.

At present, the LaTeX3 programming layer is basically mature.
This `tabularray` package will discard the old `\halign` commands and directly use LaTeX3 functions to parse the table,
and then typeset the entire table.
Under the premise of being compatible with the basic syntax of LaTeX2 tables,
this macro package will completely separate the contents and styles of the table,
and the styles of the table can be completely set in key-value way.

## 2\. Contributing

To make the upcoming releases more stable, you are very welcome to test the latest package file in the repository.
To test it, you only need to download [`tabularray.sty`](https://github.com/lvjr/tabularray/raw/main/tabularray.sty)
and put it into the folder of your TeX documents.

If you want to make a contribution to `tabularray` package, you can get necessary informations from [CONTRIBUTING.md](https://github.com/lvjr/tabularray/blob/main/CONTRIBUTING.md) file.
The following are all contributors to the package:

  - [dbitouze](https://github.com/lvjr/tabularray/commits?author=dbitouze) (Denis Bitouzé)
  - [IsaacOscar](https://github.com/lvjr/tabularray/commits?author=IsaacOscar) (Isaac Oscar Gariano)
  - [jasperhabicht](https://github.com/lvjr/tabularray/commits?author=jasperhabicht) (Jasper Habicht)
  - [krlmlr](https://github.com/lvjr/tabularray/commits?author=krlmlr) (Kirill Müller)
  - [mbertucci47](https://github.com/lvjr/tabularray/commits?author=mbertucci47) (Matthew Bertucci)
  - [pkl97](https://github.com/lvjr/tabularray/commits?author=pkl97)
  - [qinglee](https://github.com/lvjr/tabularray/commits?author=qinglee) (Qing Lee)
  - [SainoNamkho](https://github.com/lvjr/tabularray/commits?author=SainoNamkho)
  - [Yodude2002](https://github.com/lvjr/tabularray/commits?author=Yodude2002)
