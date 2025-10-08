import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_sec_1/models/tasks.dart';

class TaskServices{

  //create task
  Future createTask(TaskModel model) async {
    return await FirebaseFirestore.instance
        .collection("TaskCollection")
        .add(model.toJson());
  }
  //update task
  Future updateTask(TaskModel model) async{
    return await FirebaseFirestore.instance
        .collection("TaskCollection")
        .doc(model.docId)
        .update({'name': model.name});
  }
  //delete task

  Future deleteTask(TaskModel model) async{
    return await FirebaseFirestore.instance
        .collection("TaskCollection")
        .doc(model.docId)
        .delete();
  }
  //markTaskCompleted
  Future markTaskAsCompleted(TaskModel model)async{
    return await FirebaseFirestore.instance
        .collection("TaskCollection")
        .doc(model.docId)
        .update({'isCompleted': true});
  }
  //GetAllTask
  Stream<List<TaskModel>> getAllTask(){
    return FirebaseFirestore.instance
        .collection("TaskCollection")
        .snapshots()
        .map((taskList)=>taskList.docs
        .map((taskJson)=> TaskModel.fromJson(taskJson.data()))
        .toList(),
    );
  }
  //GetInCompletedTask
  Stream<List<TaskModel>> getInCompletedTask(){
    return FirebaseFirestore.instance
        .collection("TaskCollection")
        .where('isCompleted' , isEqualTo: false)
        .snapshots()
        .map((taskList)=> taskList.docs
        .map((taskJson)=> TaskModel.fromJson(taskJson.data()))
        .toList(),
    );
  }
  //GetCompletedTask
  Stream<List<TaskModel>> getCompletedTask(){
    return FirebaseFirestore.instance
        .collection("TaskCollection")
        .where('isCompleted' , isEqualTo: true)
        .snapshots()
        .map((taskList)=> taskList.docs
    .map((taskJson)=> TaskModel.fromJson(taskJson.data()))
        .toList(),
    );
  }

}