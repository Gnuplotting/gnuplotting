#!/usr/bin/gnuplot
#
# Plotting a heat map on Gnuplots world.dat
#
# AUTHOR: Hagen Wierstorf
# VERSION: gnuplot 4.6 patchlevel 0

reset

# wxt
set terminal wxt size 350,262 enhanced font "Helvetica,10" persist
# png
#set terminal pngcairo size 350,262 enhanced font 'Verdana,10'
#set output 'heatmap2d_grid.png'

# color definitions
set border lw 1.5
set style line 1 lc rgb 'black' lt 1 lw 1

set rmargin screen 0.85

unset key
set tics scale 0
set xtics
set ytics
set cbrange [-5:10]
set xrange[75:179]
set yrange[-70:15]
set format '%g°'
set palette defined (0 "blue",17 "#00ffff",33 "white",50 "yellow",66 "red",\
    100 "#990000",101 "grey")
set style line 2 lc rgb '#808080' lt 0 lw 1
set grid front ls 2
plot 'temperature.dat' u 2:1:3 w image, \
     'world_50m.txt' with lines linestyle 1
