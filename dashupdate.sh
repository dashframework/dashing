#!/usr/bin/env bash

scriptstatus='0'
#0, 1, or 2 0=failed 1="partially completed" 2="fully completed" 
#help for colors and other http://tldp.org/LDP/abs/html/colorizing.html 
#Script written for OSX
textgreen='\033[0;32m'
textred='\033[0;31m'
textyellow='\033[1;33m'
textnormal='\033[0m'
#Intro
echo -e "${textgreen}+-------------------------------------------+${textnormal}"
echo -e "${textgreen}|Dashing Updater v0.0.2 (Adjitu)            |${textnormal}"
echo -e "${textgreen}|SAMARITAN DESIGN TEAM 2017                 |${textnormal}"
echo -e "${textgreen}|                                           |${textnormal}"
echo -e "${textgreen}|Make sure to submit a pull request!        |${textnormal}"
echo -e "${textgreen}+-------------------------------------------+${textnormal}"

#Start up tasks - builds
echo -e "${textnormal}Building dashing.css...${textnormal}"
sass -t compressed dashing.scss dashing.css
echo -e "${textgreen}Main css complete!${textnormal}"
echo -e "${textnormal}Building example.css...${textnormal}"
sass -t compressed ./example/sass/example.scss ./example/css/example.css
echo -e "${textgreen}Example css complete!${textnormal}"
echo -e '\n'

#User input
echo -e "${textgreen}I need to know a couple things about your changes...${textnormal}"

read -p "Version to update to is: v" version
read -p "Type of changelog (Fixed, Added, Updated, etc): " changelogtype
read -p "What would you like to add to the changelog for this version? " changelog
read -p "What would you like say in the commit for this version? " commitmessage
echo -e '\n'

echo -e "${textgreen}You are going to update dashing to v:$version${textnormal}"
echo -e "${textgreen}Type of changelog (Fix, Addition, Revert, etc): $changelogtype${textnormal}"
echo -e "${textgreen}Your addition to the changelog reads: $changelog${textnormal}"
echo -e "${textgreen}Your commit message reads: $commitmessage${textnormal}"
echo -e '\n'

echo -e "${textnormal}[CHANGE FILES]${textnormal}"
echo -e "${textyellow}Note: You will update 3 files with these changes!${textnormal}"

read -p "Apply update? (y = Continue, any other = Skip) " permissionfile

#if user is happy with the changes do the following:
version="$version"

if [ $permissionfile == 'y' ]
then
	echo -e "${textgreen}Changing files... ${textnormal}"

	#Files and what to search for:
	currentversion="param1:"
	pfile="file.txt"
	bowerjson="bower.json"
	bowerversion='"version":'
	packagejson="package.json"
	packageversion='"version":'
	changelogfile="CHANGELOG.md"

	#change package.json - search for: "version":
	sed -i '' "s/$packageversion.*/$packageversion \"$version\",/" $packagejson
	#change bower.json - search for: "version":
	sed -i '' "s/$bowerversion.*/$bowerversion \"$version\",/" $bowerjson

	#change CHANGELOG.md
	timestamp=`date +%B\ %d,\ %Y`

	#Has to be inserted line by line... (Mac osx requires the literal line break...)
	sed -i '' "5 i\\ 
	### $version - $timestamp
	" $changelogfile
	sed -i '' "6 i\\ 
	**$changelogtype**
	" $changelogfile
	sed -i '' "7 i\\ 
	* $changelog
	" $changelogfile
	sed -i '' "8 i\\ 
	\  
	" $changelogfile
	sed -i '' "9 i\\ 
	*****
	" $changelogfile
	sed -i '' "10 i\\ 
	\  
	" $changelogfile

	echo -e "${textgreen}Changed files. ${textnormal}"
	scriptstatus='1'
else
	echo -e "${textred}Skipped automated file change. ${textnormal}"
fi

#run git here
echo -e '\n'
echo -e "${textnormal}[GIT COMMIT]${textnormal}"
echo -e "${textyellow}Warning: git changes will be applied to your current branch!${textnormal}"
read -p "Use automated git? (y = Continue, any other = Skip) " permissiongit
if [ $permissiongit == 'y' ]
then
	git add .
	echo -e "${textgreen}Changes added!${textnormal}"
	echo -e "${textnormal}Adding tag and commit message... (v$version - $commitmessage) ${textnormal}"
	git commit -m "$commitmessage"
	read -p "Tag this commit with version? (y = Continue, any other = Skip)" permissiontag
	
	if [ $permissiontag == 'y' ]
	then
		git tag v$version
	fi
	
	echo -e "${textgreen}Commited!${textnormal}"
	echo -e "${textnormal}Git changes have been commited but not pushed. Please run pushes manually.${textnormal}"
	scriptstatus='2'
else 
	echo -e "${textred}Skipped automated git commit. ${textnormal}"
fi

echo "Exiting..."