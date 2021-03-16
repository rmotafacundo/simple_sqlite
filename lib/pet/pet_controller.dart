import 'package:flutter/material.dart';import 'pet_model.dart';import 'pet_repository.dart';class PetController {  final PetRepository _repository;  TextEditingController textEditingController = TextEditingController();  PetController(this._repository);  Future<int> save(PetModel petModel) async {    return await _repository.save(petModel);  }  Future<List<PetModel>> findAll() async {    return await _repository.findAll();  }  Future<int> delete(int idPet) async {    return await _repository.delete(idPet);  }  Future<void> changeStatus(int idPet, int newStatus) async {    return await _repository.changeStatus(idPet, newStatus);  }}