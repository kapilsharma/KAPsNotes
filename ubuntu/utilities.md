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
