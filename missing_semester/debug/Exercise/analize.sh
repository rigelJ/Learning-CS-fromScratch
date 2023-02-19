#!/bin/bash

####[1]请使用 cProfile 和 line_profiler 来比较插入排序和快速排序的性能,然后使用 memory_profiler 来检查内存消耗####

##cProfile##

python -m cProfile -s time sorts.py | grep sorts.py

##line profiler##

kernprof -lv sorts.py

##memory_profiler##

python3 -m memory_profiler sorts.py 

####[2]在fib.py中fib0 被调用了多少次？####

pycallgraph graphviz -- ./fib.py

####[3]通过进程的PID查找相应的进程####

python -m http.server 4444

lsof | grep LISTEN

kill 57563

####[4]执行 stress -c 3 并使用htop 对 CPU 消耗进行可视化####

stress -c 3

taskset --cpu-list 0,2 stress -c 3

