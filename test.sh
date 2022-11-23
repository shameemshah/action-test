#! /bin/bash 
ReleaseNotes=LeloSch,jkame,Kakashi,Wrath
IFS=','
read -ra arr <<< "$ReleaseNotes"
for val in "${arr[@]}";
do
  ReleaseNotes=$val
 echo "- ${ReleaseNotes^}"
 ReleaseNotes=`echo "- ${ReleaseNotes^}"`
done