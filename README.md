# Env

Env is an [Ash](https://github.com/ash-shell/ash) module that loads a .env file in your current directory.

# Getting Started

Env is part of the Ash core, so you can just start using it in your Ash modules. Env also automatically runs whenever Ash starts up to load your specified environment file.

# Features + Usage

## CLI

### Get Current Environment

To figure out what env file will be loaded when Ash starts up, run the following command:

```sh
ash env:get
```

### Set Environment

To set the env file that will be loaded when Ash starts up, run the following command:

```sh
ash env:set $env_file_name
```

Where `$env_file_name` is the name of the file you would like loaded.

## Public Interface

There's no need to import this module to use its public interface, as it is imported in Ash core.

### Get Current Environment

You can run the function `Env__get_filename` to get the env filename that will be loaded when Ash starts up.

```sh
filename=$(Env__get_filename)
```

### Set Current Environment

To set the env file that will be loaded when Ash starts up, run the following command:

```sh
Env__set_filename
```

### Load Current Environment

To load the environment file in the current directory, you can run the following command:

```sh
Env__load
```

## License

[MIT](LICENSE.md)
