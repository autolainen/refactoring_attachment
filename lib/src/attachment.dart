import 'package:data_model/data_model.dart';
import 'package:openagent_data_models/src/attachment_url.dart';

import 'datetime/to_local_date_time.dart';

/// Класс реализующий данные о вложенных файлах
class Attachment implements JsonEncodable {
  /// Ссылка на файл
  AttachmentUrl attachmentUrl;

  /// Ссылка на уменьшенную копию файла
  AttachmentUrl thumbnailUrl;

  /// Тип вложения
  String mimeType;

  /// Дата создания
  DateTime createdAt;

  /// Наименование файла вложения
  String name;

  Attachment(
      {DateTime createdAt,
      this.attachmentUrl,
      this.thumbnailUrl,
      this.mimeType,
      this.name})
      : this.createdAt = createdAt?.toLocal();

  /// Создает вложение из JSON-данных
  factory Attachment.fromJson(Map<String, dynamic> json,
      {AttachmentStorage attachmentStorage = AttachmentStorage.amazon}) {
    if (json == null) return null;

    if (json['url'] != null && json['url'] is! String) {
      throw FormatException(
          'Неверный формат ссылки ("${json['url']}" - требуется String)\nУ вложения id: ${json['id']}');
    }
    if (json['mime_type'] != null && json['mime_type'] is! String) {
      throw FormatException(
          'Неверный формат типа ("${json['mime_type']}" - требуется String)\nУ вложения id: ${json['id']}');
    }
    if (json['created_at'] != null &&
        json['created_at'] is! String &&
        json['created_at'] is! DateTime) {
      throw FormatException(
          'Неверный формат даты создания("${json['created_at']}" - требуется String или DateTime)\nУ вложения id: ${json['id']}');
    }
    if (json['name'] != null && json['name'] is! String) {
      throw FormatException(
          'Неверный формат наименования файла ("${json['name']}" - требуется String)\nУ вложения id: ${json['id']}');
    }

    return Attachment(
        attachmentUrl: createAttachmentUrl(json['url'], attachmentStorage),
        thumbnailUrl:
            createThumbnailUrl(json['thumbnail_url'], attachmentStorage),
        mimeType: json['mime_type'],
        createdAt: toLocalDateTime(json['created_at']),
        name: json['name']);
  }

  @override
  String toString() => json.toString();

  /// Возвращает данные вложения в JSON-формате ([Map])
  @override
  Map<String, dynamic> get json => {
        'mime_type': mimeType,
        'url': attachmentUrl.json,
        'thumbnail_url': thumbnailUrl.json,
        'created_at': createdAt?.toUtc(),
        'name': name
      }..removeWhere((key, value) => value == null);
}

AttachmentUrl createThumbnailUrl(
    String url, AttachmentStorage attachmentStorage) {
  switch (attachmentStorage) {
    case AttachmentStorage.slack:
      return SlackUrl(url);
      break;
    case AttachmentStorage.amazon:
    default:
      return AmazonThumbnailUrl(url);
      break;
  }
}

AttachmentUrl createAttachmentUrl(
    String url, AttachmentStorage attachmentStorage) {
  switch (attachmentStorage) {
    case AttachmentStorage.slack:
      return SlackUrl(url);
      break;
    case AttachmentStorage.amazon:
    default:
      return AmazonUrl(url);
      break;
  }
}
