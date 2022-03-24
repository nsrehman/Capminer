# CapMiner

> Ravencoin miner for Windows supporting NVIDIA cards 

## About

CapMiner is a proof-of-work GPU miner dedicated for [Ravencoin](https://ravencoin.org/). Currently, the project supports mining on Windows OS with NVIDIA GPUs only. This project is forked from RavenCommunity's kawpowminer and implements a benchmarking system to maximize profit.


## Tables of Contents
* [Requirements](#requirements)
* [Building](#building)
* [How to Run](#how-to-run)
    * [Connecting to a Pool](#connecting-to-a-pool)
* [APIs Used](#apis-used)
* [F.A.Q.](#faq)

## Requirements
1. Install [MSI Afterburner](https://www.msi.com/Landing/afterburner/graphics-cards) and configure profiles seen in next section.
2. Ensure you have nvidia-smi by opening commandline, type nvidia-smi, and press enter. Output should look something like below.
3. Install [GNUPlot](http://www.gnuplot.info/) Homepage -> Download -> Primary download site on SourceForge -> latest (i.e. 5.4.3)

**nvidia-smi example:** <br />
<img src="images/nvidia-smi.png" width="750" height="400">

Depending on the type of release chosen, extra steps may be required. That being said, the executable variant is simple to implement on any system fullfilling the requirements.

| Requirements |                                          |
| ------------ | ---------------------------------------- |
| OS           | Windows 10                               |
| GPU          | GEFORCE GTX 10xx+                        |
| Drivers      | [Latest Recommended by GeForce Experience](https://www.nvidia.com/en-us/geforce/drivers/) |

Any CUDA issues may be resolved by installing the latest [CUDA Toolkit](https://developer.nvidia.com/cuda-downloads).

## MSI Afterburner
By default, MSI Afterburner allows the creation of 5 profiles. You must set the first profile as your stock settings. For the other 4 profiles, change the Memory clock speed to the following.

**Profile 1:** <br />
<img src="images/profile1.png" width="750" height="400">

**Profile 2:** <br />
<img src="images/profile2.png" width="750" height="400">

**Profile 3:** <br />
<img src="images/profile3.png" width="750" height="400">

**Profile 4:** <br />
<img src="images/profile4.png" width="750" height="400">

**Profile 5:** <br />
<img src="images/profile5.png" width="750" height="400">

## Installation

As of now, CapMiner only supports deployment on **Windows** systems supplied with GPUs from NVIDIA's mainline releases, such as the *10xx line*, *20xx line*, and *30xx line*.

### Windows
[Releases][Releases]

The latest builds for windows can be found in the [Releases] section as an executable or source download. Individuals may choose either option to run CapMiner. Explanations on building the source code can be found in the next section.

## Building

If you choose the source download over the executable release, you **must** follow these steps in order to compile a build and use CapMiner. There are additional requirements as well if this route is chosen. First, place the downloaded source code to a convient location such as *C:\Users\Me\CapMiner*.

1. Install [Visual Studio Community 2019](https://visualstudio.microsoft.com/vs/older-downloads/) (ex// version 16.11) 
   **With C++ Cmake Tools for Windows**
2. Install [Strawberry Perl](https://strawberryperl.com/) to C:\Perl
3. Install [Git](https://git-scm.com/download/win)
4. Open "Developer Command Prompt for VS 2019"
5. Enter the following:
```
cd C:\Users\CHANGE_THIS_DIRECTORY\CapMiner
git init
git submodule update --init --recursive
mkdir build
cd build
cmake -G "Visual Studio 16 2019" -A X64 -H. -Bbuild -DETHASHCUDA=ON -DAPICORE=ON ..
cd build
cmake --build . --config Release
```

## How to Run

If you have opted for building over installing the executable release, confirm that the build has been successful by checking that **capminer.exe** has been created in the following location:
```
cd C:\Users\CHANGE_THIS_DIRECTORY\CapMiner\build\build\CapMiner\Release
```

### Connecting to a Pool

1. Launch Command Prompt
2. Navigate to **capminer.exe** directory:
```
cd C:\Users\CHANGE_THIS_DIRECTORY\CapMiner\build\build\CapMiner\Release
```
3. Enter the following:
```
kawpowminer.exe -P stratum+tcp://<wallet>.worker@rvn.cruxpool.com:9999
```
Replace <wallet> with your own mining address to start earning for yourself. Feel free to replace "worker" to name your miner something meaningful.

4. If successful, CapMiner will initialize and begin to run as shown:
   
**Miner spinning up:** <br />
<img src="images/start.png" width="750" height="400">
   
**Benchmark start:** <br />
<img src="images/benchstart.png" width="750" height="400">
   
**Benchmark complete and miner resumes as usual:** <br />
<img src="images/benchdone.png" width="750" height="400">
   
**Graphs of benchmark data open as bench completes:** <br />
<img src="images/benchgraphs.png" width="750" height="400">

## APIs and Sofware Used
### Hunter
Dependency manager running within CMake during configuration step. Downloads and builds all dependencies from source. This is to make the project independent of system libraries.
### CMake
Used for C/C++ projects to control the software compilation process with configuration files and to set up libraries and project files making the project independent of the compiler/build environment.
### Boost 
General C++ source library with various functionality including IO timers and threads.
### Cable
### CLI11

### OpenSSL
### JsonCPP
## F.A.Q.

[Releases]: https://github.com/capminer/capminer/releases
