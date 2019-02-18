#variable for what file they want
fileToGet=${1}
#retrives the file from server
wget -r http://icarus.cs.weber.edu/~hvalle/cs3030/MOCK_DATA_$fileToGet.tar.gz

#check to see if there is error
if [[ $? != 0 ]]; then
	#need to log this error
	echo "there was an error code in wget.sh :(."
else
	echo "wget.sh complete :)"
fi
