abstract class AttachmentUrl {
  final String _url;

  AttachmentUrl(this._url);

  String get url => _url;

  String get json => _url;
}

class SlackUrl extends AttachmentUrl {
  SlackUrl(String url) : super(url);
}

class AmazonUrl extends AttachmentUrl {
  AmazonUrl(String url) : super(url);
}

class AmazonThumbnailUrl extends AmazonUrl {
  AmazonThumbnailUrl(String url) : super(url);

  @override
  String get url {
    String _url = super.url;
    if (_url != null) {
      var urlParts = _url.split('/');
      urlParts.remove('origin');
      urlParts.insert(urlParts.length - 1, 'thumbs');
      return urlParts.join('/');
    }
    return null;
  }
}

enum AttachmentStorage {slack, amazon}
