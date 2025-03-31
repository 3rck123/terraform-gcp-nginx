# Terraform-gcp-nginx
# Neste projeto vamos:

 - Configurar um ambiente no Google Cloud utilizando o Terraform.
 - Criar uma instância de VM no Google Cloud (GCE) com o Nginx instalado. Usando um script de inicialização para garantir que o Nginx fosse instalado automaticamente durante o provisionamento da VM.
 - Definir regras de firewall para permitir tráfego HTTP (porta 80) e HTTPS (porta 443) para a VM, garantindo que o servidor Nginx fosse acessível através da internet.

## Instalar o Terraform
### Linux (Ubuntu/Debian)
    sudo apt update && sudo apt install -y gnupg software-properties-common
    wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
    sudo apt update && sudo apt install terraform
### Verificar a instalação
    terraform version

## Autenticação no Google Cloud
  O Terraform precisa acessar sua conta do Google Cloud. Para isso, você precisa gerar uma chave de serviço.
  
  ### Acesse o Console do Google Cloud.
  Vá para IAM e Admin > Contas de serviço.
  
  Crie uma nova conta de serviço com as permissões Editor e Admin do Compute Engine.
  
  Baixe a chave JSON e salve em um local seguro (ex: ~/gcp-key.json).
  
## Configure as credenciais no Terraform
### No terminal, defina a variável de ambiente:
    export GOOGLE_APPLICATION_CREDENTIALS="~/gcp-key.json"
## Executar o Terraform
    terraform init
    terraform apply
