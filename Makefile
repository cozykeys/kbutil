SOLUTION=src/KbUtil.sln
RUNTIME_WIN="win7-x64"
RUNTIME_LNX="linux-x64"
PUBLISH_OPTS=--self-contained --configuration Release

PROJ_KBUTIL=src/KbUtil.Console/KbUtil.Console.csproj
PROJ_KBMATH=src/KbMath.Console/KbMath.Console.csproj

all: build

publish:
	dotnet publish --runtime $(RUNTIME_WIN) $(PUBLISH_OPTS) $(PROJ_KBUTIL)
	dotnet publish --runtime $(RUNTIME_LNX) $(PUBLISH_OPTS) $(PROJ_KBUTIL)
	dotnet publish --runtime $(RUNTIME_WIN) $(PUBLISH_OPTS) $(PROJ_KBMATH)
	dotnet publish --runtime $(RUNTIME_LNX) $(PUBLISH_OPTS) $(PROJ_KBMATH)

build:
	dotnet build -c Debug $(SOLUTION)
	dotnet build -c Release $(SOLUTION)

clean:
	rm -rf build