#!/usr/bin/gnuplot
#
# Plotting the data of file plotting_data2.dat as a continuous line by removing
# blank lines with sed (http://de.wikipedia.org/wiki/Sed_(Unix))
#
# AUTHOR: Hagen Wierstorf

reset

# wxt
set terminal wxt size 350,262 enhanced font 'Verdana,10' persist
# png
#set terminal pngcairo size 350,262 enhanced font 'Verdana,10'
#set output 'plotting_data2_remove_empty_lines.png'

# color definitions
set border linewidth 1.5
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5 # --- blue

unset key

set ytics 1
set tics scale 0.75

set xrange [0:5]
set yrange [0:4]

plot '<sed "/^$/d" plotting_data2.dat' with linespoints ls 1
