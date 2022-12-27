![Banner](https://https://github.com/DeltaOrion/Gladia2.0/branding/Banner.png)
# Gladia 2.0

Gladia 2.0, is a 1:1000 scale replica of Earth, featuring Towny, SiegeWar, and an active economy. With a wide range of gameplay options and a friendly community, there's something for everyone on Gladia 2.0. We welcome players of all skill levels and encourage you to join us and start exploring the world of Gladia 2.0. Simply join at ceedric.com to get started!

## Installation

Clone the repository into the folder Gladia2.0
```sh
sudo apt-get install screen -y
git clone https://github.com/DeltaOrion/Gladia2.0
```

Unless you connect the server to a bungeecord network it may not work as expected. To fix this you will need to edit the spigot.yml and change `settings.bungeecord` to false. If you want to host this on an actual server you may need to create firewall rules to open certain ports.


The following plugins are connected to external databases. In order to get them to work correctly you will either need to change their config to stop using an external database or to set up your own MariaDB database.
  - LuckPerms
  - CoreProtect
  - Votifier

The following plugins are missing from this repository as they are paid however their configs can still be found
  - Matrix Anticheat

Connect to the server on localhost:25564

### Map Installation

In the root directory of the repository perform the following commands

```sh
sudo apt-get install screen zip wget -y
```

```sh
mkdir map
cd map
wget -i ../map_1_1000.txt
cat earth_1-1000_survival_without-features_1-16-5.zip.* > map.zip
unzip map.zip
```

Now move the newly unzipped folder into the world folder and remove all of the junk zip files.
```sh
cd ..
mv map/earth_1-1000_survival_without-features_1-16-5 world
rm -r map
```

There is no guarentee that the links in map_1_1000.txt will work correctly. In that case you will have to grab new links from https://earth.motfe.net/map-downloads/ and paste them in the file.
You may also need to change the cat and the mv commands to match the actual names of the downloaded files.

### Preloading The Chunks

Preloading the chunks is important for reducing the lag on release as otherwise players when walking through the world will be generating chunks which is an expensive operation. To preload the chunks use the following command in the minecraft console.

```
chunky corners <x1> <z1> <x2> <z2>
chunky start
```

where x1,z1 and x2,z2 are the two corners of the world. In the case of the 1:1000 earth map the corners are at
  - 18430, -9215
  - -18430 9214


### Rendering Dynmap

To render the dynmap run the following command on your minecraft console
```
dynmap fullrender
```
This command will render all loaded chunks in all zoom levels.
- The amount of zoom can be defined in worlds.txt in the config option `extrazoomout`. 
- If you want it to render fast change the setting `'parallelrendercnt` in configuration.txt. Higher settings require more processing power.

### LuckPerms Installation

The permissions are currently stored in a yaml database. Although you can technically use luckperms like this it is better to use a MariaDB database. To do this run the following commands in your minecraft console

```
lp export permissions --without-users
```

## Other Repositories

The following repositories are linked to the project and contain other important plugins
- https://github.com/DeltaOrion/GladiaWebsite - The website for help.ceedric.com
- https://github.com/DeltaOrion/GladiaClonePlugins - Any custom plugins used for the server

## Launch

To launch the server navigate to the root folder and run the start.sh script. This will launch the server in a new screen. You can also use abrir.sh to launch it out of a screen.

First add permissions to run the file
```sh
chmod u+x start.sh
chmod u+x abrir.sh
```

Then launch the server

```sh
./start.sh
```

## Contributing

Pull Requests

If you make any changes or improvements to the plugin which you think would be beneficial to others, please consider making a pull request to merge your changes back into the upstream project. (especially if your changes are bug fixes!)
