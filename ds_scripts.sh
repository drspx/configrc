#!/usr/bin/env zsh
,global-protect-shutdown() {
   launchctl unload /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*
}
,global-protect-launch() {
   launchctl load /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*
}

,remove-xattr(){
# Remove com.apple.quarantine attribute from downloaded apps

APPLIST=("Chromium" "LibreOffice" "UltiMaker Cura")

for APP in $APPLIST
do
	echo "removing xattr for ${APP} "
	xattr -r -d com.apple.quarantine /Applications/${APP}.app
done

}

,dsh-login(){
	# vault login is necessary for ecr login
	dsh vault.login

	# images are only available when logged in
	dsh vault.ecr-login
}

,ecr-login-as-john(){
	dsh vault.aws --profile=john --mount-point=secret/misc/aws/shared --role=ecr-dev
}
,github-prs(){
	gh search prs --author alkk-ds --state open
}
