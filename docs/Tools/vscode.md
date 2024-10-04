---
tags:

---
# VSCode

[Video Tutorial - VSCode](https://code.visualstudio.com/docs/getstarted/introvideos)  

## Connecting VSCode running on Windows, to an Azure VM

Install VSCode onto your machine from the Microsoft Store.

### Starting and Stopping the VM
1. Install the `Thunder Client` VSCode extension.
2. Create a new request with the Azure URL, it will look something like this: `https://prod-29.australiasoutheast.logic.azure.com:443/workflows/<hash_number>/triggers/manual/paths/invoke?api-version=2016-10-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=AHJ-<hash_number>`
3. The query parameters will fill themselves in, change the request from GET to POST and add the following body:
`{"action": "start", "vm": "<your vm name>"}`
4. Click “Send” and wait for the OK response.
5. Right click on the POST activity item in the left list and rename the item to “Start Azure VM”.
6. Right click on the POST activity item again and select duplicate. 
7. Update one of the items in the list, change the name to “Stop Azure VM” and update the body to replace “stop” instead of “start”.
8. You will now have these start and stop calls available to you anytime you open Thunder Client in VSCode. Remember to stop the VM at the end of the day or when you no longer need it running.

### Connecting to the VM
1. Create a new directory `C:\Users\<your username>\.ssh`
2. Follow the instructions in [SSH - Generate Key-Pair Instructions](./ssh.md) to create a new ssh key-pair in your new directory.
3. Ensure the public key is added into your Azure VM.
3. Create a new file `C:\Users\<your username>\.ssh\config` with the following contents:
```
Host azure-vm
    HostName <your Azure host IP>
    User azureuser
    IdentityFile "C:\Users\<your username>\.ssh\<file name>.pem"
```
4. Install the `Remote – SSH` VSCode extension.
5. Click the green `><` symbol at the bottom left of the VSCode window, select “Connect to Host…” and your added host should appear in the list.
6. Select “azure-vm” and wait for a new window to open and select the correct options.
7. Your VSCode instance is now connected to the VM and you will be able to browse files and create a new project on the VM.
