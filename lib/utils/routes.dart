import 'package:entrenappme/ui/screen/home_screen.dart';
import 'package:entrenappme/ui/screen/trainings/training_four_screen.dart';
import 'package:entrenappme/ui/screen/trainings/training_one_screen.dart';
import 'package:entrenappme/ui/screen/trainings/training_three_screen.dart';
import 'package:entrenappme/ui/screen/trainings/training_two_screen.dart';
import 'package:entrenappme/ui/widget/exercise_detail_widget.dart';

class AppRoutes {
  static final routes = {
    HomeScreen.routeName: (_) => HomeScreen(),
    TrainingOne.routeName: (_) => TrainingOne(),
    TrainingTwo.routeName: (_) => TrainingTwo(),
    TrainingThree.routeName: (_) => TrainingThree(),
    TrainingFour.routeName: (_) => TrainingFour(),
    ExerciseDetail.routeName: (_) => ExerciseDetail(),
  };
}
