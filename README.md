# Xilinx ISE WebPack 14.7 installation helpers

After Wikipedia:

> Since 2012, Xilinx ISE has been discontinued in favor of [Vivado Design Suite](https://en.wikipedia.org/wiki/Xilinx_Vivado) that serves the same roles as ISE with additional features for [system on a chip](https://en.wikipedia.org/wiki/System_on_a_chip) development.[[8\]](https://en.wikipedia.org/wiki/Xilinx_ISE#cite_note-Xilinx-Inc-May-2012-10-K-8)[[9\]](https://en.wikipedia.org/wiki/Xilinx_ISE#cite_note-9) Xilinx released the last version of ISE in October 2013 (version 14.7), and states that "ISE has moved into the sustaining phase of its product life cycle, and there are no more planned ISE releases."[[1\]](https://en.wikipedia.org/wiki/Xilinx_ISE#cite_note-lastrel-1)

As such, ISE gets no updates and is notoriously annoying to setup on modern Linux box (and I want to use it occasionally for my Spartan-3 boards). Each time I want to setup ISE on my PC I end up googling around for all the necessary hacks. To make my life easier, I've created  this repository. It compiles various solutions that can be found elsewhere.

## Building the Docker image

The easiest way to run it these days is to use Docker running some older distro, connecting to X11 server running on the host. 

How to build the image:

* download `Xilinx_ISE_DS_Lin_14.7_1015_1.tar` file from AMD (you need to register on the site first) into this directory

  ```sh
  $ sha1sum Xilinx_ISE_DS_Lin_14.7_1015_1.tar
  4a1d86acd78854b039c88c429854612823942977  Xilinx_ISE_DS_Lin_14.7_1015_1.tar
  ```

* build the container image with

  ```sh
  $ docker build -t ise:14.7 .
  ```

  

 

