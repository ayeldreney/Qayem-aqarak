import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../shared/network/remote/requests.dart';
import '../use_cases/register_usecase.dart';
import 'register_states.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterUseCase registerUseCase;

  RegisterCubit({required this.registerUseCase}) : super(RegisterInitial());

  Future<void> register({required RegisterRequest model}) async {
    try {
      await registerUseCase.execude(model);
      emit(RegisterSuccess());
    } on SocketException catch (_) {
      emit(RegisterError());
    } catch (_) {
      emit(RegisterError());
    }
  }

  File? profileImage;
  final ImagePicker picker = ImagePicker();

  Future getProfileImage(ImageSource source) async {
    final XFile? image = await picker.pickImage(source: source);
    if (image == null) {
      return;
    }
    profileImage = File(image.path);
    emit(UploadImageSuccess());
  }
}
