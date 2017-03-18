# Angular JS 2 notes

## Table of contents

- [Contents](README.md)
- [Previous - Contents](README.md) - None, this is starting point :)
- [Next - Request flow/life cycle](RequestFlow.md)

## Angular CLI

```bash
npm install -g @angular/cli@latest
```

On Mac OSX, we also need to add `sudo`.

## Creating new angular project

```bash
ng new project-name
```

## Run local server on project-name

```bash
ng serve
```

## Folder structure

Once new angular project is installed, there are many files and folder in generated code.

Main folder is `src`, where we work most in any angular 2 project.

`src\app` contains main application code or components. By default, new angular project contains App component. Main file is `app.component.ts`, where `ts` is extension used for typescript.

> Type script is a superset of Java script, and later on, compiles into java script to be executed on browser.

General code of `app.component.ts` is

```typescript
import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'app works!';
}
```

Here, first line is import where we are importing Angular module `component` from angular core libraries.

Here, at the bottom, we can see `export class`. This is type script's way of defining a class. Thus, we are defining `AppComponent` class, which has single property named `title`. Please note, in Angular 2, we need not to create object of this class, Angular 2 will do it for us.

Above above, `@Component` section is called `decorators`. A decorator is in format

```typescript
@DecoratorName(Parameters)
```

Component decorator takes a JS object (JSON) and tells Angular that following class is Component.
