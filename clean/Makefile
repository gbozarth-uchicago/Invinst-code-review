## Header## 

.PHONY: all clean 

all: output/victim_export.csv

clean:
	rm output/*

output/victim_export.csv: \
		src/clean.R \
		../import/output/victim_export.csv
	Rscript --vanilla $<

# done
                
