import 'package:openagent_data_models/src/attachment_url.dart';

// Этот класс должен быть в коде flutter приложения
class ImageProviderService {

  // Метод вызывается каждый раз, когда нужно получить
  // контент аттачмента-картинки
  static ImageProvider createImageProvider(AttachmentUrl attachmentUrl) {
    if (attachmentUrl is SlackUrl) {
      return SlackImageProvider(slackClient, attachmentUrl.url);
    } else {
      return AdvancedNetworkImage(attachmentUrl.url);
    }
  }
}
