import 'package:injectable/injectable.dart';
import 'package:share_widget/share_widget.dart';

import '../../../domain/submit_question_use_case.dart';
import '../../../model/user.dart';
import 'create_question_state.dart';

@injectable
class CreateQuestionBloc extends BaseCubit<CreateQuestionState> {
  final User user;
  final SubmitQuestionUseCase submitQuestionUseCase;

  CreateQuestionBloc(
    @factoryParam User? user,
    this.submitQuestionUseCase,
  )   : user = user!,
        super(CreateQuestionState());

  void addImage(String path) {
    emit(state.copyWith(images: [path, ...state.images]));
  }

  void removeImage(String path) {
    final images = state.images.toList(growable: true);
    images.remove(path);
    emit(state.copyWith(images: images.toList(growable: false)));
  }

  void updateAnonymous(bool input) => emit(state.copyWith(anonymous: input));

  void submitQuestion(String title, String content) {}
}
