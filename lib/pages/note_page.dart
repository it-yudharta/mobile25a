import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future fetchNote() async {
  final supabase = Supabase.instance.client;

  final data = await supabase.from('notes').select();
  return data;
}

class Note {
  final String id;
  final String title;
  final String? description;

  const Note({
    required this.id,
    required this.title,
    required this.description,
  });

  factory Note.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': String id,
        'title': String title,
        'description': String? description,
      } =>
        Note(id: id, title: title, description: description),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  late Future futureNote;

  @override
  void initState() {
    super.initState();
    futureNote = fetchNote();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Note Page")),
      body: Center(
        child: FutureBuilder(
          future: futureNote,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data.toString());
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/note/new');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
