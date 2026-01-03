# Azure Secure Web App (Zero Trust + WAF + Monitoring)

## Overview
This project demonstrates a secure, production-style Azure web application architecture using **Zero Trust principles**.
It includes **WAF protection**, **private networking**, and **centralized monitoring** using Azure Monitor and Log Analytics.

## Objectives
- Protect inbound traffic using **Azure Application Gateway (WAF v2)**
- Deploy application in a **private network** (no direct public access to backend)
- Apply **network security controls** using NSGs and subnet segmentation
- Enable centralized **logging and monitoring** using Log Analytics + diagnostic settings
- Deliver repeatable deployment using **Azure CLI + PowerShell**

## Architecture Overview
![Architecture](architecture/azure-secure-webapp-architecture.png)

**Traffic Flow:** Internet → App Gateway (WAF) → Private Backend → Logs to Log Analytics

## Repository Structure
- `cli-scripts/` : step-by-step deployment scripts
- `architecture/` : diagrams
- `evidence-screenshots/` : proof (portal + CLI outputs)
- `monitoring/` : KQL queries + log validation

##Governance & Compliance

Azure Policy was used to enforce cloud security and governance standards across the subscription. 
The CIS Microsoft Azure Foundations Benchmark (built-in initiative) was assigned at subscription scope 
to ensure alignment with industry best practices for identity, networking, logging, and resource security.
