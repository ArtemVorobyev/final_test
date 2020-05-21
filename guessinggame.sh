echo "welcome in my quessing game!!!"

filenumber=$(ls -A | wc -l)

echo "try to guess how many files are in the folder"

function asking {
	read response
	
	if [[ $response =~ [^0-9] ]]
	then 
	echo "it should be a number"
	
	elif [[ $response -gt $filenumber ]]
	then
	echo "you entered $response. No, It should be less. Try again!"
	elif [[ $response -lt $filenumber ]]
	then
	echo "you entered $response. No, it should be more. Try again!"
	elif [[ $response -eq $filenumber ]]
	then 
	echo "Congratulations!!! Correct"	
	fi
	
}

while [[ $response != $filenumber ]]
do
	asking
done
