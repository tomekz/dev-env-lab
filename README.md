The goal of this repo is to have a sandbox environment where I can test out my local dev environment setup including but not only nvim configuration or my zsh customizations

## Start

* start development container

```bash
docker-compose up --build
```

* exec into container

```
docker exec -it dev-env-lab-app-1 bash
```

* clone and install dotfiles (requires ssh key to be added to github) 

```
git@github.com:tomekz/dotfiles.git
```

## Nix

Getting started with nix

Start a docker shell with nix exposing workdir directory

```bash
mkdir workdir
docker run -it -v $(pwd)/workdir:/workdir nixos/nix
```

Once inside the container, create a new nix shell

```bash
nix-shell -p neovim
```

# TODO

- [ ] install nix
- [ ] setup direnv and add .envrc
- [ ] combine direnv with nix using nix-direnv plugin
- [ ] test loading sample nix shell 

