#!/usr/bin/env bash
function guessinggame()
{
nfiles=$(ls | wc -l)
while [[ 1 -eq 1 ]]
do
read -p "Enter the number files in current directory: " number
echo $number
if [[ $number -eq $nfiles ]];
then
echo "Congratulations"
exit
elif [[ $number -gt $nfiles ]];
then
echo "Number is larger"
else
echo "Smaller"
fi
echo "Try again"
done
}
guessinggame

