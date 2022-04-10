import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_widget/share_widget.dart';

import '../../../di/hackathon_di.dart';
import '../../../model/user.dart';
import '../question_detail/question_detail_screen.dart';
import 'create_question_bloc.dart';
import 'create_question_state.dart';

class CreateQuestionScreen extends StatefulWidget {
  final User user;

  const CreateQuestionScreen({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  _CreateQuestionScreenState createState() => _CreateQuestionScreenState();
}

class _CreateQuestionScreenState extends State<CreateQuestionScreen>
    with LoadingMixin {
  static const maxNumOfImages = 5;
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  late final CreateQuestionBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = getIt.get(param1: widget.user);
  }

  @override
  void dispose() {
    titleController.dispose();
    contentController.dispose();
    formKey.currentState?.dispose();
    bloc.close();
    super.dispose();
  }

  Widget buildTitle(String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline5,
    );
  }

  Widget buildTitleTextField() {
    return TextFormField(
      validator: (text) {
        if (text?.trim().isEmpty ?? true) {
          return 'Không được để trống';
        }
      },
      controller: titleController,
      decoration: InputDecoration(
        hintText: 'Ví dụ: Tôi thấy khó chịu...',
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        fillColor: const Color(0xffF3F7F9),
        filled: true,
      ),
    );
  }

  Widget buildContentTextField() {
    return TextFormField(
      validator: (text) {
        if (text?.trim().isEmpty ?? true) {
          return 'Không được để trống';
        }
      },
      controller: contentController,
      maxLines: 5,
      decoration: InputDecoration(
        hintText: 'Mô tả nội dung bạn muốn hỏi',
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        fillColor: const Color(0xffF3F7F9),
        filled: true,
      ),
    );
  }

  Widget buildAddImageButton() {
    return ShareDottedButton(
      onTap: () async {
        final path = await selectSourceAndPickImage(context, 'Chọn Ảnh')
            .then((value) => value.path);
        if (path is String) {
          bloc.addImage(path);
        }
      },
      child: Container(
        width: 80,
        height: 80,
        child: Icon(
          Icons.add,
          size: 32,
        ),
      ),
    );
  }

  Widget buildImage(String path) {
    return Container(
      width: 80,
      height: 80,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.file(
              File(path),
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 4,
              right: 4,
              child: InkWell(
                onTap: () {
                  bloc.removeImage(path);
                },
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.clear,
                    size: 20,
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImages(CreateQuestionState state) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          if (state.images.length < maxNumOfImages) ...[
            buildAddImageButton(),
            SizedBox(width: 12),
          ],
          ...state.images
              .map((e) => [
                    buildImage(e),
                    SizedBox(width: 12),
                  ])
              .expand((e) => e)
              .toList()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateQuestionBloc, CreateQuestionState>(
      bloc: bloc,
      listener: (_, state) {
        state.submitting?.when(
          loading: (_) => showLoading(),
          success: (_) {
            hideLoading();
            showSuccess('Tạo câu hỏi thành công!');
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => QuestionDetailScreen(
                  user: bloc.user,
                  question: _,
                ),
              ),
            );
          },
          fail: (_) {
            hideLoading();
          },
        );
      },
      builder: (context, state) {
        return ShareScaffold(
          appBar: AppBar(
            title: Text('Tạo câu hỏi'),
            leading: ShareBackButton(),
          ),
          body: ShareBackground(
            padding: EdgeInsets.zero,
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding:
                          EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              buildTitle('Hỏi ẩn danh'),
                              Checkbox(
                                value: state.anonymous,
                                activeColor: ShareColors.primary500,
                                onChanged: (_) =>
                                    bloc.updateAnonymous(_ ?? false),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          buildTitle('Tiêu đề'),
                          SizedBox(height: 8),
                          buildTitleTextField(),
                          SizedBox(height: 16),
                          buildTitle('Nội dung'),
                          SizedBox(height: 8),
                          buildContentTextField(),
                          SizedBox(height: 16),
                          buildTitle('Tải ảnh'),
                          SizedBox(height: 8),
                          buildImages(state),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                  ShareConfirmButton(
                    text: 'Hoàn Tất',
                    onTap: () {
                      if (formKey.currentState?.validate() ?? false) {
                        bloc.submitQuestion(
                          titleController.text,
                          contentController.text,
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
