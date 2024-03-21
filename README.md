### Install Chocolatey

> In Powershell (Administrator)

```powershell

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

```
> Powershell might need to be reopened

### Install Powershell Core
```powershell

choco install powershell-core -y

```


### Install everything

```powershell

choco install az.powershell -y
choco install azure-cli -y
choco install azure-functions-core-tools -y
choco install vscode -y
choco install dotnet-sdk -y

```

### Update all (Not needed now)

```powershell
## Check, run in "old" powershell if powershell-core needs update
choco upgrade all --noop

choco upgrade all -y
```


Visual Studio Code Extensions:
    Azure Pipelines