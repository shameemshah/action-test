#! /bin/bash 
ReleaseNotes=LeloSch,jkame,KFFFkashi,Wrath
IFS=','
read -ra arr <<< "$ReleaseNotes"
for val in "${arr[@]}";
do
  ReleaseNotes=`printf " -  $val\n"`
  echo $ReleaseNotes
done
