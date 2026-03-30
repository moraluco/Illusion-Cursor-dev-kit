# AndroidFileServerBP

## Inheritance

AndroidFileServerBP → ANDROIDFILESERVER → StartFileServer

## Description

static bool AndroidFileServerBP::StartFileServer( bool 	bUSB	 = 	true, bool 	bNetwork	 = 	false, int 	Port	 = 	57099 	)

Request startup of Android FileServer

StopFileServer static bool AndroidFileServerBP::StopFileServer( bool 	bUSB	 = 	true, bool 	bNetwork	 = 	true 	)

Request termination of Android FileServer

IsFileServerRunning static EAFSActiveType AndroidFileServerBP::IsFileServerRunning()

Check if Android FileServer is running
