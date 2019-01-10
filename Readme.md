# Nativefier Scripts for Microsoft To-Do
Create a Mac OS application for Microsoft To-Do web application.


## Requirements
npm (to install Nativefier)
nativefier

See https://github.com/jiahaog/nativefier to install nativefier

## Note
This is meant for me, but feel free to use it for you. I didn't plan on making it portable for anyone. 

## Usage

Build the application into ./To-Do-darwin-x86/

```bash
make
```

Install the application into your local ~/Applications/ directory:

```bash
make install
```

Clean up the build directory

```bash
make clean
```

Purge the app, app cache, and preferences

```bash
make reset
```

Uninstall the app

```bash
make uninstall
```

Run the app

```bash
make run
```
