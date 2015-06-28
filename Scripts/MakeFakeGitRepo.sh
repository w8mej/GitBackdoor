mkdir .git && echo 'ref: refs/heads/master' > .git/HEAD && mkdir .git/refs .git/objects .git/logs 


##Verification of the repo functionality
echo 'Hello, world!' > hello.txt && git add hello.txt && git commit -m 'Initial commit' && git log
