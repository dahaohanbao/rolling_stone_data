# Driver script
# Fang Yang, Dec 2017
# Completes analysis on rolling stone data
#
# Usage:
# make all
# make clean

# run all analysis
all: doc/final_report.md

#make data
data/cleaned_rolling_stone.csv: data/albumlist.csv src/clean.R
	Rscript src/clean.R data/albumlist.csv data/cleaned_rolling_stone.csv

results/summary.csv: data/cleaned_rolling_stone.csv src/summary.R
	Rscript src/summary.R data/cleaned_rolling_stone.csv results/summary.csv

results/figure/plot1.png: data/albumlist.csv src/plot1.R
	Rscript src/plot1.R data/albumlist.csv results/figure/plot1.png

results/figure/plot2.png: data/cleaned_rolling_stone.csv src/plot2.R
	Rscript src/plot2.R data/cleaned_rolling_stone.csv results/figure/plot2.png

results/figure/plot3.png: data/cleaned_rolling_stone.csv src/plot3.R
	Rscript src/plot3.R data/cleaned_rolling_stone.csv results/figure/plot3.png

doc/final_report.md: src/final_report.Rmd data/cleaned_rolling_stone.csv results/summary.csv results/figure/plot1.png results/figure/plot2.png results/figure/plot3.png
	Rscript -e "ezknitr::ezknit('src/final_report.Rmd', out_dir='doc')"


#delete files
clean:
	rm -f data/cleabed_rolling_stone.csv
	rm -f results/summary.csv
	rm -f results/figure/plot1.png
	rm -f results/figure/plot2.png
	rm -f results/figure/plot3.png
	rmdir results/figure
	rm -f doc/final_report.md doc/final_report.html
	rmdir doc/final_report
