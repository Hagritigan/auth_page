import 'package:auth_page/utils/global_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SwitchesDemoTwo extends StatefulWidget {
  const SwitchesDemoTwo({Key? key}) : super(key: key);

  @override
  State<SwitchesDemoTwo> createState() => _SwitchesDemoTwoState();
}

enum Souse { spicy, sweetSpicy, cheesy }

class _SwitchesDemoTwoState extends State<SwitchesDemoTwo> {
  bool _addCheese = false;
  Souse? _souse = Souse.spicy;
  bool _isSlimDough = false;
  double _pizzaSize = 40;
  int _cost = 100;

  int _calcCost() {
    _cost = _pizzaSize.round() + 100;

    if (_addCheese == true) _cost += 30;
    if (_isSlimDough == true) _cost += 50;

    switch (_souse) {
      case Souse.spicy:
        _cost += 10;
        break;
      case Souse.sweetSpicy:
        _cost += 30;
        break;
      case Souse.cheesy:
        _cost += 50;
        break;
    }
    return _cost;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: globalTheme(),
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                    padding: EdgeInsets.only(top: 60.0),
                    child: Align(alignment: Alignment(1, 0),
                      child: SizedBox(width: 232, height: 123,
                        child: Image(image: AssetImage('assets/pizza.png')),),
                    )),
                const Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 33.0, 0.0, 0.0),
                    child: Text('Калькулятор пиццы',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),)),
                const Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 9.0, 0.0, 0.0),
                    child: Text('Выберите параметры:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),)),
                SizedBox(
                  width: 300,
                  child: SlidingSwitch(
                    value: false,
                    width: 300,
                    onChanged: (bool value) {
                      _isSlimDough = value;
                      setState(() {
                        _calcCost();
                      });
                    },
                    height : 30,
                    animationDuration : const Duration(milliseconds: 100),
                    onTap:(){},
                    onDoubleTap:(){},
                    onSwipe:(){},
                    textOff : "Обычное тесто",
                    textOn : "Тонкое тесто",
                    colorOn : const Color(0xffdc6c73),
                    colorOff : const Color(0xff6682c0),
                    background : const Color(0xffe4e5eb),
                    buttonColor : const Color(0xfff7f5f7),
                    inactiveColor : const Color(0xff636f7b),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 19.0, 0.0, 0.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Размеры:',
                        style: TextStyle(
                          fontSize: 18,
                        ),),
                    ) ),
                SizedBox(
                  width: 300,
                  child: SfSlider(
                      min: 20,
                      max: 60,
                      value: _pizzaSize,
                      interval: 20,
                      showTicks: true,
                      showLabels: true,
                      enableTooltip: false,
                      minorTicksPerInterval: 0,
                      onChanged: (dynamic value) {
                        setState(() {
                          _pizzaSize = value;
                          _calcCost();
                        });
                      }
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 19.0, 0.0, 0.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Coyc:',
                        style: TextStyle(
                          fontSize: 18,
                        ),),
                    ) ),
                RadioListTile<Souse>(
                  title: const Text('Острый'),
                  value: Souse.spicy,
                  groupValue: _souse,
                  onChanged: (Souse? value) {
                    setState(() {
                      _souse = value;
                    });
                  },
                ),
                RadioListTile<Souse>(
                  title: const Text('Кисло сладкий'),
                  value: Souse.sweetSpicy,
                  groupValue: _souse,
                  onChanged: (Souse? value) {
                    setState(() {
                      _souse = value;
                    });
                  },
                ),
                RadioListTile<Souse>(
                  title: const Text('Острый'),
                  value: Souse.cheesy,
                  groupValue: _souse,
                  onChanged: (Souse? value) {
                    setState(() {
                      _souse = value;
                    });
                  },
                ),
                SizedBox(
                  width: 290, height: 56,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                        color: Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 36, height: 34,
                          child: Image(image: AssetImage('assets/cheese.png')),),
                        Expanded(
                          child: Text('Дополнительный сыр',
                            style: TextStyle(
                              fontSize: 18,
                            ),),
                        ),
                        Switch(value: _addCheese, onChanged: (val) {
                          setState(() {
                            _addCheese = !_addCheese;
                          });
                        }),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 19.0, 0.0, 0.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Стоимость:',
                        style: TextStyle(
                          fontSize: 18,
                        ),),
                    ) ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: Card(
                    elevation: 0,
                    color: const Color(0xFFF0F0F0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text("${_calcCost()} руб. ",
                      style: const TextStyle(fontSize: 32, color: Color(0xFF000000)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(83.0, 28.0, 83.0, 62.0),
                    child: SizedBox(width: 154, height: 42,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Заказать'),
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF0079D0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(36.0)
                            )
                        ),
                      ),
                    )),
              ]
            ),
          ),
    ));
  }
}
