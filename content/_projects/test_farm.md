---
title: "Android Test Farm"
categories:
  - _projects
---

<a href="https://github.com/zhuyuhui97/loci-android-testbench"><i class="fab fa-github"></i>Github</a>

Android testbench for network-based mobile malware analysis by LOCI team, University of Jinan.

This was developed for our work on network traffic-based mobile malware detection.
To handle a large number of collected apps, We test them on Android guest machines using this project to automatically handle the process of installing, running, and gathering generated network traffic.
We leverage ADB to run numerous commands to manipulate guest devices' Android environments in task loops.

# Features
- Managing and manipulating Android environments through ADB:
    - Concurrently manipulate multiple environments via USB, IP, and emulators. Up to 10 instances for our deployment;
    - Inject ADB commands, shell commands, and Android OS broadcasts;
    - Reset, initialize and clear user traces via recovery-mode and fastboot-mode;
    - Test guest Android environments and push prerequisites automatically.
- Running and testing target apps in guest Android environments:
    - Installing, launching, and removing apps via ADB (or android shell for malware with anti-remove technics);
    - Built-in task queue management for autonomous batch testing tasks.
- Capturing network traffics on device"
    - Raw traffic capturing based on `tcpdump`;
    - MitM attack based on `sslsplit` + `iptables`. (not included in public repo)
- Injecting input events to trigger UI widgets:
    - Random taps & key inputs;
    - Breadth/width traverse-based widget triggering.
- Autonomous task management:
    - Writing gathered files (`.pcap`) to the data storage;
    - Get new tasks from the local file system (extra scripts required).

# Related Works and Literatures
Literature works used dataset collected by this code:
- IEdroid: Detecting Malicious Android Network Behavior Using Incremental Ensemble of Ensembles  
    *Liu et al.*  ICPADS 2021 ([IEEE link](https://ieeexplore.ieee.org/abstract/document/9763749))
- AndroCreme: Unseen Android Malware Detection Based on Inductive Conformal Learning  
    *Zhang et al.*  TrustCom 2021 ([IEEE Link](https://ieeexplore.ieee.org/abstract/document/9724463))
- Effective detection of mobile malware behavior based on explainable deep neural network  
    *Yan et al.* Neurocomputing 2021 ([ScienceDirect Link](https://www.sciencedirect.com/science/article/pii/S092523122031657X))
- Network-based malware detection with a two-tier architecture for online incremental update  
    *Yan et al.* IWQoS 2020 ([IEEE Link](https://ieeexplore.ieee.org/abstract/document/9212829))