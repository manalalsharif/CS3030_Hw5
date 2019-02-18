
#make the temp folder
if [[ ! -d temp ]]; then
	echo "making temp folder directory :)"
`mkdir $PWD/temp`
else
		echo "file temp exists already :("

fi

#unzip the file  and untar in one command. why pipe it?
echo "extracting tar file for ${1} :)"
tar -xzf ${1} -C $PWD/temp

#check for error, log it too
if [[ $? != 0 ]]; then
	echo "there was an error in gunzip.sh :(."
else
	echo "gunzip.sh extraction complete :)"
fi

echo "Setting the folder"
FOLDER=$PWD/temp/*.csv
FILE=$PWD/temp/tempFile.csv
OUTPUT=$PWD/temp/output.txt


echo $PWD
echo "Placing all in one file "
`cat $PWD/temp/* >> output.csv`
echo "Placing complete :)"
#for f in ${FOLDER} 
#do
	#echo "Copying $f to the big file in $PWD/temp/tempFile.csv :)"
	

#done

