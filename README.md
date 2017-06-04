# Data Science Notebook for Udacity's Machine Learning Nanodegree

This is a simple modification of Jupyter's [official datascience notebook](https://github.com/jupyter/docker-stacks/tree/master/datascience-notebook), with the following basic modification(s): 

* `scikit-learn` is downgraded to version `0.17`

## A note on Python versions

Because this extends the standard [data science notebook](https://hub.docker.com/r/jupyter/datascience-notebook/), it is capable of executing both Python 2.7.x and 3.x. Generally, when you open an existing notebook, the correct version kernel (2.7.x) will be selected, but in some cases you may have to change the kernel version for the notebook.

## How to install

### First, install the Docker Community Edition (CE)

The full documentation for how to install Docker [can be found here](https://docs.docker.com/engine/installation/). Use the links below for shortcuts to common operating systems:
* [Debian](https://store.docker.com/editions/community/docker-ce-server-debian)
* [MacOS](https://store.docker.com/editions/community/docker-ce-desktop-mac)
* [Ubuntu](https://store.docker.com/editions/community/docker-ce-server-ubuntu)
* [Windows](https://store.docker.com/editions/community/docker-ce-desktop-windows)

### Get the Docker Compose file

This can be done a couple of ways. If you have `git` installed and are comfortable using it, you can simply clone the repository. If not, you can download the file directly.

So, do _one or the other_ of the below instructions. _NOT BOTH._

#### Clone the git repository

Execute the following commands:

```
$ git clone git@github.com:clockworksoul/mlnd-notebook.git
$ cd mlnd-notebook
```

#### Download the Docker Compose file

Execute the following commands:

```
$ mkdir mlnd-notebook
$ cd mlnd-notebook
$ wget https://raw.githubusercontent.com/clockworksoul/mlnd-notebook/master/docker-compose.yml
```

### Third, pull notebook image

Note that this image contains _a lot_ of useful things, and is quite large: 6.93GB at last check. This step will take some time.

From the `mlnd-notebook` directory, execute the following:
```
$ docker-compose pull
```

This will read the `docker-compose.yml` file, determine which image to pull, and pull it.

## Start the Notebook

Use the `docker-compose` command to start the notebook.

```
$ docker-compose up -d
```

### Set the token (first time only)

The first time you start the notebook (unless if you've removed the container), you'll need to supply a token. You can get this by checking the container's log output:

```
$ docker-compose logs
```

When you do this, you should see something like the following, which includes instructions and a URL:

```
mlnd-notebook |     Copy/paste this URL into your browser when you connect for the first time,
mlnd-notebook |     to login with a token:
mlnd-notebook |         http://localhost:8888/?token=70a75ae7a24272d0f2d239a84e87ebf06f859abb4181ef9f
```

Simply follow the directions and copy/paste the URL into a browser.

## Connect to the notebook

Simply browse to the following URL: `http://localhost:8888`

If you see a message requesting a password or token, repeat the _Set the token_ instructions above.

## Get files into the notebook

When you start the notebook, you'll notice a `files` directory has been created for you. Anything that you add to this directory will be accessible to your notebook. 

## Shut down your notebook

Very simple:

```
$ docker-compose stop
```
