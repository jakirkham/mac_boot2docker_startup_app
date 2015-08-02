all:
	# Copy the stub application from Automator.
	cp -r /Applications/Automator.app/Contents/Resources/Application\ Stub.app Startup\ Boot2docker.app

	# Replace the icons in the new app with those from Boot2Docker.
	cp /Applications/boot2docker.app/Contents/Resources/applet.icns Startup\ Boot2docker.app/Contents/Resources/AutomatorApplet.icns

	# Add the workflow to the app.
	cp document.workflow Startup\ Boot2docker.app/Contents/document.wflow

	# Patch the app's `Info.plist` to contain the right name.
	sed -i.bak "s/Application-Stub/Startup-Boot2docker/g" Startup\ Boot2docker.app/Contents/Info.plist; rm Startup\ Boot2docker.app/Contents/Info.plist.bak
	tr '\n' '\r' < Startup\ Boot2docker.app/Contents/Info.plist | sed 's/Application Stub/Startup Boot2docker/2' | tr '\r' '\n' > Startup\ Boot2docker.app/Contents/Info.plist.new; mv Startup\ Boot2docker.app/Contents/Info.plist.new Startup\ Boot2docker.app/Contents/Info.plist
	printf "%s\n" "`< Startup\ Boot2docker.app/Contents/Info.plist`" > Startup\ Boot2docker.app/Contents/Info.plist.new; mv Startup\ Boot2docker.app/Contents/Info.plist.new Startup\ Boot2docker.app/Contents/Info.plist

	# Remove the unneeded files.
	rm -f Startup\ Boot2docker.app/Contents/PkgInfo
	rm -f Startup\ Boot2docker.app/Contents/version.plist

check:
	open -W Startup\ Boot2docker.app && boot2docker shellinit

clean:

