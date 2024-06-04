import 'package:quiz_app/models/quiz_question.dart';

var questions = [
  const QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  const QuizQuestion(
    'How are Flutter UIs built?',
    [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widget in config file',
      'By using XCode for IOS and Android Studio for Android',
    ],
  ),
  const QuizQuestion(
    'What\'s the perpose of a StatefulWidget?',
    [
      'Update UI as data change',
      'Update data as UI change',
      'Ingore date change',
      'Render UI that does not depend on data',
    ],
  ),
  const QuizQuestion(
    'Which widget should you try to use more offen: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  const QuizQuestion(
    'What happens if you change data in StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  const QuizQuestion(
    'How should you update data inside of StatefulWidget?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];
