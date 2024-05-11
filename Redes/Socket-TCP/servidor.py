import socket 

def Conectar_server():
    servidor = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    try:
        # Informa para ouvir na porta 12000
        servidor.bind(('', 12000))

        # Começa escutar no máximo um cliente
        servidor.listen(1)

        return servidor
    # Tratamento de erro caso nao conecte
    except Exception as erro:
        print(f"ERRO DE CONEXÃO: {erro}")
        return None

def Aceitar_conexao(servidor):
    conexao, ip = servidor.accept()
    print(f"IP {ip} conectado")
    return conexao, ip


def Receber_msg(conexao, ip):
    while True:
        # Recebe a mensagem envida em Bytes
        msg_bytes = conexao.recv(2048)
        msg_string = msg_bytes.decode() # Decodifica a msg para string
        print(f'Mensagem recebida: {msg_string} do cliente {ip}') 
        if msg_string == '00': # Caractere especial para encerrar
            print("Encerrando conexão servidor...")
            break

def fechar_conexao(servidor, conexao):
    servidor.close()
    conexao.close()

def main():
    servidor = Conectar_server()
    conexao, ip = Aceitar_conexao(servidor)
    Receber_msg(conexao, ip)
    fechar_conexao(servidor, conexao)

if __name__ == "__main__":
    main()
