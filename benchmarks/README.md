The `benchmark.lua` script compares running time between `tabularray` package in the repository and `tabularray` package in some TeX Live distribution.
And `benchmark.yml` publishes every benchmark result to `gh-pages` branch, so that you can view them in the following URLs:

+ for texlive 2022: https://lvjr.github.io/tabularray/benchmark/2022
+ for texlive 2023: https://lvjr.github.io/tabularray/benchmark/2023
+ for texlive 2024: https://lvjr.github.io/tabularray/benchmark/2024

The `benchmark.lua` script accepts an argument `<tlver>` (texlive version) , and writes benchmark data to `output-<tlver>.txt` file.