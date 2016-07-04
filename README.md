# applescripts
My AppleScripts.

## Install

```
git clone https://github.com/AndersDJohnson/applescripts.git .applescripts
```

If you want to store in standard locations, you can use hardlinks:

```
brew install hardlink-osx
```

```
hln ~/Library/Scripts ~/.applescripts/Scripts
hln ~/Library/Services ~/.applescripts/Services 
```

### Build Apps

Building apps will compile scripts under `./Scripts` to `~/Applications`,
so for example you can then run them from Spotlight.

```
./build.sh
```

## Inspiration
* https://github.com/sparanoid/automator-workflows
* https://github.com/willsALMANJ/applescripts

