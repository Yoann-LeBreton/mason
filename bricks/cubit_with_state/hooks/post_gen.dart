import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) async {
  final progress = context.logger.progress(
    'Creating auto generated models using build_runner',
  );
  final workingDirectory = "${Directory.current.path}";
  /*final directory = context.logger.progress(
    'Working Directory is = $workingDirectory',
  );
  directory.complete();*/
  await Process.run(
    'flutter',
    ['pub', 'run', 'build_runner', 'build', '--delete-conflicting-outputs', '--build-filter', '$workingDirectory/cubit/*.dart'],
    runInShell: true,
  );
  progress.complete();
}