#!/usr/bin bash

echo "=============================== START of CORE script: custom_script.sh ================================="

# :nocov:

echo "This is NOT covered by Bashcov"

# :nocov:

function log1(){
	echo "OUTPUT of FUNCTION 1"
}

function log2(){
	echo "OUTPUT of FUNCTION 2"
	echo "OUTPUT of FUNCTION 2"
	echo "OUTPUT of FUNCTION 2"
}

function log3(){
	echo "OUTPUT of FUNCTION 3"
}

# :nocov:

function log4(){
	echo "OUTPUT of FUNCTION 4 is EXCLUDED from Bashcov's coverage"
}

# :nocov:

function log5(){
	echo "OUTPUT of FUNCTION 5"
}

function log6(){
	echo "OUTPUT of FUNCTION 6"
}

function log7(){
	echo "OUTPUT of FUNCTION 7"
}


file="custom_file"
touch "$file"

echo -e "This is a text to write in my file\n On two lines" > "$file"

while IFS= read -r line; do 
	echo "$line"
done < "$file"


echo "=============================== FINISH of CORE script: custom_script.sh ================================"