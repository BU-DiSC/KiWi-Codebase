# KiWi+ Codebase

To facilitate the second design goal concerning secondary range deletes, we introduce KiWi, a continuum of physical storage layouts the arranges the data on disk in an interweaved sorted order on the sort key and delete key. The details of the idea can be found in our [paper1](https://dl.acm.org/doi/pdf/10.1145/3318464.3389757) and [paper2](https://dl.acm.org/doi/pdf/10.1145/3599724).

How to run:

Just clone the repo and run `make`.

Let's consider an example run:
```
./emu_runner -i 1000000 -P 4096 -B 4 -E 1024 -T 10 -h 1 -c 0 -D 1000 -S 10000 -F 1000000 -s 1000 -f 10000 -N 1000000
```
### Understanding the input
i = 1000000 (Number of inserts)

P = 4096 (Buffer size in pages)

B = 4 (Entries in page)

E = 1024 (Entry size in bytes)

T = 10 (Size Ratio)

h = 1 (Delete tile size in pages. If h not specified (-1), the code will be in experiment mode. It will run for all values of h from 1 to P (multiplicative factor 2). Also, if h is not specified, the values D, S, F, s, f and N are don't care. They are tuned inside the code based on experiment selectivity)

c = 0 means no correlation in data (Which is default). 1 means sort key = delete key

D = 1000 (Delete all keys that have delete key < 1000)

S = 10000 (Start key for primary range query)

F = 1000000 (End key for primary range query)

s = 1000 (Start key for secondary range query)

f = 10000 (End key for secondary range query)

N = 1000000 (Iterations for point query)

Another tuning parameter is the KEY_DOMAIN_SIZE in workload_generator.cc 

Example of a small run:
```
./emu_runner -i 50 -P 4 -B 2 -E 32 -T 2 -h 1 -V 1
```

### Lethe+

X: Same h across tree or different h [0 for classical lethe, 1 for Kiwi-optimal, 2 for Kiwi+]

Example run:
```
./emu_runner -i 5000000 -P 8 -B 128 -E 1024 -T 10 -X 2 -I 20 -J 1000000 -K 1000000 -L 1000
```

I = 1 (count of secondary range delete query)

J = 1000000 (count of empty point queries)

K = 1000000 (count of non-empty point queries)

L = 10000 (count of short range queries)
