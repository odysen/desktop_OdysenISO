
temp := $(shell mktemp -d)
all:
	@echo "Temp is $(temp)"
	mkodyseniso -v -w $(temp) . 
	@echo "Cleaning up"
	rm -rf $(temp)
