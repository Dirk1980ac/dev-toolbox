# dev-toolbox

## Background

### Description

I do very much IoT development and use BootC images in this environment which
are mostly read only. Thios toolbox contains tools which I do not want to
install directly into these images for various reasons, mostly to keep them as
small as possible.

### This is why do I not use the toolbox container image from Fedora as base image

Size. It's all about site. The IoT devices I develop for are often connected to
the internet via mobile networks and a lot of these devices have limited data plans, so having a large footprint is not a good idea.  

The fedora-toolbox image is quite large and contains much stuff I don't need for
my use cases.  

## How to use

### Prerequisites

- Toolbox package installed on your machine.

### Run the toolbox

Just run:

```sh
toolbox create --image docker.io/dirk1980/dev-toolbox
```

This will create a new toolbox container based on the image `docker.io/dirk1980/dev-toolbox`.  
  
Enter the toolbox with:

```sh
toolbox enter dev-toolbox
```
