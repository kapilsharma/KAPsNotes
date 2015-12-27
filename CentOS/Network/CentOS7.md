Z# Enabling network in Cent OS 7

First, type “nmcli d” command in your terminal for quick list ethernet card installed on your machine:

```bash
[admin@phpreboot admin]# nmcli d
DEVICE  TYPE      STATE         CONNECTION
p2p2    ethernet  disconnected  --
lo      loopback  unmanaged     --
wlp3s0  wifi      unmanaged     --
```

- Type “nmtui” command in your terminal to open Network manager. After opening Network manager chose “Edit connection” and press Enter (Use TAB button for choosing options).
- Now choose you network interfaces and click “Edit”.
- Choose “Automatic” in IPv4 CONFIGURATION and check Automatically connect check box and press OK and quit from Network manager.
- Reset network services:

```bash
[admin@phpreboot admin]# service network restart
Restarting netwrok (via systemctl):             [ OK ]
[admin@phpreboot admin]#
```

- Run command `ping 8.8.8.8` to test.
- For better test, install some package form internet, say `vim` that we generally need.

```bash
[admin@phpreboot admin]# yum install vim-X11 vim-common vim-enhanced vim-minimal
```
