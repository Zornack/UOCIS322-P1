# Makefile for the simple page server.
#

# Nothing to install for this project.
install:
	echo "Nothing to install"

start:
	@if [[ -f "credentials.ini" ]]; then mv credentials.ini pageserver/credentials.ini; fi; bash start.sh

stop:
	@bash stop.sh

run:
	@make -s start

clean:
	rm -f *.pyc
	rm -rf __pycache__
