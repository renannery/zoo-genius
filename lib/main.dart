import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Zoo Genius',
    home: MainPage(),
  ));
}

class MainPage extends StatelessWidget {
  final animals = {
    'Bat': '🦇',
    'Lion': '🦁',
    'Human': '🕺',
    'Horse': '🐴',
    'Whale': '🐳',
    'Kangaroo': '🦘',
    'Duck': '🦆',
    'Peacock': '🦚',
    'Kiwi Bird': '🥝',
    'Penguin': '🐧',
    'Snake': '🐍',
    'Spider': '🕷️',
    'Turtle': '🐢',
    'Crocodile': '🐊',
    'Hedgehog': '🦔',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zoo Genius'),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Hello, I\'m Zoo Genius. Think about an animal and I\'ll read your mind.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(animals.length, (index) {
              return Center(
                child: Column(
                  children: [
                    Text(
                      '${animals.values.elementAt(index)}',
                      style: TextStyle(fontSize: 50),
                    ),
                    Text(
                      '${animals.keys.elementAt(index)}',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              );
            }),
          ),
        ),
      ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          color: Colors.green[400],
          padding: EdgeInsets.all(16),
          textColor: Colors.white,
          onPressed: () async {
            final isMammal = await showDialog(
              context: context,
              builder: (context) => QuestionDialog('Mammal?'),
            );

            if (isMammal == true) {
              final isQuadruped = await showDialog(
                context: context,
                builder: (context) => QuestionDialog('Quadruped?'),
              );

              if (isQuadruped == true) {
                final isOmnivore = await showDialog(
                  context: context,
                  builder: (context) => QuestionDialog('Omnivore?'),
                );

                if (isOmnivore == true) {
                  showDialog(
                    context: context,
                    builder: (context) => AnswerDialog(
                      'Hedgehog',
                      '🦔',
                    ),
                  );
                } else {
                  final isCarnivore = await showDialog(
                    context: context,
                    builder: (context) => QuestionDialog('Carnivore?'),
                  );
                  if (isCarnivore == true) {
                    showDialog(
                      context: context,
                      builder: (context) => AnswerDialog(
                        'Lion',
                        '🦁',
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AnswerDialog(
                        'Horse',
                        '🐴',
                      ),
                    );
                  }
                }
              } else {
                final isBiped = await showDialog(
                  context: context,
                  builder: (context) => QuestionDialog('Biped?'),
                );
                if (isBiped == true) {
                  final isHerbivore = await showDialog(
                    context: context,
                    builder: (context) => QuestionDialog('Herbivore?'),
                  );

                  if (isHerbivore == true) {
                    showDialog(
                      context: context,
                      builder: (context) => AnswerDialog(
                        'Kangaroo',
                        '🦘',
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AnswerDialog(
                        'Human',
                        '🕺',
                      ),
                    );
                  }
                } else {
                  final canFly = await showDialog(
                    context: context,
                    builder: (context) => QuestionDialog('Can fly?'),
                  );
                  if (canFly == true) {
                    showDialog(
                      context: context,
                      builder: (context) => AnswerDialog(
                        'Bat',
                        '🦇',
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AnswerDialog(
                        'Whale',
                        '🐳',
                      ),
                    );
                  }
                }
              }
            } else {
              final isBird = await showDialog(
                context: context,
                builder: (context) => QuestionDialog('Bird?'),
              );
              if (isBird == true) {
                final canFly = await showDialog(
                  context: context,
                  builder: (context) => QuestionDialog('Can fly?'),
                );

                if (canFly) {
                  final canSwim = await showDialog(
                    context: context,
                    builder: (context) => QuestionDialog('Can swim?'),
                  );
                  if (canSwim == true) {
                    showDialog(
                      context: context,
                      builder: (context) => AnswerDialog(
                        'Duck',
                        '🦆',
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AnswerDialog(
                        'Peacock',
                        '🦚',
                      ),
                    );
                  }
                } else {
                  final canSwim = await showDialog(
                    context: context,
                    builder: (context) => QuestionDialog('Can swim?'),
                  );
                  if (canSwim == true) {
                    showDialog(
                      context: context,
                      builder: (context) => AnswerDialog(
                        'Penguin',
                        '🐧',
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AnswerDialog(
                        'Kiwi Bird',
                        '🥝',
                      ),
                    );
                  }
                }
              } else {
                final isQuadruped = await showDialog(
                  context: context,
                  builder: (context) => QuestionDialog('Quadruped?'),
                );
                if (isQuadruped == true) {
                  final hasShell = await showDialog(
                    context: context,
                    builder: (context) => QuestionDialog('Has shell?'),
                  );
                  if (hasShell == true) {
                    showDialog(
                      context: context,
                      builder: (context) => AnswerDialog(
                        'Turtle',
                        '🐢',
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AnswerDialog(
                        'Crocodile',
                        '🐊',
                      ),
                    );
                  }
                } else {
                  final isArachnid = await showDialog(
                    context: context,
                    builder: (context) => QuestionDialog('Arachnid?'),
                  );

                  if (isArachnid) {
                    showDialog(
                      context: context,
                      builder: (context) => AnswerDialog(
                        'Spider',
                        '🕷️',
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AnswerDialog(
                        'Snake',
                        '🐍',
                      ),
                    );
                  }
                }
              }
            }
          },
          child: Text(
            'Start Game'.toUpperCase(),
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class QuestionDialog extends StatelessWidget {
  final String question;

  QuestionDialog(this.question);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          margin: const EdgeInsets.all(60.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 60.0),
                  child: Text(
                    question,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FloatingActionButton(
                      backgroundColor: Colors.red,
                      onPressed: () {
                        Navigator.pop(context, false);
                      },
                      child: Icon(Icons.thumb_down),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.green,
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      child: Icon(Icons.thumb_up),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AnswerDialog extends StatelessWidget {
  final String animalName;
  final String animalEmoji;

  AnswerDialog(this.animalName, this.animalEmoji);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          margin: const EdgeInsets.all(60.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Wrap(
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    animalEmoji,
                    style: TextStyle(fontSize: 70),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    animalName,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.green[400],
                  padding: EdgeInsets.all(20),
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'OK',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
