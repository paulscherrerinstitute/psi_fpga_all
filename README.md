# General Information

## Maintainer
Oliver Bründler [oliver.bruendler@psi.ch]

## Changelog
See [Changelog](Changelog.md)

## Purpose of the Repository
This repository is a collection-repo. It contains all FPGA related libraries as submodules in exactly the directory structure required. The directory structure is important because different libraries reference to each other using relative paths.

The repository will be updated regularly (roughly every 3 months) but it may not always contain the vey-newest state of all submodules in between the updates. You can update submodules individually if required.

Alternatively only the repositories used can be checked out manually into the directory structure described below.

* TCL
  * [PsiSim](https://github.com/paulscherrerinstitute/PsiSim) 
* VHDL
  * [psi\_common](https://github.com/paulscherrerinstitute/psi_common)
  * [psi\_tb](https://github.com/paulscherrerinstitute/psi_tb)
  * [psi\_fix](https://github.com/paulscherrerinstitute/psi_fix)
  * [en\_cl\_fix](https://github.com/paulscherrerinstitute/en_cl_fix) (fork of a a library provided by Enclustra GmbH)
    * [Original Location](https://github.com/enclustra/en_cl_fix)
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



