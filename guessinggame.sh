echo "welcome in my quessing game!!!"

filenumber=$(ls -A | wc -l)

echo "try to guess how many files are in the folder"

function asking {
	read response

	mod_response=$(echo $response | sed 's/^0*//')
	
	if [[ $mod_response =~ [^0-9] ]]
	then 
	echo "it should be a number"
	
	elif [[ $mod_response -gt $filenumber ]]
	then
	echo "you entered $mod_response. No, It should be less. Try again!"
	elif [[ $mod_response -lt $filenumber ]]
	then
	echo "you entered $mod_response. No, it should be more. Try again!"
	elif [[ $mod_response -eq $filenumber ]]
	then 
	echo "Congratulations!!! Correct"	
	fi
	
}

while [[ $mod_response != $filenumber ]]
do
	asking
done
