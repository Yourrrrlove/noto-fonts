set datafile separator ","
set output "TOP03-script-data.png"
set title "Weekly Issues for Noto Myanmar Scripts" font ",20"
set key left box
set term png
set boxwidth 0.8 absolute
set xtics rotate
set border 1
set style fill solid 1.00 border lt -1
set style histogram clustered gap 1 title textcolor lt -1
set style data histograms
set xtics border scale 1,0 nomirror autojustify norangelimit
unset ytics

set key off auto columnheader
set key right box
set yrange [0:*]
set offset 0,0,graph 0.05,0

set linetype 1 lc rgb '#2a3990'

plot 'Script-Myanmar-TOP03-googlefonts.noto-fonts.weekly-data.csv' using 2:xtic(1),\
         '' u ($0 + 0.5):2:2 with labels right offset 0,1
