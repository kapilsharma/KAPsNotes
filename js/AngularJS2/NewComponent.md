# Angular 2 notes

## Table of contents

- [Contents](README.md)
- [Previous - Request flow/life cycle](RequestFlow.md)
- [Next - ??]() - Will be published soon.

## Creating new components

We can use command line tool `ng` to generate new component. We can obviously do it without CLI, but CLI tool is recommended as it ensure there is no human error, at least for the beginners and still quick way for even experienced developers.

To generate a new component through CLI, we cna use command `ng generate component ComponentName`. Example:

```bash
ng generate component SecondComponent
installing component
  create src/app/second-component/second-component.component.css
  create src/app/second-component/second-component.component.html
  create src/app/second-component/second-component.component.spec.ts
  create src/app/second-component/second-component.component.ts
  update src/app/app.module.ts
```

It we generate 4 files in a new folder and update `app.module.ts`.

> Short cut: Angular cli provide short cuts to work quickly. Thus, `ng generate component ComponentName` can be written in short as `ng g c ComponentName` and it will work as same.

### Changes

This command generated four files and edit one file:

- second-component - parent folder
    - second-component.component.ts - Which is main code file.
    - second-component.component.html - Which contains html
    - second-component.component.css - containing styles, empty by default.
    - second-component.component.spec.ts - for tests.
- app.module.ts - edited to import second-component and add it in declaration array.

#### second-component.component.ts

```typescritt
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-second',
  templateUrl: './second-component.component.html',
  styleUrls: ['./second-component.component.css']
})
export class SecondComponentComponent implements OnInit {

  constructor() { }

  ngOnInit() {
  }

}
```

As discussed in [Quick Start](QuickStart.md), it contains few necessary imports, component decorator and actual class. The new thing is, class contains `constructor` and a method `ngOnInIt`. We will discuss about these methods shortly.

Other files, contins html and css for our component.

Last new file, `*.spec.ts` contains test case. We will discuss about it while testing Angular 2 applications.

#### app.modules.ts
