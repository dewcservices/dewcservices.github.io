# Dev Containers

[Tutorial](https://code.visualstudio.com/docs/devcontainers/containers)

## Creating a new project using Dev Containers in VSCode

1. Install the `Dev Containers` VSCode extension on the instance connected to the environment you want to create your project, for example, a VM or your local environment.
2. Create a new directory for your trial project (or clone the repo you want to use for your project into a new directory in your projects directory), then click F1 and select “File: Open Folder…” and select your new directory. 
3. Click F1 again and select “Dev Containers: Add Dev Container Configuration Files…”. Select “Node.js & TypeScript” (or whatever you want really) and make the desired selections for your new project. VSCode will create a `.devcontainer` directory and a `devcontainer.json` config file for you. 
4. When prompted, select “Reopen in Container” to start the project or click F1 and select “Dev Containers: Rebuild and Reopen in Container”.
5. Your VSCode instance is now connected to your new container, which is running everything you selected for your new project. Run commands in your Terminal window on the VSCode instance to test it out. You can run the same commands on a different VSCode instance to see that what is installed inside your Dev Container is contained in the container and not installed elsewhere in your system.
6. If you want to save your Dev Containers config file for future use, you need to select “Add Dev Container Configuration Files” and not “New Dev Container” which will open up a temporary work space for you.
