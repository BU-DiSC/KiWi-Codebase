#!/bin/sh

I=1000000

P=4096
B=4
E=1024
T=10
N=1000000

Domain=1000000000

delete_key1=`expr $I / 7`
delete_key2=`expr $I / 30`

#for 1% range query
range_interval1=`expr $Domain / 100`
range_start_index1=1000000
range_end_index1=`expr $range_start_index1 + $range_interval1`

#for 0.1% range query
range_interval2=`expr $Domain / 1000`
range_start_index2=1000000
range_end_index2=`expr $range_start_index2 + $range_interval2`


#for 1% sec range query
sec_range_interval1=`expr $I / 100`
sec_range_start_index1=10000
sec_range_end_index1=`expr $sec_range_start_index1 + $sec_range_interval1`

#for 0.1% sec range query
sec_range_interval2=`expr $I / 1000`
sec_range_start_index2=10000
sec_range_end_index2=`expr $sec_range_start_index2 + $sec_range_interval2`

# echo $delete_key1
# echo $delete_key2

# echo $range_start_index1
# echo $range_end_index1
# echo $range_start_index2
# echo $range_end_index2

# echo $sec_range_start_index1
# echo $sec_range_end_index1
# echo $sec_range_start_index2
# echo $sec_range_end_index2

# rm -rf out.csv

# echo "Delete tile size", "(Delete) KEY", "Full Drop", "Partial Drop", "Impossible Drop", "(Range) KEYs", "Occurances", "(Sec Range) KEYs", "Occurances", "(Point) Iterations", "Sum_Page_Id", "Avg_Page_Id", "Found", "Not Found" >> out.csv

# ./emu_runner -i $I -P $P -B $B -E $E -T $T -D $delete_key1 -S $range_start_index -F $range_end_index -s $sec_range_start_index -f $sec_range_end_index -N $N




# while [ $a -le $page ]
# do
#    # echo $a
#    ./emu_runner -i 1000 -P $page -B 2 -E 32 -T 2
#    a=`expr $a \* 2`
# done




# ./emu_runner -i 100 -P $page -B 2 -E 32 -T 2 -h $a
# for x in 1 2 4
# do
#     ./emu_runner -i 100 -P 4 -B 2 -E 32 -T 2 -h $x
# done