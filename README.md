# Installing My required application in a new system

### This installation process is based on an Kubuntu 20.04 Focal Fossa installation

- Pre-Installation Step

  - Set NOPASSWD: in sudoers file for users in sudo group (usually visudo)

  - install all nedded packages for build dmenu and st

    - ```bash
      sudo apt install -y build-essential libx11-dev libxinerama-dev libxft-dev libharfbuzz-dev
      ```

  - Get My dmenu patch from https://github.com/umbe77/dmenu and install it with sudo make clean install

  - Get My st patch from https://github.com/umbe77/st and install it with sudo make clean install

- Run ./install.sh
- Post-Intallation commands
  - Install exa by hand and resource zsh
  - run 004-postinstall.sh
  - Install nvm and node
    - ```bash
      curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
      ```
    - ```bash
      nvm install 12` in order to install nodejs 12
      ```
