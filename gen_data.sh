

head -1  household_power_consumption.txt > data.txt
cat household_power_consumption.txt | grep "^1/2/2007" >> data.txt
cat household_power_consumption.txt | grep "^2/2/2007" >> data.txt
