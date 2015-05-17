# Ubuntu Utilities

Below are not must have programs for dev box but good to have.

## Dictionary

There are many open dictionary in linux world. Installing these dictionary need three things:

* **dictd** It is the server to serve dictionary.
* **dict** It is command line utility which help looking words on command line
* **Dictionary database** are needed by dictd server to lookup searched word.

Additionally we can also some grafical user interface (GUI) programs to use dictionary which internally uses dictd server and/or Dictionary database.

### Installing dictd server and dict client

Before we can install dictd server, we must add universal repo, if it is not added already.

```bash
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
```

Then run following commands to install `dictd` server and `dict` client.

```bash
sudo apt-get install dict
sudo apt-get install dictd
```

### Installing dictionary database.

There are many dictionary databases available. Three databases `Gcide`, `wordnet` and `devil` are most used and most covered. We can install them as follow

```bash
sudo apt-get install dict-gcide
sudo apt-get install dict-wn
sudo apt-get install dict-devil
```

Along with above databased, we may also install English Thesaurus database (moby-thesaurus)

```bash
sudo apt-get install dict-moby-thesaurus
```
### Using dictionary on command line.

If we have `Guake` installed, we can press `F12` to quickly use commandline.

```bash
dict "word"
```

If we want to use any specific database to search a word, we can use `-d` option:

```bash
dict -d wordnet "word"
```

### Dictionary GUI

#### Gnome Dictionary

```bash
sudo apt-get install gnome-dictionary
```

Gnome dictionary by default look words online. If internet is not always available on the system, we can configure it to use local dictd server. To do this, start Gnome dictionary and open Edit > preferences. Under dictionary preferences, click `add` button. Then click `add source` and add host name (localhost), port (2628) and other info and click add button.

#### Golden dict

Golden dict is a good GUI that works with dictd server. It also allow quick lookup, which is handy at many times.

```bash
sudo apt-get install goldendict
```

## Power management (Suspend and hibernate)

While using ubuntu, there are times when we have to stop our work. However there could be times when we don't want to loose our open programs so we kept laptop open, even if we goes away for long time (10 minutes to hours). Instead of keeping laptop on, we can either suspend or hibernate our laptop.

**Difference between suspend and hibernate**

When we suspend our system, it keep information of all open programs in RAM and switch off processor, monitor etc. This saves a lot of power and when you are back, it restore all programs quickly. However it keeps power to RAM on and not a good option if you are going away for long time (more then 30 minutes)

If you plan to go away for longer time, and still don't want to close your programs, hibernate is the solution. During hibernation, system copy all RAM contents to harddisk and power off monitor. During hibernate state, no power will be used. When you are back, it read harddisk and restore RAM (open programs).

### Suspending system.

Under Ubuntu system menu (Top right), there is `suspend` option, just above Shut Down. We can also configure out system to suspend when we close lid of the laptop.

To configure, go to `System settings > Power`. There is an entry `When the lid is closed`. Select `suspend` in the drop down against that setting.

### Hibernate system

Unfortunately Hibernate setting is not enabled in Ubuntu 12.04 and higher by default. This is annoying but done due to some systems which comes with Ubuntu by default but do not have hibernate support.

So first we must check if our system support hibernate feature. Keep some programs open and run following command.

```bash
sudo pm-hibernate
```

It will look like your system is shut down. Switch on system again and if all open programs restored (along with unsaved work), your system support hibernate. Run following commands:

```bash
sudo -i

cd /var/lib/polkit-1/localauthority/50-local.d/

gedit com.ubuntu.enable-hibernate.pkla
```

> Note: If above path do not work, try using `/etc` in place of `/var/lib`.

In Gedit editor, write follow lines and save:

```bash
[Re-enable hibernate by default in upower]
Identity=unix-user:*
Action=org.freedesktop.upower.hibernate
ResultActive=yes

[Re-enable hibernate by default in logind]
Identity=unix-user:*
Action=org.freedesktop.login1.hibernate
ResultActive=yes
```

Restart your system and there must be option of `hibernate` between suspend and shut down under system menu.
