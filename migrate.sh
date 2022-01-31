RepoList=(edison-data)
for Repo in ${RepoList[@]}
do
	echo "Cloning Repo :- $Repo"
	cd /Users/rwaghmare/DevSetup/shellscript && git clone --mirror git@bitbucket.org:entrata/${Repo}.git ${Repo}
	echo "Creating Repo on Github :- $Repo"
	gh repo create entrata/${Repo} --private --team Release
	#echo "cd /Users/rwaghmare/DevSetup/shellscript/"${Repo}" && git push --mirror git@github.com:entrata/"${Repo}".git"
	echo "Push Repo on Github :- $Repo"
	cd /Users/rwaghmare/DevSetup/shellscript/${Repo} && git push --mirror git@github.com:entrata/${Repo}.git
	echo "Remove local clone :- $Repo"
	cd /Users/rwaghmare/DevSetup/shellscript/ && rm -rf ${Repo}
done


## Need to confiure GitHub CLI on local system
## Need access token to authenticare GitHub CLI
## If your organisation uisng SAML authentication then Access tocken needs to be autheticated.
