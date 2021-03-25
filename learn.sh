
RepositoryName="samples/my-image"
RepositoryTags=('a' 'b' 'c')
colon=":"
ImagestoKeep=1

echo "hello"
if ((${#RepositoryTags[@]}>$ImagestoKeep))
then
    for item in "${RepositoryTags[@]}"; do            
      ImageName="$RepositoryName$colon${item}"
      echo $ImageName  
    done
else
   echo "No surplus images to delete."
fi

