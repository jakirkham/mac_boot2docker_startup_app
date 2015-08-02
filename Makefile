all:
	# Copy the stub application from Automator.
	cp -r /Applications/Automator.app/Contents/Resources/Application\ Stub.app Startup\ Boot2docker.app

	# Replace the icons in the new app with those from Boot2Docker.
	cp /Applications/boot2docker.app/Contents/Resources/applet.icns Startup\ Boot2docker.app/Contents/Resources/AutomatorApplet.icns
