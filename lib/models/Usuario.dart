/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Usuario type in your schema. */
@immutable
class Usuario extends Model {
  static const classType = const _UsuarioModelType();
  final String id;
  final String? _email;
  final String? _token;
  final String? _nome;
  final String? _foto;
  final int? _tipoConta;
  final String? _idUsuario;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String? get email {
    return _email;
  }
  
  String? get token {
    return _token;
  }
  
  String? get nome {
    return _nome;
  }
  
  String? get foto {
    return _foto;
  }
  
  int? get tipoConta {
    return _tipoConta;
  }
  
  String? get idUsuario {
    return _idUsuario;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Usuario._internal({required this.id, email, token, nome, foto, tipoConta, idUsuario, createdAt, updatedAt}): _email = email, _token = token, _nome = nome, _foto = foto, _tipoConta = tipoConta, _idUsuario = idUsuario, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Usuario({String? id, String? email, String? token, String? nome, String? foto, int? tipoConta, String? idUsuario}) {
    return Usuario._internal(
      id: id == null ? UUID.getUUID() : id,
      email: email,
      token: token,
      nome: nome,
      foto: foto,
      tipoConta: tipoConta,
      idUsuario: idUsuario);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Usuario &&
      id == other.id &&
      _email == other._email &&
      _token == other._token &&
      _nome == other._nome &&
      _foto == other._foto &&
      _tipoConta == other._tipoConta &&
      _idUsuario == other._idUsuario;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Usuario {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("token=" + "$_token" + ", ");
    buffer.write("nome=" + "$_nome" + ", ");
    buffer.write("foto=" + "$_foto" + ", ");
    buffer.write("tipoConta=" + (_tipoConta != null ? _tipoConta!.toString() : "null") + ", ");
    buffer.write("idUsuario=" + "$_idUsuario" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Usuario copyWith({String? id, String? email, String? token, String? nome, String? foto, int? tipoConta, String? idUsuario}) {
    return Usuario._internal(
      id: id ?? this.id,
      email: email ?? this.email,
      token: token ?? this.token,
      nome: nome ?? this.nome,
      foto: foto ?? this.foto,
      tipoConta: tipoConta ?? this.tipoConta,
      idUsuario: idUsuario ?? this.idUsuario);
  }
  
  Usuario.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _email = json['email'],
      _token = json['token'],
      _nome = json['nome'],
      _foto = json['foto'],
      _tipoConta = (json['tipoConta'] as num?)?.toInt(),
      _idUsuario = json['idUsuario'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'email': _email, 'token': _token, 'nome': _nome, 'foto': _foto, 'tipoConta': _tipoConta, 'idUsuario': _idUsuario, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };

  static final QueryField ID = QueryField(fieldName: "usuario.id");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField TOKEN = QueryField(fieldName: "token");
  static final QueryField NOME = QueryField(fieldName: "nome");
  static final QueryField FOTO = QueryField(fieldName: "foto");
  static final QueryField TIPOCONTA = QueryField(fieldName: "tipoConta");
  static final QueryField IDUSUARIO = QueryField(fieldName: "idUsuario");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Usuario";
    modelSchemaDefinition.pluralName = "Usuarios";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Usuario.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Usuario.TOKEN,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Usuario.NOME,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Usuario.FOTO,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Usuario.TIPOCONTA,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Usuario.IDUSUARIO,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _UsuarioModelType extends ModelType<Usuario> {
  const _UsuarioModelType();
  
  @override
  Usuario fromJson(Map<String, dynamic> jsonData) {
    return Usuario.fromJson(jsonData);
  }
}