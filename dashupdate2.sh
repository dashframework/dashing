#!/usr/bin/env bash

scriptstatus='0'
#0, 1, or 2 0=failed 1="partially completed" 2="fully completed" 
#help for colors and other http://tldp.org/LDP/abs/html/colorizing.html 
#Script written for OSX
textgreen='\033[0;32m'
textred='\033[0;31m'
textyellow='\033[1;33m'
textpurple='\033[0;35m'
textnormal='\033[0m'

gitfetchtags=$(git fetch --tags)
echo -e "${textgreen}"
#Intro
cat << "textart"
+--------------------------------------+
  _____            _     _             
 |  __ \          | |   (_)            
 | |  | | __ _ ___| |__  _ _ __   __ _ 
 | |  | |/ _` / __| '_ \| | '_ \ / _` |
 | |__| | (_| \__ \ | | | | | | | (_| |
 |_____/ \__,_|___/_| |_|_|_| |_|\__, |
                                  __/ |
                                 |___/ 

Updater: v0.2.0
textart
echo -e "${textpurple}©Samaritan Ministries International${textgreen}
+--------------------------------------+"
echo -e "${textnormal}"
#End Intro

echo "How can I help?"
echo "1. Watch my project for changes.
2. Build my css files.
3. Gather and apply my change details.
4. Create and push my commit."

read -p "Which Script? " runscript
#Create functions for these options
if [ $runscript == '1' ]
	then
	echo "I'll watch your project for changes!"
	sass --w ./dashing.scss:./dashing.css ./example/sass/example.scss:./example/css/example.css
fi

if [ $runscript == '2' ]
	then
	#Start up tasks - builds
	echo -e "${textnormal}Building dashing.css...${textnormal}"
	sass -t compressed dashing.scss dashing.css
	echo -e "Done."
	echo -e "${textnormal}Building example.css...${textnormal}"
	sass -t compressed ./example/sass/example.scss ./example/css/example.css
	echo -e "Done."
	echo -e '\n'
fi

if [ $runscript == '2' ] #see if tag was applied
	then

	gitversion=$(git describe --tags $(git rev-list --tags --max-count=1))
	gitversion="${gitversion#v}"
	gitversionlast="${gitversion##*.}"
	gitversionfirst="${gitversion%%.*}"
	gitversionmiddle="${gitversion#*.}"
	gitversionmiddle="${gitversionmiddle%.*}"

	#Gather Details
	echo -e "${textgreen}[1/4]███${textnormal}█████████"
	echo -e "${textnormal}[I. Gather Details]${textnormal}"
	read -p "1.) Version to update to (Current: v$gitversionfirst.$gitversionmiddle.$gitversionlast): v" version
	echo -e "You are going to update dashing to${textgreen} v$version${textnormal}"
	read -p "2.) Type of changelog (Fixed, Added, Updated, etc): " changelogtype
	echo -e "Type of changelog will be${textgreen} \"$changelogtype\"${textnormal}"
	read -p "3.) What would you like to add to the changelog for this version? " changelog
	echo -e "Your addition to the changelog reads:${textgreen} $changelog${textnormal}"
	read -p "4.) What would you like say in the commit for this version? " commitmessage
	echo -e "Your commit message reads:${textgreen} $commitmessage${textnormal}"
	echo -e '\n'

	#Change Files

	echo -e "${textgreen}[2/4]██████${textnormal}██████"
	echo -e "${textnormal}[II. Change Files]${textnormal}"
	echo -e "${textyellow}Note: You will update these 3 files with the information provided in Step I:
	- bower.json
	- package.json
	- CHANGELOG.md${textnormal}"

	read -p "Change (3) files? (y = Continue, any other = Skip) " permissionfile

	#if user is happy with the changes do the following:
	# $version="$version"

	if [ $permissionfile == 'y' ]
	then
		echo -e "${textgreen}Changing files... ${textnormal}"

		#Files and what to search for:
		# currentversion="param1:"
		# pfile="file.txt"
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
		echo -e "${textyellow}Skipped automated file change. ${textnormal}"
	fi

	#run git here
	echo -e '\n'
	echo -e "${textgreen}[3/4]█████████${textnormal}███"
	echo -e "${textnormal}[III. Git Commit (DUMMY COMMIT)]${textnormal}"
	echo -e "${textyellow}Warning: git changes will be applied to your current branch!
	During this process you will commit your changes and be given the option to tag this commit.${textnormal}"
	read -p "Use automated git? (y = Continue, any other = Skip) " permissiongit
	if [ $permissiongit == 'y' ]
	then
		# git add .
		echo -e "git add ."
		echo -e "${textgreen}Changes added!${textnormal}"
		echo -e "${textnormal}Adding tag and commit message... (v$version - $commitmessage) ${textnormal}"
		# git commit -m "$commitmessage"
		echo -e "commit -m $commitmessage"
		
		#TAG
		# read -p "Tag this commit with version? (y = Continue, any other = Skip)" permissiontag
		
		# if [ $permissiontag == 'y' ]
		# then
			# git tag v$version
			echo -e "git tag v$version"
		# fi
		
		echo -e "${textgreen}Commited!${textnormal}"
		echo -e "${textnormal}Git changes have been commited but not pushed. Please run pushes manually.${textnormal}"
		scriptstatus='2'

		#PUSH
		echo -e "$(git rev-parse --abbrev-ref HEAD)"
		read -p "Push to branch? (y = Continue, any other = Skip)" permissionpush

		if [ $permissionpush == 'y' ]
		then
			# git push
			echo -e "git push"
			
			if [ $permissiontag == 'y' ] #see if tag was applied
			then
				# git push --tags
				echo -e "git push --tags"
			fi
		fi
	else 
		echo -e "${textyellow}Skipped automated git commit. ${textnormal}"
	fi

	echo -e '\n'
	echo -e "${textgreen}[4/4]████████████${textnormal}"
	echo -e "${textnormal}[IV. Complete!]${textnormal}"
	echo -e "${textnormal}"
fi

echo "Goodbye!"