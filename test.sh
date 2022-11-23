#! /bin/bash 
ReleaseNotes=LeloSch,jkame,Kkashi,Wrath
IFS=','
read -ra arr <<< "$ReleaseNotes"
for val in "${arr[@]}";
do
  ReleaseNotes=`printf " - $val\n"`
  echo $ReleaseNotes
done

foo="one two three"
foo=( $foo ) # without quotes
foo="${foo[@]^}"
echo $foo