# Projeto de Monitoramento do Nginx para a Compass UOL | Atividade Prática 1 #PB - Novembro 2024 | DevSecOps

Este repositório contém um tutorial detalhado para:

- Instalar o WSL (Windows Subsystem for Linux) no Windows.
- Criar uma instância EC2 na AWS.
- Instalar o NGINX na instância EC2.

## Índice

1. [Instalação do WSL no Windows](#instalação-do-wsl-no-windows)
2. [Criação de uma Instância EC2 na AWS](#criação-de-uma-instância-ec2-na-aws)
3. [Instalação do NGINX na Instância EC2](#instalação-do-nginx-na-instância-ec2)
4. [Conclusão](#conclusão)

---

## 1. Instalação do WSL no Windows

O Windows Subsystem for Linux (WSL) permite que você execute um sistema Linux completo no Windows. Para instalar o WSL, siga os passos abaixo:

### Habilitar o WSL:
1. Abra o PowerShell como Administrador e execute o comando:

    ```bash
    wsl --install
    ```

### Escolher uma Distribuição Linux:
1. Após reiniciar o sistema, acesse a Microsoft Store e selecione uma distribuição Linux, como o **Ubuntu 20.04 LTS**.

### Configuração Inicial do WSL:
1. Após a instalação, abra a distribuição Linux instalada (como o **Ubuntu**) e configure o nome de usuário e senha para o ambiente Linux.

### Atualizar o Sistema WSL:
1. No terminal da distribuição Linux (por exemplo, Ubuntu), execute os seguintes comandos para atualizar:

    ```bash
    sudo apt update
    sudo apt upgrade
    ```

---

## 2. Criação de uma Instância EC2 na AWS

Para criar uma instância EC2 na AWS, siga os passos abaixo:

### Acessar o Console da AWS:
1. Entre no [Console da AWS](https://aws.amazon.com/console/).

### Criar uma Instância EC2:
1. No Console da AWS, acesse **EC2 > Launch Instance**.
2. Selecione uma **Amazon Machine Image (AMI)**, como o **Ubuntu 20.04 LTS**.
3. Escolha o tipo de instância, por exemplo, **t2.micro** (instância gratuita).
4. Em "Key Pair", crie ou selecione um par de chaves para acessar a instância.
5. No "Security Group", permita tráfego nas portas **22 (SSH)** e **80 (HTTP)**.

### Conectar-se à Instância via SSH:
1. Após a criação da instância, obtenha o **IP público** da mesma.
2. No terminal (WSL ou outro terminal), conecte-se via SSH com o comando:

    ```bash
    ssh -i "caminho/para/sua/chave.pem" ec2-user@ip-da-instancia
    ```

---

## 3. Instalação do NGINX na Instância EC2

Agora, vamos instalar o NGINX na nossa instância EC2.

### Conectar-se à Instância EC2:
1. Se ainda não tiver feito isso, conecte-se à instância EC2 conforme o passo anterior.

### Instalar o NGINX:
1. Atualize os repositórios de pacotes e instale o NGINX com os comandos:

    ```bash
    sudo apt update
    sudo apt install nginx -y
    ```

### Iniciar o Serviço NGINX:
1. Após a instalação, inicie o serviço NGINX com o comando:

    ```bash
    sudo systemctl start nginx
    ```

### Verificar se o NGINX está Funcionando:
1. No navegador, insira o **IP público** da instância EC2. Você verá a página padrão de boas-vindas do NGINX.

---

## 4. Conclusão

Nesta atividade, configuramos uma instância EC2 na AWS com NGINX e Git para versionamento de código, além de utilizar o Ubuntu via WSL no Windows. Isso permitiu a criação de um ambiente de desenvolvimento Linux no Windows, facilitando o controle de versões e o gerenciamento de conteúdo web. A configuração do NGINX garantiu a distribuição de conteúdo, enquanto o uso do Git assegurou o controle de alterações no código. Esse processo oferece uma base sólida para gerenciar e expandir projetos de software de maneira eficiente.

---
