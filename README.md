# where-is

## Overview

`where-is` is a utility script designed to specifically locate configuration files for a given application. Unlike the `whereis` command, which locates the binary, source, and manual page files for a command, `where-is` focuses on searching common directories where configuration files are typically stored.

Inspired by [what-to-code](https://github.com/joereynolds/what-to-code)

## Comparison with `whereis`

- **whereis**:
  - Locates the binary, source, and manual page files for a command.
  - Searches predefined system directories.

- **where-is**:
  - Specifically searches for configuration files related to an application.
  - Searches user-defined directories known to contain configuration files.

## Installation

To install `where-is`:

```bash
chmod +x where-is
sudo mv where-is /usr/local/bin/
```

or just run the provided `installer.sh` script:

```bash
chmod +x installer.sh
./installer.sh
```
The installer script will copy the where-is script to /usr/local/bin and make it executable.

## Usage
To use where-is, simply provide the name of the application whose configuration files you are looking for. For example:
```
where-is <application_name>
```
#### Options

- `-h`, `--help`: Display this help message and exit.
- `-v`, `--version`: Display the script version and exit.
- `-d`, `--directories`: List the directories being searched and exit.

### Example

```
where-is config.py sddm
```

Output:

```
Searching for configuration files related to 'config.py'...
/etc/skel/.config/qtile/config.py
/home/patermars/.config/qtile/config.py
/home/patermars/.local/share/Steam/ubuntu12_64/steam-runtime-sniper/sniper_platform_0.20240423.85483/files/lib/python3.9/logging/config.py
/home/patermars/.local/share/Steam/ubuntu12_64/steam-runtime-sniper/sniper_platform_0.20240423.85483/files/lib/python3.9/sysconfig.py
/home/patermars/.local/share/Steam/ubuntu12_64/steam-runtime-sniper/var/tmp-39ELR2/usr/lib/python3.9/logging/config.py
/home/patermars/.local/share/Steam/ubuntu12_64/steam-runtime-sniper/var/tmp-39ELR2/usr/lib/python3.9/sysconfig.py
Search complete for 'config.py'.
Searching for configuration files related to 'sddm'...
/etc/pam.d/sddm
/etc/pam.d/sddm-autologin
/etc/pam.d/sddm-greeter
/etc/sddm.conf
/home/patermars/.local/share/fish/generated_completions/sddm-greeter.fish
/home/patermars/.local/share/fish/generated_completions/sddm.fish
Search complete for 'sddm'.
```

where as , if we did:
```
whereis sddm
```
Output:
```
sddm: /usr/bin/sddm /usr/lib/sddm /usr/share/sddm /usr/share/man/man1/sddm.1.gz
```

Display the script version:

```sh
where-is -v
```

Display the help message:

```sh
where-is -h
```

List the directories being searched:

```sh
where-is -d
```

This command will search for configuration files related to `grub` in the following directories:

- `/etc`
- `/etc/default`
- `/usr/local/etc`
- `$HOME/.config`
- `$HOME/.local/share`
- `/opt`

## Script Details

Here's a brief overview of what the `where-is` script does:

1. **Checks if an argument is provided**:
   - If no argument is provided, it displays usage information and exits.
   
2. **Defines directories to search**:
   - An array of directories (`CONFIG_DIRS`) is defined, which includes common locations for configuration files.
   
3. **Parses options**:
   - Supports `-h` or `--help` to display usage information and exit.
   - Supports `-v` or `--version` to display the script version and exit.
   - Supports `-d` or `--directories` to list the directories being searched and exit.
   
4. **Searches for configuration files**:
   - Uses the `find` command to search each directory in `CONFIG_DIRS` for files that match the application name (case-insensitive).
   - Suppresses error messages to avoid cluttering the output.

## Customization

You can customize the `where-is` script by adding or removing directories from the `CONFIG_DIRS` array to suit your specific needs.

## License

This project is licensed under the GNU General Public License v3.0  License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your changes.

## Contact

For any questions or suggestions, feel free to open an issue in the repository or contact the maintainer.

---

Enjoy using `where-is` to easily locate your configuration files!

