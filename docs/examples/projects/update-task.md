import 'package:appwrite/appwrite.dart';

void main() { // Init SDK
  Client client = Client();
  Projects projects = Projects(client);

  client
    .setEndpoint('https://[HOSTNAME_OR_IP]/v1') // Your API Endpoint
    .setProject('5df5acd0d48c2') // Your project ID
    .setKey('919c2d18fb5d4...a2ae413da83346ad2') // Your secret API key
  ;
  Future result = projects.updateTask(
    projectId: '[PROJECT_ID]',
    taskId: '[TASK_ID]',
    name: '[NAME]',
    status: 'play',
    schedule: '',
    security: false,
    httpMethod: 'GET',
    httpUrl: 'https://example.com',
  );

  result
    .then((response) {
      print(response);
    }).catchError((error) {
      print(error.response);
  });
}
