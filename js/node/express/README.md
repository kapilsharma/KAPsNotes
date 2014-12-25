# ExpressJS

ExpressJs is a Web development framework for Node JS.

## Installation

Express can be installed through Node Package manager using following steps.

* Create a directory for the project.

```
mkdir firstExpressApp
cd fristExpressApp
```
* Create package.json file by initializing node project. It will ask few questions. Press enter if you wish to select default answer

```
$ npm init
This utility will walk you through creating a package.json file.
It only covers the most common items, and tries to guess sane defaults.

See `npm help json` for definitive documentation on these fields
and exactly what they do.

Use `npm install <pkg> --save` afterwards to install a package and
save it as a dependency in the package.json file.

Press ^C at any time to quit.
name: (firstExpressApp)
version: (1.0.0)
description: First test app for express
entry point: (index.js)
test command:
git repository:
keywords:
author: Kapil Sharma
license: (ISC) MIT
About to write to d:\dev\books\KAPsNotes\src\js\node\firstExpressApp\package.json:

{
  "name": "firstExpressApp",
  "version": "1.0.0",
  "description": "First test app for express",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "Kapil Sharma",
  "license": "MIT"
}


Is this ok? (yes)
```

* Install express and add dependencies to package.json file.

```
npm install express --save
```

*If we do not want to save dependencies to packagejson file, we can omit `--save`.

After installation, you wll see new entry for express in package.json file and also find a new folder node_modules, which node use to keep dependencies files.
