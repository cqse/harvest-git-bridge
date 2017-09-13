## Get FileVersion of an assembly

	tga.pdb.inbox.version = { dir ->
		new ByteArrayOutputStream().withStream { os ->
			exec {
				workingDir dir
				commandLine "Powershell", "(get-item some.dll).VersionInfo.FileVersion"
				standardOutput = os
			}
			os.toString().trim()
		}
	}
