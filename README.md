# Onix Micro VM

Small VM containing a collection of cybersecurity tools.

## Usage

```bash
git clone https://github.com/onix-sec/onix-vm
```

Edit `flake.nix` to choose the tools you need.

```bash
nix run .
```

Note: the VM disk will be created in the current directory as `onix.qcow2`.

VM defaults can be configured in `modules/microvm.nix` and are:

- 2 vCPU
- 4Gb of RAM
- 256M disk space

### SSH

SSH is enabled by default:

```bash
ssh -p 2222 user@localhost
```

## License

Onix Micro VM is licensed under [MIT](./LICENSE).
