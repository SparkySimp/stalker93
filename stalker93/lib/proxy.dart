// proxy.dart - keeps proxy server related types.
// keeps data about a proxy server
class ProxyServer {
  String? host;
  int? port;
  String? username;
  String? password;

  ProxyServer(this.host, this.port, this.username, this.password);
  ProxyServer.parse(String proxyString) {
    var parts = proxyString.split(':');
    host = parts[0];
    port = int.parse(parts[1]);
    username = parts[2];
    password = parts[3];
  }

  @override
  String toString() {
    return '$host:$port';
  }
}
