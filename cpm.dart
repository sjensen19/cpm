/*
  cpm.dart -- This file is part of the CPM project which is released under the GPL-2.0 License.
  See the github repository (https://github.com/sjensen19/cpm) for more information about the license.
*/
import 'dart:io';

const String version = "Pre-1.0.0";

/// Parses arguments in the list provided
void parseArgs(List<String> args) {
  for (String a in args) {
    if ((args.first == a && (a == "--help" || a == "-h")) || args.isEmpty) {
      // TODO: Print help message
      print("Help message!");
      exit(0);
    } else if (args.first == a && (a == "--version" || a == "-v")) {
      print("CPM for ${Platform.operatingSystem} version $version");
      exit(0);
    } else {
      parseArgs(["--help"]);
    }
  }
}

void main(List<String> args) {
  parseArgs(args);
}
