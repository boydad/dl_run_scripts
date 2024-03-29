#!/bin/bash
case "${PMI_LOCAL_RANK}" in
0)
        exec numactl --physcpubind=24-31,56-63 --membind=3 $@
        ;;
1)
        exec numactl --physcpubind=16-23,48-55 --membind=2 $@
        ;;
2)
        exec numactl --physcpubind=8-15,40-47 --membind=1  $@
        ;;
3)
        exec numactl --physcpubind=0-7,32-39 --membind=0 $@
        ;;
esac
