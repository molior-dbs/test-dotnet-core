
export HOME := $(shell mktemp -d /tmp/dotnet-XXXXXX)
export DOTNET_CLI_TELEMETRY_OPTOUT := 1
export DOTNET_SKIP_FIRST_TIME_EXPERIENCE := 1
export DOTNET_NOLOGO := 1

all:
	echo Working Dir ${HOME}
	ls -alR ${HOME}
	dotnet build --disable-build-servers -c Release
	ls -alR ${HOME}
	rm -rf ${HOME} /tmp/NuGetScratch /tmp/.NETCoreApp*

clean:
	echo Working Dir ${HOME}
	ls -alR ${HOME}
	dotnet clean --disable-build-servers
	ls -alR ${HOME}
	rm -rf ${HOME} /tmp/NuGetScratch /tmp/.NETCoreApp*

install:
	mkdir -p ${DESTDIR}/opt/mira-test/dotnet
	cp bin/Release/net11.0/mira-test.dll ${DESTDIR}/opt/mira-test/dotnet
	cp bin/Release/net11.0/mira-test.runtimeconfig.json ${DESTDIR}/opt/mira-test/dotnet/
	mkdir -p ${DESTDIR}/opt/mira-test/bin
	cp mira-test ${DESTDIR}/opt/mira-test/bin
