import 'package:intl/intl.dart';

class Memoria {
  static const operacoes = ['%', '÷', 'x', '-', '+', '='];
  String _valor = '0';
  final _memoriaNumeros = [0.0, 0.0];
  int _memoriaIndexNumeros = 0;
  late String _operacao;
  bool _limparValor = false;
  late String _ultimoComando;
  final _formatador = NumberFormat.decimalPattern('pt_BR');

  // Obtém o valor atual da memória (display)
  Future<void> comandoTecla(String comando) async {
    if (_substituirOperacao(comando)) {
      _operacao = comando;
      return;
    }

    if(comando == 'AC') {
      _allClear();
    } else if(operacoes.contains(comando)) {
        _setOperacao(comando);
    } else {
      _addNumero(comando);
    }

    _ultimoComando = comando;
  }

  // Verifica se o comando é uma operação e se é diferente de '='
  _substituirOperacao(String novaOperacao) {
    return operacoes.contains(_ultimoComando) &&
      operacoes.contains(novaOperacao) &&
      _ultimoComando != '=' &&
      novaOperacao != '=';
  }

  _setOperacao(String novaOperacao) {
    bool sinaldeIgual = novaOperacao == '=';
    if (_memoriaIndexNumeros == 0) {
      if (!sinaldeIgual) {
        _operacao = novaOperacao;
        _memoriaIndexNumeros = 1;
        _limparValor = true;
      }
    } else {
      _memoriaNumeros[0] = _calcular();
      _memoriaNumeros[1] = 0.0;
      _valor = _memoriaNumeros[0].toString();
      _valor = _valor.endsWith('.0') ? _valor.split('.')[0] : _valor;

      _operacao = sinaldeIgual ? '' : novaOperacao;
      _memoriaIndexNumeros = sinaldeIgual ? 0 : 1;
    }

    _limparValor = true;
  }

  // Verificações básicas para adição de um número na memória
  _addNumero(String numero) {
    final ponto = numero == '.';
    final limparValor = (_valor == '0' && !ponto) || _limparValor;

    if(ponto && _valor.contains('.') && !limparValor) return;

    final valorVazio = ponto ? '0' : '';

    final valorAtual = limparValor ? valorVazio : _valor;
    _valor = valorAtual + numero;

    final valorSemVirgula = _valor.replaceAll('.', '');

    final valorFormatado = _formatador.format(double.tryParse(valorSemVirgula) ?? 0);

    _valor = valorFormatado.replaceAll('.', ',');
    _limparValor = false;

    _memoriaNumeros[_memoriaIndexNumeros] = (double.tryParse(_valor) ?? 0);
  }

  // Limpa a memória e o valor atual
  Future<void> _allClear() async {
    _valor = '0';
    _operacao = '';
    _limparValor = false;
    _memoriaNumeros.setAll(0, [0.0, 0.0]);
    _memoriaIndexNumeros = 0;
  }

  // Obtém o resultado da operação
  _calcular() {
    switch(_operacao) {
      case '%': return _memoriaNumeros[0] / 100;
      case '÷': return _memoriaNumeros[0] / _memoriaNumeros[1];
      case 'x': return _memoriaNumeros[0] * _memoriaNumeros[1];
      case '-': return _memoriaNumeros[0] - _memoriaNumeros[1];
      case '+': return _memoriaNumeros[0] + _memoriaNumeros[1];
      default: return _memoriaNumeros[0];
    }
  }

  String get valor => _valor;
}