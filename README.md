Projeto de Monitoramento do Nginx para a Compass UOL | Atividade Prática 1 #PB - Novembro 2024 | DevSecOps

Este repositório oferece um tutorial detalhado sobre:

Como instalar o WSL (Windows Subsystem for Linux) no Windows.
Como criar uma instância EC2 na AWS.
Como instalar o NGINX na instância EC2.
Índice
Instalação do WSL no Windows
Criação de uma Instância EC2 na AWS
Instalação do NGINX na Instância EC2
Conclusão
1. Instalação do WSL no Windows
O Windows Subsystem for Linux (WSL) permite executar uma distribuição Linux no Windows. Para configurá-lo, siga as etapas abaixo:

Habilitar o WSL:
Abra o PowerShell como Administrador e execute:

bash
Copiar código
wsl --install
Escolher uma Distribuição Linux:
Após reiniciar o computador, acesse a Microsoft Store e selecione uma distribuição Linux, como o Ubuntu 20.04 LTS.

Configuração Inicial:
Depois da instalação, abra a distribuição Linux escolhida (ex: Ubuntu), e configure seu nome de usuário e senha.

Atualizar o Sistema:
No terminal da distribuição Linux, execute os seguintes comandos:

bash
Copiar código
sudo apt update
sudo apt upgrade
2. Criação de uma Instância EC2 na AWS
Para criar uma instância EC2 na AWS, siga os passos abaixo:

Acessar o Console da AWS:
Entre no Console da AWS.

Criar a Instância EC2:
Vá para EC2 e clique em Launch Instance.
Selecione uma Amazon Machine Image (AMI), como Ubuntu 20.04 LTS.
Escolha o tipo de instância, como t2.micro (instância gratuita).
Crie ou selecione um par de chaves para acessar a instância.
Em Security Group, permita tráfego nas portas 22 (SSH) e 80 (HTTP).
Conectar via SSH:
Após a instância ser criada, obtenha o IP público da instância e use o comando SSH no terminal:

bash
Copiar código
ssh -i "caminho/para/sua/chave.pem" ec2-user@ip-da-instancia
3. Instalação do NGINX na Instância EC2
Agora, vamos instalar o NGINX na instância EC2.

Acessar a Instância EC2:
Se ainda não tiver feito isso, conecte-se à sua instância EC2 conforme descrito acima.

Instalar o NGINX:
Execute os seguintes comandos para atualizar o repositório de pacotes e instalar o NGINX:

bash
Copiar código
sudo apt update
sudo apt install nginx -y
Iniciar o Serviço NGINX:
Depois da instalação, inicie o serviço com:

bash
Copiar código
sudo systemctl start nginx
Verificar o Funcionamento:
Abra o navegador e digite o IP público da instância EC2. Você verá a página padrão do NGINX.

Conclusão:
Nesta atividade, configuramos uma instância EC2 na AWS com Nginx e Git para versionamento de código, além de utilizar o Ubuntu via WSL no Windows. Isso permitiu a criação de um ambiente de desenvolvimento Linux no Windows, facilitando o controle de versões e o gerenciamento de conteúdo web. A configuração do Nginx garantiu a distribuição de conteúdo, enquanto o uso do Git assegurou o controle de alterações no código. Esse processo oferece uma base sólida para gerenciar e expandir projetos de software de maneira eficiente.
