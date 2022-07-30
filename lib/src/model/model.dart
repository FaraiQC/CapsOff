class Question {
  final String text;
  final List<Option> options;
  String explanation;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    required this.explanation,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String text;
  final bool isCorrect;

  Option({
    required this.text,
    required this.isCorrect,
  });
}

final questions = [
  Question(
    text:
        'An event in the probability that will never be happened is called as',
    explanation:
        'An event that will never be happened is known as the impossible event. For example - Tossing double-headed coins and getting tails in an impossible event, rolling a die and getting number > 10 in an impossible outcome, etc.',
    options: [
      Option(text: 'Unsure event', isCorrect: false),
      Option(text: 'Sure event', isCorrect: false),
      Option(text: 'Possible event', isCorrect: false),
      Option(text: 'Impossible event', isCorrect: true),
    ],
  ),
  Question(
    text: 'What will be the value of P(not E) if P(E) = 0.07?',
    explanation:
        'If the probability of happening of an event P(E) and that of not happening is P(E), then \n P(E) + P(not E) = 1 \n So, P(not E) = 1 - P(E) \n Since P(E) = 0.07 \n P(not E) = 1 - 0.07 \n P(not E) = 0.93',
    options: [
      Option(text: '90', isCorrect: false),
      Option(text: '007', isCorrect: false),
      Option(text: '93', isCorrect: true),
      Option(text: '72', isCorrect: false),
    ],
  ),
  Question(
    text:
        'What will be the probability of getting odd numbers if a dice is thrown?',
    explanation:
        'The sample space when a dice is rolled, S = (1, 2, 3, 4, 5, and 6) \n So, n (S) = 6 \n E is the event of getting an odd number. \n So, n (E) = 3 \n Probability of getting an odd number P (E) = Total number of favorable outcomes / Total number of outcomes \n n(E) / n(S) = 3/6 = 1/2',
    options: [
      Option(text: '1/2', isCorrect: true),
      Option(text: '2', isCorrect: false),
      Option(text: '4/2', isCorrect: false),
      Option(text: '5/2', isCorrect: false),
    ],
  ),
  Question(
    text: 'What is the probability of getting a sum as 3 if a dice is thrown?',
    explanation:
        'In two throws a dice, n (S) = 6 * 6 = 36 \n Let E is the event of getting a sum of three. \n E = (1, 2), (2, 1) \n So, n (E) = 2 \n So, P (E) = n(E) / n(S) = 2/36 or 1/18',
    options: [
      Option(text: '2/18', isCorrect: false),
      Option(text: '1/18', isCorrect: true),
      Option(text: '4', isCorrect: false),
      Option(text: '1/36', isCorrect: false),
    ],
  ),
  Question(
    text:
        'What is the probability of getting an even number when a dice is thrown?',
    explanation:
        'The sample space when a dice is rolled, S = (1, 2, 3, 4, 5, and 6) \n So, n (S) = 6 \n E is the event of getting an even number. \n So, n (E) = 3 \n Probability of getting an even number P (E) = Total number of favorable outcomes/Total number of outcomes \n n(E) / n(S) = 3/6 = 1/2',
    options: [
      Option(text: '1/6', isCorrect: false),
      Option(text: '1/2', isCorrect: true),
      Option(text: '1/3', isCorrect: false),
      Option(text: '1/4', isCorrect: false),
    ],
  ),
  Question(
    text: 'The probability of getting two tails when two coins are tossed is',
    explanation:
        'The sample space when two coins are tossed = (H, H), (H, T), (T, H), (T, T) \n So, n(S) = 4 \n The event "E" of getting two tails (T, T) = 1 \n So, n(E) = 1 \n So, the probability of getting two tails, P (E) = n(E) / n(S) = 1/4',
    options: [
      Option(text: '1/6', isCorrect: false),
      Option(text: '1/2', isCorrect: false),
      Option(text: '2/3', isCorrect: false),
      Option(text: '1/4', isCorrect: true),
    ],
  ),
  Question(
    text:
        'What is the probability of getting the sum as a prime number if two dice are thrown?',
    explanation:
        'As per the question: n (S) = 6*6 = 36 \n And, the event that the sum is a prime number: \n E = {(1, 1), (1, 2), (1, 4), (1, 6), (2, 1), (2, 3), (2, 5), (3, 2), (3, 4), (4, 1), (4, 3), \n (5, 2), (5, 6), (6, 1), (6, 5)} \n So, n (E) = 15 \n n(E) / n(S) = 15/36 = 5/12',
    options: [
      Option(text: '5/24', isCorrect: false),
      Option(text: '5/12', isCorrect: true),
      Option(text: '5/30', isCorrect: false),
      Option(text: '1/4', isCorrect: false),
    ],
  ),
  Question(
    text:
        'What is the probability of getting atleast one head if three unbiased coins are tossed?',
    explanation:
        'The sample space is = {TTT, TTH, THT, HTT, THH, HTH, HHT, HHH} \n Let E is the event of getting atleast one head \n Then E = {TTH, THT, HTT, THH, HTH, HHT, HHH} \n P(E) = n(E) / n(S) = 7/8',
    options: [
      Option(text: '7/8', isCorrect: true),
      Option(text: '1/2', isCorrect: false),
      Option(text: '5/8', isCorrect: false),
      Option(text: '8/9', isCorrect: false),
    ],
  ),
  Question(
    text:
        'What is the probability of getting 1 and 5 if a dice is thrown once?',
    explanation:
        'The sample space when a dice is rolled, S = (1, 2, 3, 4, 5 and 6) \n So, n (S) = 6 \n E is the event of getting 1 and 5 \n So, n (E) = 2 \n P (E) = Total number of favorable outcomes / Total number of outcomes \n n(E) / n(S) = 2/6 = 1/3',
    options: [
      Option(text: '1/6', isCorrect: false),
      Option(text: '1/3', isCorrect: true),
      Option(text: '2/3', isCorrect: false),
      Option(text: '8/9', isCorrect: false),
    ],
  ),
  Question(
    text:
        'What will be the probability of losing a game if the winning probability is 0.3?',
    explanation:
        'Let P(E) is the probability of winning the game, and P(not E) be the probability of not winning the game. \n  \n P(E) + P(not E) = 1 \n So, P(not E) = 1 - P(E) \n Since P(E) = 0.3 \n P(not E) = 1 - 0.3 \n P(not E) = 0.7',
    options: [
      Option(text: '0.5', isCorrect: false),
      Option(text: '0.6', isCorrect: false),
      Option(text: '0.7', isCorrect: true),
      Option(text: '0.8', isCorrect: false),
    ],
  ),
];
