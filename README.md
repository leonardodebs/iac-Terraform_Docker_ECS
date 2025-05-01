# Infraestrutura como Código (IaC) - Terraform, Docker e ECS

Este repositório contém a configuração de infraestrutura como código (IaC) utilizando **Terraform**  na AWS com ECS + ALB e outros componentes necessários para executar uma aplicação Dockerizada de forma escalável e gerenciada.

## Tecnologias Utilizadas

- **Terraform**: Para provisionamento de infraestrutura.
- **AWS ECS**: Para orquestração de contêineres.
- **Docker**: Para empacotar a aplicação.
- **AWS ALB (Application Load Balancer)**: Para distribuir o tráfego de rede.
- **IAM Roles & Security Groups**: Para gerenciar permissões e segurança.


## Descrição dos Arquivos

- **ecs.tf**: Contém as configurações do ECS, como a definição da tarefa (Task Definition), o serviço (ECS Service) e as configurações do Fargate.
- **alb.tf**: Configura o Application Load Balancer (ALB), incluindo o Target Group e o Listener para rotear o tráfego para os contêineres.
- **grupoSecuranca.tf**: Define os Security Groups para controlar o tráfego de rede entre o ALB e os contêineres do ECS.
- **outputs.tf**: Define os outputs do Terraform, como o DNS do ALB.

## Pré-requisitos

- **AWS CLI** configurada e com credenciais de acesso.
- **Terraform** instalado.
- **Docker** instalado (caso precise construir imagens Docker localmente).





