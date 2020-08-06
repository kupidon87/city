import 'dart:io';
import '../import.dart';

class ImageCaptureScreen extends StatefulWidget with NavigationStates {
  @override
  _ImageCaptureScreenState createState() => _ImageCaptureScreenState();
}

class _ImageCaptureScreenState extends State<ImageCaptureScreen> {

  /// Active image file
  File _imageFile;

  /// Cropper plugin
  Future<void> _cropImage() async {
    File cropped = await ImageCropper.cropImage(
        sourcePath: _imageFile.path,
        // ratioX: 1.0,
        // ratioY: 1.0,
        // maxWidth: 256,
        // maxHeight: 256,
        androidUiSettings: AndroidUiSettings(
        toolbarColor: Colors.purple,
        toolbarWidgetColor: Colors.white,
        toolbarTitle: 'Обрезать',
        ),
//      compressFormat: ImageCompressFormat.png,
//      compressQuality: 100,
    );
    setState(() {
      _imageFile = cropped ?? _imageFile;
    });
  }

  /// Select an image via gallery or camera
  Future<void> _pickImage(ImageSource source) async {
    // ignore: deprecated_member_use
    File selected = await ImagePicker.pickImage(source: source);

    setState(() {
      _imageFile = selected;
    });
  }

  /// Remove image
  void _clear() {
    setState(() => _imageFile = null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.photo_camera,
                //size: 30,
              ),
              onPressed: () => _pickImage(ImageSource.camera),
              color: Colors.blue,
            ),
            IconButton(
              icon: Icon(
                Icons.photo_library,
                //size: 30,
              ),
              onPressed: () => _pickImage(ImageSource.gallery),
              color: Colors.pink,
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          if (_imageFile != null) ...[
            Container(
                padding: EdgeInsets.all(32), child: Image.file(_imageFile)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  color: Colors.blue,
                  child: Icon(Icons.crop),
                  onPressed: _cropImage,
                ),
                FlatButton(
                  color: Colors.blue,
                  child: Icon(Icons.refresh),
                  onPressed: _clear,
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Uploader(
                    file: _imageFile,
                  ),
                )
              ],
            ),
          ]
        ],
      ),
    );
  }
}

/// Widget used to handle the management of
class Uploader extends StatefulWidget {
  final File file;
  final User user;
  Uploader({Key key, this.file, this.user}) : super(key: key);

  createState() => _UploaderState();
}

class _UploaderState extends State<Uploader> {
  final FirebaseStorage _storage =
  FirebaseStorage(storageBucket: 'gs://nadym-b1907.appspot.com/');

  StorageUploadTask _uploadTask;

  _startUpload() {

    String filePath = 'images/${DateTime.now()} ${Uuid().v4()}.png';

    setState(() {
      _uploadTask = _storage.ref().child(filePath).putFile(widget.file);
    });
  }

//  getDownloadUrl() async{
//    final downloadURL = await _uploadTask.lastSnapshot.ref.getDownloadURL();
//    print;
//  }

  @override
  Widget build(BuildContext context) {
    if (_uploadTask != null) {
      return StreamBuilder<StorageTaskEvent>(
          stream: _uploadTask.events,
          builder: (context, snapshot) {
            var event = snapshot?.data?.snapshot;

            double progressPercent = event != null
                ? event.bytesTransferred / event.totalByteCount
                : 0;

            return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (_uploadTask.isComplete)
                    Text('Успешно загрузилось!',
                        style: TextStyle(
                            color: Colors.greenAccent,
                            height: 2,
                            fontSize: 30,
                        )),
                  if (_uploadTask.isPaused)
                    FlatButton(
                      child: Icon(Icons.play_arrow, size: 50),
                      onPressed: _uploadTask.resume,
                    ),
                  if (_uploadTask.isInProgress)
                    FlatButton(
                      child: Icon(Icons.pause, size: 50),
                      onPressed: _uploadTask.pause,
                    ),


                  LinearProgressIndicator(value: progressPercent),
                  Text(
                    '${(progressPercent * 100).toStringAsFixed(2)} % ',
                    style: TextStyle(fontSize: 30),
                  ),
                ]);
          });
    } else {
      return FlatButton.icon(
          color: Colors.blue,
          label: Text('Загрузить в облако'),
          icon: Icon(Icons.cloud_upload),
          onPressed: _startUpload);
    }
  }
}