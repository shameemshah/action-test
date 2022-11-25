tag=$(curl -s -H "Authorization: Bearer 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" "https://api.github.com/repos/shameemshah/action-test/releases/latest" | jq -r '.tag_name')
read type tag_sha < <(echo $(curl -s -H "Authorization: Bearer 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" "https://api.github.com/repos/shameemshah/action-test/git/ref/tags/$tag" | 
     jq -r '.object.type,.object.sha
if [ $type == "commit" ]; then
    echo "commit sha: $tag_sha"
else
    sha=$(curl -s -H "Authorization: Bearer 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" "https://api.github.com/repos/shameemshah/action-test/git/tags/$tag_sha" | jq '.object.sha')
fi