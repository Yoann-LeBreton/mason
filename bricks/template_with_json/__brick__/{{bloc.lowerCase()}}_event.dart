part of '{{bloc.lowerCase()}}_bloc.dart';

abstract class {{bloc.pascalCase()}}Event  {
  const {{bloc.pascalCase()}}Event();
}

{{#events}}
class {{name.pascalCase()}}{{bloc.pascalCase()}} extends {{bloc.pascalCase()}}Event {
  const {{name.pascalCase()}}{{bloc.pascalCase()}}(
    {{#variables}}
    this.{{name}},
    {{/variables}}
  );
  {{#variables}}final {{type}} {{name}};{{/variables}}


  String print() {
    String text = "";
    {{#variables}}text += ({{name}}.toString() + ' ');{{/variables}}
    return text;
  }

}
{{/events}}