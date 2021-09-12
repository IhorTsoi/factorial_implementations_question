# Benchmarks

## With input 100'000
|Name                            |          ips   |     average | deviation  |      median    |     99th % |
|--------------------------------|----------------|-------------|------------|----------------|------------|
|Factorial with reduce on ranges |         0.31   |      3.24 s |    ±0.36%  |       3.23 s   |      3.28 s|
|Factorial with reduce on chunks |         0.31   |      3.27 s |    ±0.25%  |       3.27 s   |      3.28 s|
|Factorial with reduce           |        0.110   |      9.13 s |    ±9.03%  |       8.81 s   |     11.00 s|

 Comparison:
| Name                               |  Result                          |
|------------------------------------|----------------------------------|
|Factorial with reduce on ranges     |     0.31                         |
|Factorial with reduce on chunks     |     0.31 - 1.01x slower +0.0303 s|
|Factorial with reduce               |    0.110 - 2.82x slower +5.89 s  |

 Memory usage statistics:
|Name                                | Memory usage                               |
|------------------------------------|--------------------------------------------|
|Factorial with reduce on ranges     |    3.82 MB                                 |
|Factorial with reduce on chunks     |   17.55 MB - 4.60x memory usage +13.73 MB  |
|Factorial with reduce               | 0.00009 MB - 0.00x memory usage -3.81527 MB|

**All measurements for memory usage were the same**

## With input 500'000
|Name                            |          ips   |     average | deviation   |      median    |     99th % |
|--------------------------------|----------------|-------------|-------------|----------------|------------|
|Factorial with reduce on chunks |      0.00724   |    2.30 min |    ±0.00%   |    2.30 min    |   2.30 min |
|Factorial with reduce on ranges |      0.00717   |    2.32 min |    ±0.00%   |    2.32 min    |   2.32 min |
|Factorial with reduce           |      0.00309   |    5.39 min |    ±0.00%   |    5.39 min    |   5.39 min |

Comparison:
| Name                               |  Result                            |
|------------------------------------|------------------------------------|
|Factorial with reduce on chunks     |  0.00724                           |
|Factorial with reduce on ranges     |  0.00717 - 1.01x slower +0.0211 min|
|Factorial with reduce               |  0.00309 - 2.34x slower +3.08 min  |

|Name                                | Memory usage                                |
|------------------------------------|---------------------------------------------|
|Factorial with reduce on chunks     |   87.74 MB                                  |
|Factorial with reduce on ranges     |   19.07 MB - 0.22x memory usage -68.66518 MB|
|Factorial with reduce               | 0.00009 MB - 0.00x memory usage -87.73924 MB|

**All measurements for memory usage were the same**
