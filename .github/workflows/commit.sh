# repo=shameemshah/action-test
# tag=$(curl -s -H "Authorization: Bearer $TOKEN"  "https://api.github.com/repos/$repo/releases/latest" | jq -r '.tag_name')
# read type tag_sha < <(echo $(curl -s -H "Authorization: Bearer $TOKEN" "https://api.github.com/repos/$repo/git/ref/tags/$tag" | 
#      jq -r '.object.type,.object.sha'))

# if [ $type == "commit" ]; then
#     echo "commit sha: $tag_sha"
# else
#     sha=$(curl -s -H "Authorization: Bearer $TOKEN" "https://api.github.com/repos/$repo/git/tags/$tag_sha" | jq '.object.sha')
#     echo "commit sha: $sha"
# fi
sha=test
PreviousSha=test
if [ $sha == $PreviousSha ]
then
  echo "Nothing changed from last release"
  exit 1
fi