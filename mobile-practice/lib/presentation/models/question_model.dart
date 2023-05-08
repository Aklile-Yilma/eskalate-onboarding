class Question {
  final int id;
  final int answer;
  final String question;
  final List<String> options;

  Question({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

List<Question> sample_data = [
  Question(
    id: 1,
    question:
        "Flutter is an open-source UI software development kit created by ______",
    answer: 1,
    options: ['Apple', 'Google', 'Facebook', 'Microsoft'],
  ),
  Question(
    id: 2,
    question: "When google release Flutter.",
    answer: 2,
    options: ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
  ),
  Question(
    id: 3,
    question: "A memory location that holds a single letter or number.",
    answer: 2,
    options: ['Double', 'Int', 'Char', 'Word'],
  ),
  Question(
    id: 4,
    question: "What command do you use to output data to the screen?",
    answer: 2,
    options: ['Cin', 'Count>>', 'Cout', 'Output>>'],
  ),
];