all:
	@echo Installing python dependencies
	make install
	@echo ""
	@echo Downloading datasets
	make download
	@echo ""
	@echo Starting jupyter
	make run

install:
	pip install -r requirements.txt

download:
	curl https://data.cityofchicago.org/api/views/ijzp-q8t2/rows.csv?accessType=DOWNLOAD -o ./data/reported-crimes.csv

run:
	jupyter lab

