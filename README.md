# applescripts
My AppleScripts.

## Install

```
git clone https://github.com/AndersDJohnson/applescripts.git .applescripts
```

### Option 1: Copy

```
./install.sh
```

### Option 2: Hardlinks

If you want to store in standard locations, you can use hardlinks:

```
brew install hardlink-osx
```

```
cd ~/.applescripts
rm -rf Scripts Services
hln ~/Library/Scripts Scripts
hln ~/Library/Services Services
git reset --hard
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

