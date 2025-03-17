# Building WebLyne DOOM®

## Windows

### Clone WebLyne DOOM®
```bash
git clone https://github.com/Voltarian-Dev-Team/WebLyne.Doom.git
```

### Enter the WebLyne DOOM® Directory
```bash
cd WebLyne.Doom
```

### Install Dependencies

1. **Chocolatey:**
   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
   ```

2. **Emscripten**
   ```cmd
   choco install emscripten
   ```

### Compile WebLyne DOOM®
Run `build.cmd` to Compile WebLyne DOOM®