import 'dart:convert';

import 'package:cloe_challenge/model/classes.dart';
import 'package:cloe_challenge/repositories/repository.dart';

class ClassesRepositoryImpl implements ClassesRepository {
  @override
  getClasse() async {
    final response = {
      "classes": [
        {
          "id": 1,
          "position": 1,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 2,
          "position": 3,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 3,
          "position": 2,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 4,
          "position": 4,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 5,
          "position": 5,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 6,
          "position": 7,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 7,
          "position": 6,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 8,
          "position": 9,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 9,
          "position": 10,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 10,
          "position": 8,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 11,
          "position": 12,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 12,
          "position": 14,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 13,
          "position": 15,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 14,
          "position": 11,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 15,
          "position": 13,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 16,
          "position": 17,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 17,
          "position": 18,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 18,
          "position": 16,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 19,
          "position": 20,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 20,
          "position": 19,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        },
        {
          "id": 21,
          "position": 21,
          "title": "Revolucao Industrial",
          "image":
              "https://vaporparalaindustria.com/wp-content/uploads/2018/06/Tipos-de-vapor-industrial-1024x683.jpg",
          "description":
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        }
      ]
    };
    return (response['classes']).map((e) => Classes.fromJson(e)).toList();
  }
}
