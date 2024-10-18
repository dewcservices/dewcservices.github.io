---
tags:

---
# Dev Containers

[Tutorial - Developing inside a Container](https://code.visualstudio.com/docs/devcontainers/containers)  
[Resource - Dev Containers Overview](https://containers.dev/overview)  
[Resource - Using Images, Dockerfiles, and Docker Compose for your Dev Container Environment](https://containers.dev/guide/dockerfile)  

## Creating a new project using Dev Containers in VSCode

1. Install the `Dev Containers` VSCode extension on the instance connected to the environment you want to create your project, for example, a VM or your local environment.
2. Create a new directory for your trial project (or clone the repo you want to use for your project into a new directory in your projects directory), then click F1 and select “File: Open Folder…” and select your new directory. 
3. Click F1 again and select “Dev Containers: Add Dev Container Configuration Files…”. Select “Node.js & TypeScript” (or whatever you want really) and make the desired selections for your new project. VSCode will create a `.devcontainer` directory and a `devcontainer.json` config file for you. 
4. When prompted, select “Reopen in Container” to start the project or click F1 and select “Dev Containers: Rebuild and Reopen in Container”.
5. Your VSCode instance is now connected to your new container, which is running everything you selected for your new project. Run commands in your Terminal window on the VSCode instance to test it out. You can run the same commands on a different VSCode instance to see that what is installed inside your Dev Container is contained in the container and not installed elsewhere in your system.
6. If you want to save your Dev Containers config file for future use, you need to select “Add Dev Container Configuration Files” and not “New Dev Container” which will open up a temporary work space for you.

## Tips for creating a new Angular project using Dev Containers

1. Follow the instructions above to create a new project. Select project type “Node.js & TypeScript” and when you are offered additional features to install, select “Angular CLI”. (I also like to install “Common Utilities”. You will need to configure this yourself and set the non-root user to “node”.)
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
