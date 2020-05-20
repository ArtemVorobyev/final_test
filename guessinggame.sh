echo "welcome in my quessing game!!!"

filenumber=$(ls | wc -l)

echo "try to guess how many files are in the folder"

function asking {
	read response
	
if [[ $response -gt $filenumber ]]
then
	echo "you entered $response. It's way to much. Try again!"
elif [[ $response -lt $filenumber ]]
then
	echo "you entered $response. No, it should be more. Try again!"
elif [[ $response -eq $filenumber ]]
then 
	echo "Congratulations!!! Correct"	
fi
}

while [[ $response -ne $filenumber ]]
do
	asking
done
