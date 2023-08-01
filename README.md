# smartDAT-Test

## Description

This is a test repository for the smartDAT project. It contains a simple LUA unit test for the smartDAT library. The test is performed on a simple data set, which is also included in this repository. This test repository is based on the [LUA Unit v3.2.1](https://luaunit.readthedocs.io/en/luaunit_v3_2_1/) framework. The framework is included in this repository.

## Requirements

The test requires the [smartDAT](https://gitlab.sickcn.net/GBC02/bu29/RPE/dat) project. The project must be located in the directory `SRC\dat\` within this repository. The test also requires the [LUA v5.3](https://www.lua.org/) interpreter. The interpreter is not included in this repository.

## Setup local machine

To setup the local machine, you need to install the MSYS2 environment. The MSYS2 environment is used to install the LUA interpreter. The MSYS2 environment also contains the pacman package manager for the MSYS2 environment. The package manager is used to install the LUA interpreter.

The MSYS2 environment can be downloaded from the [MSYS2 homepage](https://www.msys2.org/). The MSYS2 environment is installed by running the `msys2.exe` file. The installation directory must be `C:\msys64\`.

To install the mingw-w64-x86_64-gcc package, you need to run the following command in the MSYS2 environment. This package is required to install the LUA interpreter.

	
```bash
pacman -S mingw-w64-x86_64-gcc 
```

> **Note:** If you face problems with SSL certifactes, you need to modify the `pacman.conf` file. The file is located in the `C:\msys64\etc\` directory. You need to change the following line in the file.
>
>From:
>
>```bash
>#XferCommand = /usr/bin/curl -L -C - -f -o %o %u
>```
>
>To:
>
>```bash
>XferCommand = /usr/bin/curl -k -L -C - -f -o %o %u
>```

To install the LUA interpreter, you need to run the following command in the MSYS2 environment. This command will install the LUA interpreter and the LUA-Rocks package manager.

```bash
pacman -S mingw-w64-x86_64-lua53
```

To install the LUA Rocks package manager, you need to run the following command in the MSYS2 environment.

```bash
pacman -S mingw-w64-x86_64-luarocks
```

## Setup local environment

To setup the local environment, you need to clone this repository. The repository contains the test and the smartDAT project. The smartDAT project is included as a submodule. To clone the repository with the submodule, you need to use the `--recurse-submodules` option.

```bash
git clone --recurse-submodules https://gitlab.sickcn.net/GBC02/bu29/RPE/dat-test.git
```

If you have already cloned the repository without the submodule, you can use the following command to clone the submodule.

```bash
git submodule update --init --recursive
```

## Usage

To run the test, you need to start the task in the smartDAT project. The task is called "smartDAT-Test". The task will load the data set and run the test. The test will print the results to the console.

## Hardware Emulation

The API of the smartDAT project is emulated in the test. The emulation is done by the `/API` modules. These represent the used CROWN's of the API. The emulation is not complete. Only the functions used in the test are emulated. In this way the test can be executed without the hardware.

If new parts of the API are used in the smartDAT project, they must be emulated in the test. The emulation is done by creating a new module in the `/API` directory. The module must be named after the CROWN of the API. The module must contain a table with the same name as the module. The table must contain the functions of the CROWN. The functions must be empty and return the expected return values.

## Creating a new test

Each test is grouped in a table within the test module. The name of the test module is similar to its module in the smartDAT project. If the module does not exist yet, the `_template.lua` file can be used to create a new test module.

The modules under test must be required to achieve the function under test.

### Local Functions

The test module can test local functions. These functions must be exported to the test module. This can be done by adding the function to the `localFoos` table. The table is located at the top of the test module.
