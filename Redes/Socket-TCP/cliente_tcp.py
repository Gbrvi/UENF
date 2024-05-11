import socket

def Conectar_cliente():
    # AF_INET = IPV4 | SOCK_STEAM: TCP
    cliente = socket.socket(socket.AF_INET,socket.SOCK_STREAM)

    # Tenta realizar conexão com servidor
    try:
        #Conecta ao IP na porta 12000
        cliente.connect(("192.168.122.1", 12000))
        print("Conexão estabelecidade...")
        return cliente
    # Tratamento para caso de erro de conexão
    except Exception as erro:
        print(f"ERRO DE CONEXÃO: {erro}")
        return None

def Enviar_msg(cliente):
    while True:
        msg = input("Digite sua mensagem: [00 para encerrar] ")
        cliente.send(msg.encode()) #Envia msg em bytes
        if msg == '00': # Mensagem padrão para encerrar conexão
            print("Encerrando conexão...")
            break
        
def Encerrar_conexao(cliente):
    cliente.close()

def main():
    clt = Conectar_cliente()
    if clt: # Se retorno não for None
        Enviar_msg(clt)
        Encerrar_conexao(clt)

if __name__ == '__main__':
    main()
    