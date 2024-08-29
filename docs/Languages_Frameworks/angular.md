---
tags:

---
# Angular

[Tutorial - Build your first Angular app](https://angular.dev/tutorials/first-app)  
[Video Tutorial - Angular Tutorial for Beginners: Learn Angular & TypeScript](https://www.youtube.com/watch?v=k5E2AVpwsko)

---
[Tutorial - Getting Started with Webpack Module Federation and Angular](https://github.com/angular-architects/module-federation-plugin/blob/main/libs/mf/tutorial/tutorial.md)

The above tutorial will guide you to get a sample project working with Angular and Module Federation. Ensure you take note of the following:

- When / if you run into conflicting dependencies upon “npm i", update the following lines in your package.json file:
```
"jasmine-core": "~5.1.1",
"karma-jasmine-html-reporter": "^1.6.0",
```
---

## Tips for creating a new Angular project using Dev Containers

1. Follow the instructions in [Creating a new project using Dev Containers in VSCode](../Tools/devcontainers.md) to create a new project. Select project type “Node.js & TypeScript” and when you are offered additional features to install, select “Angular CLI”. (I also like to install “Common Utilities”. You will need to configure this yourself and set the non-root user to “node”.)
2. You now have an empty Dev Containers project with Angular and Git installed at the CLI. You will not have a skeleton Angular project yet. 
3. To create a skeleton Angular project at this point, you can create it manually using the CLI and ng commands.
4. Ensure you update the `devcontainer.json` config file to open the correct port and install, build and serve the angular project when creating the container, by adding the following lines
```
"forwardPorts": [4200],
"postCreateCommand": "npm install",
"postStartCommand": "ng build && ng serve",
```
And ensure the following line matches
```
"remoteUser": "node"
```
