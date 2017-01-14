# Installation

On mac, download the mongo db tar file and extract it with command

```bash
tar xvf <filename.tar>
```

## Data directory

By default, mongo db save its data in `\data\db` folder. Thus we can create that folder with command `sudo mkdir -p \data\db`.

We also need to provide write access to these folder. We can do that with command `sudo chmod 777 -R \data`.

## Set path

Mongo db executable files can be found in bin folder of extracted mongo folder. To run them, we must go the download folder. An alternate way is to copy all the mongo commands from bin folder to `\usr\local\bin` folder.

## Running mongo server

To start mongo server, enter command `mongod`. To connect mongo server through mongo shell, run command `mongo`.
