#!/usr/bin/env bash

#0, 1, or 2 0=failed 1="partially completed" 2="fully completed" 
#help for colors and other http://tldp.org/LDP/abs/html/colorizing.html 
#Script written for OSX
textgreen='\033[0;32m'
textred='\033[0;31m'
textyellow='\033[1;33m'
textpurple='\033[0;35m'
textnormal='\033[0m'

version="0"

#functions
function sassWatch {
    echo -e "\n"
    echo -e "I'll watch your project for scss changes!"
	echo -e "\n"
    sass --w ./dashing.scss:./dashing.css ./example/sass/example.scss:./example/css/example.css
    echo -e "\n"
}

function buildFiles {
    echo -e "\n"
    echo -e "Building your css files!"
	echo -e "\n"
    echo -e "${textnormal}Building dashing.css...${textnormal}"
    sass -t compressed dashing.scss dashing.css
    echo -e "Done."
    echo -e "${textnormal}Building example.css...${textnormal}"
    sass -t compressed ./example/sass/example.scss ./example/css/example.css
    echo -e "Done."
    echo -e "\n"
}

function gitTags {
	# echo -e "\n"
    gitfetchtags=$(git fetch --tags)
    # echo -e 'gitfetchtags=$(git fetch --tags)'
    gitversion=$(git describe --tags $(git rev-list --tags --max-count=1))
    # echo -e 'gitversion=$(git describe --tags $(git rev-list --tags --max-count=1))'
    gitversion="${gitversion#v}"
    # echo -e 'gitversion="${gitversion#v}"'
    gitversionlast="${gitversion##*.}"
    # echo -e 'gitversionlast="${gitversion##*.}"'
    gitversionfirst="${gitversion%%.*}"
    # echo -e 'gitversionfirst="${gitversion%%.*}"'
    gitversionmiddle="${gitversion#*.}"
    # echo -e 'gitversionmiddle="${gitversion#*.}"'
    gitversionmiddle="${gitversionmiddle%.*}"
    # echo -e 'gitversionmiddle="${gitversionmiddle%.*}"'
    # echo -e "\n"
}

function gitRebase {
    echo -e "\n"
    echo -e "${textyellow}Note: Please rebase your changes manually and continue to \"Commit\".${textnormal}"
    echo -e "\n"
}

function commitChanges {
	# gitBranch="$(git rev-parse --abbrev-ref HEAD)"
	echo -e "\n"
    echo -e "[1/2 Gather Details]"
	read -p "1.) What would you like say in the commit for this version? " commitmessage
    echo -e "Your commit message reads:${textgreen} $commitmessage${textnormal}"
    if [ $version == "0" ]
    then
    	read -p "2.) Version to update to (Current: v$gitversionfirst.$gitversionmiddle.$gitversionlast): v" version
    fi
    echo -e "You are going to update dashing to:${textgreen} v$version${textnormal}"
    echo -e "\n"
    echo -e "${textyellow}Note: Please review the above changes to be made!${textnormal}"
    echo -e "\n"
    echo -e "[2/2 Commit]"
    
    echo -e "Active branch: ${textgreen}"$(git rev-parse --abbrev-ref HEAD)"${textnormal}"
    
    read -p "Continue with commit? (y = Continue, any other = Cancel) " permissiongit
    if [ $permissiongit == 'y' ]
    then
        git add .
        # echo -e "git add ."
        git commit -m "$commitmessage"
        # echo -e "commit -m $commitmessage"
        echo -e "${textgreen}Changes Commited.${textnormal}"

        #TAG
        read -p "Add a version tag?(v$version) (y = Continue, any other = Don't Tag)" permissiontag
        
        if [ $permissiontag == 'y' ]
        then
            git tag v$version
            # echo -e "git tag v$version"
            echo -e "${textgreen}Branch Tagged.${textnormal}"
        fi

        #PUSH
        read -p "Push to branch? (y = Continue, any other = Don't Push)" permissionpush

        if [ $permissionpush == 'y' ]
        then
            git push
            # echo -e "git push"
            echo -e "Changes pushed to: ${textgreen}"$(git rev-parse --abbrev-ref HEAD)"${textnormal}"
            
            if [ $permissiontag == 'y' ] #see if tag was applied
            then
                git push --tags
                # echo -e "git push --tags"
                echo -e "Tags pushed to: ${textgreen}"$(git rev-parse --abbrev-ref HEAD)"${textnormal}"
            fi
        fi
    else 
        echo -e "${textyellow}Skipped automated git commit. ${textnormal}"
    fi
    echo -e "\n"
}

function requestDetails {
    echo -e "\n"
    echo -e "${textnormal}[1/2 Gather Details]${textnormal}"
    read -p "1.) Version to update to (Current: v$gitversionfirst.$gitversionmiddle.$gitversionlast): v" version
    echo -e "You are going to update dashing to${textgreen} v$version${textnormal}"
    read -p "2.) Type of changelog (Fixed, Added, Updated, etc): " changelogtype
    echo -e "Type of changelog will be${textgreen} \"$changelogtype\"${textnormal}"
    read -p "3.) What would you like to add to the changelog for this version? " changelog
    echo -e "Your addition to the changelog reads:${textgreen} $changelog${textnormal}"
    echo -e "\n"
}

function changeFiles {
    echo -e "\n"
    echo -e "${textnormal}[2/2 Change Files]${textnormal}"
    echo -e "${textyellow}Note: You will update these 3 files with the information provided in Step 1:
    - bower.json
    - package.json
    - CHANGELOG.md${textnormal}"
    read -p "Change (3) files? (y = Continue, any other = Cancel) " permissionfile

    if [ $permissionfile == 'y' ]
    then
        echo -e "${textgreen}Changing files... ${textnormal}"

        #Files and what to search for:
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
    else
        echo -e "${textyellow}Cancelled file change. ${textnormal}"
    fi
    echo -e "\n"
}

function npmPublish {
    echo -e "\n"
    read -p "Run Npm Publish? (y = Continue, any other = Cancel) " permissionpublish
    echo -e "\n"
    if [ $permissionpublish == 'y' ]
    then
        npm publish
    else
        echo -e "${textyellow}Cancelled Publish. ${textnormal}"
    fi
    echo -e "\n"
}

echo -e "${textgreen}"

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
textart
echo -e "${textpurple}©Samaritan Ministries International${textgreen}
v0.1.0
+--------------------------------------+"
echo -e "${textnormal}"

while true
do
PS3="
How can I help?"
options=("Watch" "Build" "Write" "Rebase" "Commit" "Publish" "Exit")
select option in "${options[@]}"
do
    case $option in
        "Watch")
            sassWatch
            break
            ;;
        "Build")
            buildFiles
            break
            ;;
        "Write")
			gitTags
            requestDetails
            changeFiles
            break
            ;;
        "Rebase")
            gitRebase
            break
            ;;
        "Commit")
            gitTags
            commitChanges
            break
            ;;
        "Publish")
            npmPublish
            break
            ;;
        "Exit")
            echo "Goodbye!"
            exit
            ;;
        *) echo invalid option;;
    esac
done
done