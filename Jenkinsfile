// Powered by Infostretch 

timestamps {

node () {

	stage ('Git-Merged-Delete - Checkout') {
 	 checkout([$class: 'GitSCM', branches: [[name: '*/develop']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'b195b761-b14e-4563-be14-a21b35a32121', url: 'https://github.com/mohdumar321/testbuildscript.git']]]) 
	}
	stage ('Git-Merged-Delete - Build') {
 	
// Unable to convert a build step referring to "hudson.plugins.ws__cleanup.PreBuildCleanup". Please verify and convert manually if required.		// Shell build step
sh """ 
cat << 'EOF' > script.sh
#!/bin/bash
# Function to get all the merged branches

git_merged(){
remote="${1:-origin}"
branch="$2"
git branch -r --list "$remote/*" --merged $branch \
    | sed "s/\s*$remote\///" \
    | egrep -v "^(HEAD|release|hotfix|master|develop|staging|bugfix)"
}


# Fetch feature merged branches excluding the nondeletion

mergedBranch=$(git_merged origin origin/develop | grep feature | grep -v nondeletion)
for branch in $mergedBranch
do
 echo $branch
 lastDate=$(git show -s --format=%ci origin/$branch)
 convertDate=$(echo $lastDate | cut -d' ' -f 1)
 Todate=$(date -d "$convertDate" +'%s')
 current=$(date +'%s')
 day=$(( ( $current - $Todate )/60/60/24 ))
 echo "last commit on $branch branch was $day days ago"
 if [ "$day" -gt 14 ]; then
    echo "delete the old branch $branch"
    git push https://github.com/mohdumar321/testbuildscript.git --delete $branch
    mohdumar321
    Cse34@umar
 fi
done
EOF

bash ./script.sh > temp
cat temp 
 """ 
	}
}
}