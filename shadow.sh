pip install shadowsocks

{
    "server":"0.0.0.0",
    "server_port":8388,
    "local_port":1080,
    "password":"wnnwnnwnnwnn",
    "timeout":600,
    "method":"aes-256-cfb"

}



ssserver -c /etc/shadowsocks.json  &
