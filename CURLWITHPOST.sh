curl -X POST \
  https://api.bitbucket.org/2.0/repositories/petcoalm/$PROJECTNAME \
 -u $BITBUCKET_USER:$BITBUCKET_PASSWORD
  -H 'content-type: application/json' \
  -d '{
  "has_wiki": true,
  "is_private": true, 
  "project": {
        "key": "$PROJECTKEY",
        "fork_policy": "no_public_forks",
        "has_wiki": true,
        "is_private": true,
        "name": "$PROJECTNAME"
    }
}'
