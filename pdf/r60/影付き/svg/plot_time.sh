#!/bin/bash
#plot_time.plt中のgnuplotで処理するcsvファイル"csv_file"をディレクトリ内のファイル名で置き換え。
#plot_time.plt中のtime, countを置換し、横軸を時間軸として表示する。
#
for i in *.svg ; do
echo $i
rsvg-convert .$i.svg -f pdf -o ./$i.pdf
done
for i in ./*.csv.pdf ; do
tmp=`echo $i | cut -d '/' -f 3 | cut -d '.' -f 1`
mv ./pdf/$tmp.csv.pdf ./pdf/$tmp.pdf
done 
extractbb ./pdf/*.pdf
