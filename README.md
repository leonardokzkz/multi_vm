# Multi-VM - Desenvolvimento de Ambientes Virtuais com Vagrant

## Descrição do Projeto
O Multi-VM é um projeto que demonstra como configurar ambientes virtuais usando Vagrant para facilitar o desenvolvimento e o gerenciamento de aplicações web. Este projeto utiliza o Vagrant para provisionar múltiplas máquinas virtuais e demonstra como configurar um ambiente de desenvolvimento consistente para uma aplicação web básica com PHP e MySQL.

## Funcionalidades Principais
- Criação de ambientes virtuais replicáveis e consistentes usando Vagrant e VirtualBox.
- Provisionamento automatizado de servidores web e bancos de dados usando shell scripts.
- Configuração de ambientes multi-máquina para simular uma rede de servidores.
- Integração com Ansible para um provisionamento mais robusto e escalável (embora não tenha sido implementado no projeto atual).

## Como Usar
1. Clone este repositório para a sua máquina local.
2. Certifique-se de ter o Vagrant e o VirtualBox instalados na sua máquina.
3. Execute `vagrant up` no terminal para iniciar as máquinas virtuais.
4. Acesse a máquina web executando `vagrant ssh web`.
5. Acesse a máquina do banco de dados executando `vagrant ssh db`.
6. Para parar as máquinas virtuais, execute `vagrant halt`.
7. Para destruir as máquinas virtuais, execute `vagrant destroy`.
8. Na maquina "web" adicionar php ou outra linguagem de backend para comunicar com banco de dados.

## Contribuição
Contribuições são sempre bem-vindas! Se você quiser contribuir para este projeto, siga estas etapas:
1. Fork o projeto.
2. Crie uma nova branch (`git checkout -b feature/nova-feature`).
3. Faça commit das suas alterações (`git commit -am 'Adicione uma nova feature'`).
4. Faça push para a branch (`git push origin feature/nova-feature`).
5. Abra um Pull Request.

## Licença
Este projeto está licenciado sob a [Licença MIT](https://opensource.org/licenses/MIT).

![formulario](https://github.com/leonardokzkz/multi_vm/assets/56534691/36e5b6cb-762f-4c33-b233-5f8d014b2d5c)
![vagrantfile](https://github.com/leonardokzkz/multi_vm/assets/56534691/b2dbd06a-5425-4077-950c-2563a144d09d)
![banco de dados](https://github.com/leonardokzkz/multi_vm/assets/56534691/55e77eed-a052-47a6-bb3c-2cff850826ac)


