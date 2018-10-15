# General Information

## Maintainer
Oliver Bründler [oliver.bruendler@psi.ch]

## Authors
Oliver Bründler [oliver.bruendler@psi.ch]

## Purpose of the Repository
This repository is a collection-repo. It contains all FPGA related libraries as submodules in exactly the directory structure required. The directory structure is important because different libraries reference to each other using relative paths.

Alternatively only the repositories used can be checked out manually into the directory structure described below.

* TCL
  * [PsiSim](https://github.com/paulscherrerinstitute/PsiSim) 
* VHDL
  * [psi\_common](https://github.com/paulscherrerinstitute/psi_common)
  * [psi\_tb](https://github.com/paulscherrerinstitute/psi_tb)
* Python
  * [PsiPyUtils](https://github.com/paulscherrerinstitute/PsiPyUtils)
  * [IseScripting](https://github.com/paulscherrerinstitute/IseScripting)
  * [VivadoScripting](https://github.com/paulscherrerinstitute/VivadoScripting)
  * [TbGenerator](https://github.com/paulscherrerinstitute/TbGenerator)

## Cloning
Because the repository contains submodules, it must be cloned with the *--recurse-submodules* option:

```
git clone --recurse-submodules https://github.com/paulscherrerinstitute/psi_fpga_all
```



