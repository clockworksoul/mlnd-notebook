# Data Science Notebook for Udacity's Machine Learning Nanodegree

This extends Jupyter's [official base notebook](https://github.com/jupyter/docker-stacks/tree/master/base-notebook) to install Python 2.7 and Python 3 (both kernels are available) and install following packages:

* `keras 2.0`
* `matplotlib 2.0`
* `numexpr 2.6`
* `opencv 3.2`
* `pandas 0.19`
* `scipy 0.19`
* `scikit-learn 0.18`
* `scikit-image 0.12`
* `tensorflow 1.0`
* `tqdm 4.15`

If you feel that a package is missing or would otherwise be useful, please feel free to [create an issue](https://github.com/clockworksoul/mlnd-notebook/issues/new), or message me (`@ClockworkSoul`) directly on the MLND Slack.

## A note on Python versions

This image is capable of executing both Python 2.7.x and 3.x kernels. Generally, when you open an existing notebook, the correct version kernel (2.7.x) will be selected, but in some cases you may have to change the kernel version for the notebook.

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

## Start the Notebook

Use the `docker-compose` command to start the notebook. From the `mlnd-notebook` directory, execute the following:

```
$ docker-compose up --build
```

Note that the first time you run this, Docker will pull the entire image. The image contains _a lot_ of useful things, and is quite large: 6.93GB at last check. This will take some time.

Also, whenever you execute this command, Docker will check for and automatically updates to the image, but future downloads won't be nearly as large.


### Set the token (first time only)

The first time you start the notebook (unless if you've removed the container), you'll need to supply a token. Simply follow the instructions provided in the output, which should look something like the following:

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
