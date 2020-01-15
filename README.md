[![Build Status](https://travis-ci.com/martinoppitz/poc-flexible-web-application-architecture.svg?branch=master)](https://travis-ci.com/martinoppitz/poc-flexible-web-application-architecture)
[![Coverage Status](https://coveralls.io/repos/github/martinoppitz/poc-flexible-web-application-architecture/badge.svg?branch=master)](https://coveralls.io/github/martinoppitz/poc-flexible-web-application-architecture?branch=master)

> The source code is not completely clean for the architecture concept, but all aspects are evaluated.

# PoC - Flexible web application architecture

- [PoC - Flexible web application architecture](#poc---flexible-web-application-architecture)
  - [Motivation](#motivation)
  - [Introduction](#introduction)
    - [Tools](#tools)
    - [Frameworks](#frameworks)
      - [Devtools](#devtools)
  - [Installation](#installation)
  - [Guide](#guide)
    - [Usual usage without CLI](#usual-usage-without-cli)
      - [Serve](#serve)
      - [Build](#build)
    - [Command Line Interfaces](#command-line-interfaces)
      - [Angular CLI](#angular-cli)
        - [Installation](#installation-1)
      - [Vue CLI](#vue-cli)
        - [Installation](#installation-2)
  - [Testing](#testing)
    - [Unit-Test](#unit-test)
    - [Snapshot-Test](#snapshot-test)
    - [E2E-Test](#e2e-test)
  - [Documentation](#documentation)
  - [Open topics](#open-topics)
  - [Known bugs](#known-bugs)
  - [Gained knowledge](#gained-knowledge)
    - [Moment increases the artifact size](#moment-increases-the-artifact-size)
    - [Artifact analyser](#artifact-analyser)
    - [Artifact minimisation](#artifact-minimisation)
  - [References](#references)

## Motivation

This project demonstrate a scalable and flexible [Babel] and [Webpack] based web application architecture.

## Introduction

We write always the same application with different JavaScript-Frameworks. Here you can find a [Demo]-Link.

### Tools

| Tool            |   Description    | Status |
| --------------- | :--------------: |:---: |
| [Babel]         |    Transpiler    | ✔️
| [Webpack]       |     Bundler      | ✔️
| [TypeScript]    |     Language     |✔️
| [Mocha]         | Unit-Test-Runner |✔️
| [Chai]          |    Assertion     |✔️
| [Nightwatch.js] | E2E-Test-Runner  |✔️
| [Cypress]       | E2E-Test-Runner  | ⌛
| [NYC]           |  Code-Coverage   |✔️
| [Storybook]     |  Documentation   |✔️

### Frameworks

The selection of the following frameworks depends on this [report](https://ashleynolan.co.uk/blog/frontend-tooling-survey-2019-results#js-framework-essential) and [benchmark](https://krausest.github.io/js-framework-benchmark/2019/table_chrome_78.html).

|           Characteristic |   [Angular]    | [AngularJS] | [Aurelia] |    [Inferno]    |    [Preact]     |     [React]     | [Svelte] | Vanilla |          [Vue]          |
| -----------------------: | :------------: | :---------: | :-------: | :-------------: | :-------------: | :-------------: | :------: | :-----: | :---------------------: |
|                  Version |     9.0 rc     |     1.7     |    1.3    |       7.3       |      10.1       |      16.12      |   3.16   |    -    | 2.6 ([Composition API]) |
|            Artifact size |     611 KB     |   224 KB    |  368 KB   |      68.5 KB      |      62.3 KB      |     177 KB      |  52.1 KiB  | 44.3 KiB  |         121 KB          |
|           Upcomming time |     ~50 ms     |   ~50 ms    |  ~10 ms   |     ~11 ms      |     ~12 ms      |     ~13 ms      |  ~13 ms  |    -    |         ~18 ms          |
|         Performance test |       ⌛       |     ⌛      |    ⌛     |       ⌛        |       ⌛        |       ⌛        |    ⌛    |   ⌛    |           ⌛            |
| [Devtools](####devtools) |       ✔️       |     ✔️      |    ⌛     |       ✔️        |       ✔️        |       ✔️        |    ✔️    |   ❌    |           ✔️            |
|                   Router |       ✔️       |     ✔️      |    ✔️     |       ✔️        |       ✔️        |       ✔️        |    ✔️    |   ✔️    |           ✔️            |
|                       DI |       ✔️       |     ✔️      |    ✔️     |       ✔️        |       ✔️        |       ✔️        |    ✔️    |   ✔️    |           ✔️            |
|                    [SPA] |       ✔️       |     ✔️      |    ✔️     |       ✔️        |       ✔️        |       ✔️        |    ✔️    |   ✔️    |           ✔️            |
|                    [PWA] |       ✔️       |     ✔️      |    ⌛     |       ✔️        |       ✔️        |       ✔️        |    ✔️    |   ✔️    |           ✔️            |
|                    [SSR] |       ✔️       |     ✔️      |    ⌛     |       ✔️        |       ✔️        |       ✔️        |    ✔️    |   ✔️    |           ✔️            |
|      Internet Explorer\* |       ❌       |     ✔️      |    ❌     |       ✔️        |       ✔️        |       ✔️        |    ❌    |   ❌    |           ✔️            |
|            Framework CLI | ✔️<br>(253 KB) |     ❌      |  ✔️\*\*   |       ❌        |       ❌        |       ❌        |    ❌    |   ❌    |     ✔️<br>(121 KB)      |
|               Scoped App |       ✔️       |     ✔️      |    ✔️     |       ✔️        |       ✔️        |       ✔️        |    ✔️    |   ❌    |           ✔️            |
|         Language Support |       ✔️       |     ⌛      |    ⌛     | ✔️<br>[JSX/TSX] | ✔️<br>[JSX/TSX] | ✔️<br>[JSX/TSX] |    ⌛    |   ✔️    |           ✔️            |

\* Maybe more polyfills are required for IE.<br>
\*\* The Aurelia CLI can not be used for this project.

#### Devtools

- [Angular Devtools] and language support
- [AngularJS Devtools]
- [React Devtools], also for Inferno and Preact and language support
- [Svelte Devtools]
- [Vue Devtools] and language support

## Installation

Run `npm install` in the bash. If there any problems with the installed dependencies, you can reinstall everything with `npm run reinstall`.

## Guide

### Usual usage without CLI

Normally the binaries `npm` are used to execute the scripts.

#### Serve

Currently the following frameworks are available:

- `angular`
- `angularjs`
- `aurelia`
- `inferno`
- `preact`
- `react`
- `svelte`
- `vanilla`
- `vue`

Use this command to serve the application: `npm run serve[ <framework> [ -- --open]]`

For example:

- `npm run serve -f inferno`
- `npm run serve -f inferno -- --open`

> The optional option `--open` open the app in you default browser.

#### Build

Use this command to build the application: `npx mo build[ <framework>]`

For example:

- `npm run build inferno`

### Command Line Interfaces

You should know that this project should show the generic architecture concept. The showcase with CLI usage demonstrates the independent codebase.

#### Angular CLI

Currently the [Angular CLI] is partially supported. ~~You must delete all non-angular sources from the `src/` folder.~~

- `npm run ng:serve` executes `ng serve`
- `npm run ng:build` executes `ng build --prod`

##### Installation

Please use primary this documentation: https://angular.io/cli

#### Vue CLI

Currently the [Vue CLI] is partially supported. You must delete all non-vue sources from the `src/` folder.

- `npm run vue:serve` executes `vue-cli-service serve src/vue.ts`
- `npm run vue:build` executes `vue-cli-service build src/vue.ts`

> You must remove the root slashes!
>
> Before:
>
> ```
> <script src="/js/chunk-vendors.c6f5dd88.js"></script>
> <script src="/js/app.c9cc3ddc.js"></script>
> ```
>
> After:
>
> ```
> <script src="js/chunk-vendors.c6f5dd88.js"></script>
> <script src="js/app.c9cc3ddc.js"></script>
> ```
>
> .

##### Installation

Please use primary this documentation: https://cli.vuejs.org/guide/installation.html

## Testing

### Unit-Test

Execute all unit tests with `npm run test` or `npm run test -- --watch`.

### Snapshot-Test

Currently **not** supported.

### E2E-Test

Execute all e2e tests with `npm run e2e` or `npm run e2e --headless` for running headless.

## Documentation

[Storybook] is a realy nice tool to document the components and there usage.

- `npm run storybook:serve` for serve the documentation
- `npm run storybook:build` for build the documentation

## Open topics

- ~~Clean up the code for the architectural concept.~~ ✔️
- ~~Use observables to trigger rendering in correct cases.~~ ✔️
- ~~Prepare the project for unit and e2e testing.~~ ✔️
- Extends the application with adding measurements. ⌛
- ~~Add router to the application context.~~ ✔️
- Create a cheat sheet for the application architecture concept. ⌛
- Provide a PWA manifest for each framework artifact. ⌛
- ~~Coverage test in the build pipeline.~~ ✔️
- ~~E2E tests with Cypress instead of Nightwatch.~~ ❌ // E2E-Testing in headless mode, works. ✔️
- ~~Add filters to the application context.~~ ✔️

## Known bugs

- ~~In the parallel app execution the params routing breaks.~~ ✔️

## Gained knowledge

### Moment increases the artifact size

[Moment] magnifies the build artifact immensely.

### Artifact analyser

If that's interesting ...

Needs additional devDependency:

- webpack-bundle-analyzer: ~3.6.0

Usage: `npm run build angular -- --analyser`

### Artifact minimisation (⨻ outdated)

> The benefit of this function was too small.

There are some optional plugins to minimize the build artifacts in webpack. However, these options are not really better than the default webpack setup.

- https://webpack.js.org/plugins/closure-webpack-plugin/ ❌
- https://webpack.js.org/plugins/uglifyjs-webpack-plugin/ ✔️
- https://webpack.js.org/plugins/terser-webpack-plugin/ ✔️

Needs additional devDependencies:

- closure-webpack-plugin: ~2.0.0
- google-closure-compiler: ~20190929.0.0
- terser-webpack-plugin: ~2.2.0
- uglifyjs-webpack-plugin: ~2.2.0

Usage: `npm run build react -- --minimizer terser`

## References

- https://github.com/infernojs/inferno-typescript-example
- https://medium.com/js-dojo/how-to-configure-webpack-4-with-vuejs-a-complete-guide-209e943c4772
- https://vue-composition-api-rfc.netlify.com/
- https://webpack.js.org/plugins/copy-webpack-plugin/
- https://webpack.js.org/plugins/html-webpack-plugin/
- https://vue-loader.vuejs.org/guide/
- https://webpack.js.org/configuration/
- https://webpack.js.org/configuration/dev-server/
- https://vuejs.org/v2/guide/#Getting-Started
- https://reactjs.org/docs/getting-started.html
- https://infernojs.org/docs/guides/getting-started
- https://angular.io/start
- https://docs.angularjs.org/misc/started
- https://babeljs.io/docs/en/configuration
- https://github.com/krausest/js-framework-benchmark
- https://preactjs.com/guide/v10/getting-started/

[babel]: https://babeljs.io
[typescript]: https:/typescriptlang.org
[webpack]: https://webpack.js.org
[angular]: https://angular.io
[angularjs]: https://angularjs.org
[inferno]: https://infernojs.org
[preact]: https://preactjs.com
[react]: https://reactjs.org
[vue]: https://vuejs.org
[spa]: https://en.wikipedia.org/wiki/Single-page_application
[pwa]: https://de.wikipedia.org/wiki/Progressive_Web_App
[composition api]: https://vue-composition-api-rfc.netlify.com
[js-benchmark]: https://krausest.github.io/js-framework-benchmark/2019/table_chrome_78.html
[angular cli]: https://cli.angular.io
[vue cli]: https://cli.vuejs.org
[svelte]: https://svelte.dev
[svelte-loader]: https://github.com/sveltejs/svelte-loader
[babel-loader]: https://github.com/babel/babel-loader
[ssr]: https://medium.com/@baphemot/whats-server-side-rendering-and-do-i-need-it-cb42dc059b38
[demo]: https://github.modevel.de/poc
[mocha]: https://mochajs.org
[chai]: https://www.chaijs.com
[nyc]: https://istanbul.js.org
[storybook]: https://storybook.js.org/
[angular devtools]: https://augury.rangle.io
[react devtools]: https://reactjs.org/docs/optimizing-performance.html
[vue devtools]: https://github.com/vuejs/vue-devtools
[angularjs devtools]: https://chrome.google.com/webstore/detail/ng-inspect-for-angularjs/cidepfmbgngpdapgncfhpecbdhmnnemf
[svelte devtools]: https://github.com/RedHatter/svelte-devtools
[aurelia]: https://aurelia.io
[moment]: https://momentjs.com
[cypress]: https://cypress.io
[nightwatch.js]: https://nightwatchjs.org
[jsx/tsx]: https://www.jambit.com/aktuelles/toilet-papers/was-ist-eigentlich-jsx-tsx/
