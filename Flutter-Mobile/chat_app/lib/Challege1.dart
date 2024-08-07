import 'package:flutter/material.dart';
import 'dart:math' as math;
int maxSeeds = 250;
void main(){
  runApp(const WidgetTree());
}

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<StatefulWidget> createState() {
    return _WidgetTreeState();
  }
}
class _WidgetTreeState extends State<WidgetTree>{
  int seeds = maxSeeds ~/ 2;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(elevation: 2),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sunflower Widget"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded
                (child: SunflowerWidget(seeds),
              ),
              const SizedBox(height: 20),
              Text("Showing ${seeds.round()} seeds"),
              SizedBox(
                width: 300,
                child: Slider(
                  min: 1,
                  max: maxSeeds.toDouble(),
                  value: seeds.toDouble(),
                  onChanged: (val){
                    setState(() {
                      seeds = val.round();
                    });
                  },

                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class SunflowerWidget extends StatelessWidget{
  static const tau = math.pi*2;
  static const scaleFactor = 1/40;
  static const size = 600.0;
  static final phi = (math.sqrt(5)+1)/2;
  static final rng = math.Random();

  final int seeds;

  const SunflowerWidget(this.seeds, {super.key});

  @override
  Widget build(BuildContext context){
    final seedWidgets = <Widget>[];

    for(var i= 0; i < seeds; i++){
      final theta = i*tau/phi;
      final r = math.sqrt(i)*scaleFactor;
      
      seedWidgets.add(AnimatedAlign(
          key: ValueKey(i),
          duration: Duration(milliseconds: rng.nextInt(500) + 250),
          curve: Curves.easeInOut,
          alignment: Alignment(r*math.cos(theta), -1 * r * math.sin(theta)),
          child: const Dot(true),
      ));
    }
    for (var j = seeds; j < maxSeeds; j++){
      final x = math.cos(tau*j/(maxSeeds - 1))*0.9;
      final y = math.sin(tau*j / (maxSeeds - 1))*0.9;
      
      seedWidgets.add(AnimatedAlign(
          key: ValueKey(j),
          alignment: Alignment(x, y),
          curve: Curves.easeInOut,
          duration: Duration(milliseconds: rng.nextInt(500)+250),
          child: const Dot(false),
      ));
    }
    return FittedBox(
      fit: BoxFit.contain,
      child: SizedBox(
        height: size,
        width: size,
        child: Stack(children: seedWidgets),
      ),
    );
  }
}
class Dot extends StatelessWidget {
  static const size = 5.0;
  static const radius = 3.0;

  final bool lit;

  const Dot(this.lit, {super.key});

  @override
  Widget build(BuildContext context){
    return DecoratedBox(
        decoration: BoxDecoration(
          color: lit ? Colors.amber : Colors.amberAccent.shade700,
          borderRadius: BorderRadius.circular(radius)
        ),
      child: const SizedBox(
        height: size,
        width: size,
      ),
    );
  }
}


