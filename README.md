# Infraestrutura como Código (IaC) - Terraform, Docker e ECS

Este repositório contém a configuração de infraestrutura como código (IaC) utilizando **Terraform**  na AWS com ECS + ALB e outros componentes necessários para executar uma aplicação Dockerizada de forma escalável e gerenciada.

## Tecnologias Utilizadas

- **Terraform**: Para provisionamento de infraestrutura.
- **AWS ECS**: Para orquestração de contêineres.
- **Docker**: Para empacotar a aplicação.
- **AWS ALB (Application Load Balancer)**: Para distribuir o tráfego de rede.
- **IAM Roles & Security Groups**: Para gerenciar permissões e segurança.


## Descrição dos Arquivos

### Infra/

- **ALB.tf**: Contém a configuração do **Application Load Balancer** (ALB) para rotear o tráfego para os contêineres.
- **ECR.tf**: Define o repositório **Elastic Container Registry** (ECR) onde as imagens Docker são armazenadas.
- **ECS.tf**: Define o **ECS** (Elastic Container Service), incluindo a Task Definition, o Cluster e o Service.
- **GrupoSecuranca.tf**: Define os **Security Groups** que controlam o tráfego de rede entre os recursos.
- **IAM.tf**: Configura o **IAM** (Identity and Access Management) para as permissões dos serviços.
- **Provider.tf**: Configura o **Provider AWS** para o Terraform.
- **VPC.tf**: Define a **VPC** (Virtual Private Cloud) e sub-redes para o ambiente.
- **Variaveis.tf**: Define as variáveis usadas no Terraform.
- **outputs.tf**: Contém os outputs que o Terraform gera após a execução, como o DNS do ALB.

### env/Prod/

- **Dockerrun.aws.json**: Arquivo de configuração para rodar o contêiner no **ECS**.
- **backend.tf**: Configuração de **backend** do Terraform para o ambiente de produção.
- **main.tf**: Arquivo principal com a configuração da infraestrutura para o ambiente de produção.
- **producao.zip**: Arquivo com o artefato de produção ou imagens Docker.

## Pré-requisitos

- **AWS CLI** configurada com credenciais de acesso.
- **Terraform** instalado.
- **Docker** instalado (caso precise construir imagens Docker localmente).
- **AWS Account**: Uma conta AWS configurada e com permissões adequadas.



