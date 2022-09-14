---
title: IoT Malware Intelligence Collecting System
categories:
  - _projects
---

<a href="https://github.com/zhuyuhui97/relaypot"><i class="fab fa-github"></i>Github</a>

Transport-layer honeycloud framework for IoT malware research by LOCI team, University of Jinan.

This project provides a simple reverse proxy-like framework to implement high- or low-interaction honeycloud systems for various TCP-based application layer protocols.
The *frontend* module works as a remote server to simply forward requests from adversaries to the *backend* server.
*Agents* in the *backend* server will parse the requests and generate a response based on defined rules, or forward requests to backing services.

This framework was inspired by [Cowrie](https://github.com/cowrie/cowrie) and powered by [Twisted](https://github.com/twisted/twisted).

# Features
- TCP conversation management and payload logging;
- Event-driven framework for handling TCP requests;
- Modular design for high- or low-interaction decoys (*agents*) and log writers;
    - High-interaction agent working with backing devices as a transport layer proxy.
    - Low-interaction decoys based on response databases.
    - Event-based log writer model build for ElasticSearch.
- Launch as twistd module or integrate with `systemd`.

# Related Works and Literatures

Literature works used datasets collected by this code:

- IoT Botnet Detection framework from Network Behavior based on Extreme Learning Machine  
  *Hasan et al.* INFOCOM WKSHPS 2022 ([IEEE link](https://ieeexplore.ieee.org/abstract/document/9798307))

- Mining Function Homology of Bot Loaders from Honeypot Logs  
  *Zhu et al.* In progress ([arXiv Link](https://arxiv.org/abs/2206.00385))