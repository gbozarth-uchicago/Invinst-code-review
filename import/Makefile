## Header## 

.PHONY: all clean 

all: output/victim_export.csv

clean:
				rm output /*

output/victim_export.csv:\
				src/import.R \
				input/victim_export.xlsx
		Rscript --vanilla $<
                