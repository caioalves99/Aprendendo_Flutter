import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este widget é a raiz da sua aplicação.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Flutter',
      theme: ThemeData(
       // Este é o tema da sua aplicação.
        //
        // EXPERIMENTE: Tente executar sua aplicação com "flutter run". Você verá
        // que a aplicação tem uma barra superior roxa. Então, sem fechar o app,
        // tente mudar o seedColor no colorScheme abaixo para Colors.green
        // e então faça um "hot reload" (salve suas alterações ou pressione o botão
        // de "hot reload" em um IDE que suporte Flutter, ou pressione "r" se você
        // iniciou o app pelo terminal).
        //
        // Note que o contador não voltou para zero; o estado da aplicação
        // não é perdido durante o reload. Para resetar o estado, use o hot
        // restart.
        //
        // Isso funciona para código também, não só para valores: A maioria das alterações
        // no código podem ser testadas apenas com um hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
      ),
      home: const MyHomePage(title: 'Aprendendo Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 // Este widget é a página inicial da sua aplicação. Ele é stateful, ou seja,
  // possui um objeto State (definido abaixo) que contém campos que afetam
  // como ele é exibido.

  // Esta classe é a configuração para o estado. Ela armazena os valores (neste
  // caso o título) fornecidos pelo pai (neste caso o widget App) e
  // usados pelo método build do State. Campos em uma subclasse de Widget são
  // sempre marcados como "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
       // Esta chamada ao setState informa ao framework Flutter que algo foi
      // alterado neste State, o que faz com que o método build abaixo seja
      // executado novamente para que a tela reflita os valores atualizados. Se
      // alterássemos _counter sem chamar setState(), o método build não seria
      // chamado novamente e nada aconteceria visualmente.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Este método é executado novamente toda vez que setState é chamado, por exemplo,
    // como feito pelo método _incrementCounter acima.
    //
    // O framework Flutter foi otimizado para tornar a execução repetida do build rápida,
    // assim você pode simplesmente reconstruir qualquer coisa que precise ser atualizada
    // ao invés de alterar individualmente instâncias de widgets.
    return Scaffold(
      appBar: AppBar(
       // EXPERIMENTE: Tente mudar a cor aqui para uma cor específica (talvez
        // Colors.amber?) e faça um hot reload para ver a AppBar mudar de cor
        // enquanto as outras cores permanecem as mesmas.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       // Aqui pegamos o valor do objeto MyHomePage que foi criado pelo
        // método App.build, e usamos para definir o título da appbar.
        title: Text(widget.title),
      ),
      body: Center(
         // Center é um widget de layout. Ele recebe um único filho e o posiciona
        // no centro do pai.
        child: Column(
          // Column também é um widget de layout. Ele recebe uma lista de filhos e
          // os organiza verticalmente. Por padrão, ajusta seu tamanho para caber
          // nos filhos horizontalmente e tenta ser tão alto quanto o pai.
          //
          // Column possui várias propriedades para controlar como se ajusta e
          // como posiciona seus filhos. Aqui usamos mainAxisAlignment para
          // centralizar os filhos verticalmente; o eixo principal aqui é o eixo
          // vertical porque Columns são verticais (o eixo cruzado seria
          // horizontal).
          //
          // EXPERIMENTE: Ative o "debug painting" (escolha a ação "Toggle Debug Paint"
          // na IDE, ou pressione "p" no console), para ver o wireframe de cada widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Você pressionou o botão esta quantidade de vezes:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // Esta vírgula final deixa a formatação automática mais agradável para métodos build.
    );
  }
}
