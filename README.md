# resume_app_daily_task

# What is List and Map ?
## ⚫ List :

- ```List is collection of multiple values which can have multiple datatype.``` 
- List is an ordered collection of values, which contains index values to access it's inner attributes.
- fixed-length & growable.
- List have indexes like arrays.
- List can be created using '[]'.

### How to declration List :

- ```Syntax : ``` List variableName = [Values];

### Example
```
void main() {
  
    List listName = ["Hiren", 1, 22.22, "C"];

    print(listName[0]);
}
```

#### To know length of List :
```
  void main() {
     List listName = ["Hiren", 1, 22.22, "C"];
  
    print(name.length);
}
```
#### How to add in List Syntax:

- ```Syntax : ``` listName.add(value);
#### To add in List :
```
  void main() {
     List listName = ["Hiren", 1, 22.22, "C"];
  
    print(name[0]);
  
    name.add(2);
  
    print(name);
}
```
#### How to add multiple in List Syntax:

- ```Syntax : ``` listName.addAll(value,value);
  
#### To add Multiple values :
```
  void main() {
    List listName = ["Hiren", 1, 22.22, "C"];
  
    print(name[0]);
  
    name.addAll(['Om', 22, 11]);
  
    print(name);
}
```
#### How to insert in List Syntax:

- ```Syntax : ``` listName.insert(index,value);
  
#### To Insert to value :
```
  void main() {
    List listName = ["Hiren", 1, 22.22, "C"];
    print(name[0]);

    name.insert(2, 50);

    print(name);
}
```
#### How to insert mutiple value in List Syntax:

- ```Syntax : ``` listName.insertAll(value,value);
  
#### To Insert Multiple values :
```
  void main() {
    List listName = ["Hiren", 1, 22.22, "C"];
  
    print(name[0]);
  
    name.insertAll(2, [1, 2, 3, 4]);
  
    print(name);
}
```
#### How to remove value in List Syntax:

- ```Syntax : ``` listName.remove(value);
  
#### To Remove a Value :
```
  void main() {
    List listName = ["Hiren", 1, 22.22, "C"];
  
    print(name[0]);
  
    name.remove("c");
  
    print(name);
}
```
#### How to value of specific index in List Syntax:

- ```Syntax : ``` listName.removeAt(index);
  
#### To Remove a value for Index :
```
  void main() {
    List listName = ["Hiren", 1, 22.22, "C"];
  
    print(name[0]);
  
    name.removeAt(3);
  
    print(name);
}

```
#### How to reverse List Syntax:

- ```Syntax : ``` listName.reversed.toList();
  
#### To Reverse a List :
```
  void main() {
    List listName = ["Hiren", 1, 22.22, "C"];
  
    print(name[0]);
  
    print(name.reversed.toList());
}
```

## ⚫ Generics   

- Generics will be used to fix the datatype in the list.
- fix any one data type in the collection data types.
- it can be applied to either data types, value or both.
- ``` Example : ``` List <int> number = [10,20,30,40,50];

### Example

```
import 'dart:io';

  void main() {
    List <String> name = [];

    print("Enter number of Name : ");
    int n = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < n; i++) {
      print("Enter Name : ");
      String val = stdin.readLineSync()!;
      name.add(val);
    }

    print(name);
  }
```
## ⚫ Map

- ```Map is collection of values. Map is store data in key value pair. which can have different datatype.``` 
- Map can be created using '{}'.

### syntax :
```
Map mapName = {
  key1 : value1, 
  key2 : value2, 
  ... 
  keyN : valueN, 
  };
```
### Example :
``` 
void main() {
    Map emp = {
      'name': "Jaynesh",
      'age': 20,
      'per': 89.23,
      'salary': 89000,
    };
    
    emp.forEach((key, value) {
      print("${key} : ${value}");
    });
  }
```

### List of Map :
``` 
void main() {
 
  List myData = [
    {
      'name': "Harsh",
      'age': 20,
      'per': 89.23,
      'salary': 89000,
    },
    {
      'name': "Ankit",
      'age': 19,
      'per': 90.23,
      'salary': 90000,
    },
    {
      'name': "Hiren",
      'age': 18,
      'per': 98.23,
      'salary': 50000,
    }
  ];

  myData.forEach((e) {
    e.forEach((key, val) {
      print("${key} : ${val}");
    });
    print("");
  });
}
```
###
<h1 align = "left"></h1>

# Status Bar
## In Build Context (Global) : 
```
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.green),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
    );
  }
}
```

## In AppBar :
```
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('StatusBarTopic',style: TextStyle(color: Colors.white,fontSize: 26),),
        systemOverlayStyle:
        const SystemUiOverlayStyle(statusBarColor: Colors.grey),
      ),
    );
  }
}
```

# Device Orientation :
```
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
    );
  }
}
```
<h2 align="center">2. Drawer </h2>

<h1 align="left"></h1>
<div align="center">
  <img height="550"  src="https://github.com/HirenCodeMaster11/resume_app_daily_task/assets/148859956/160978ac-5d38-40c7-a55a-17f1786051dc" />
</div>
<div align="center">
<a href="https://github.com/HirenCodeMaster11/resume_app_daily_task/blob/master/lib/Screen/Drawer/home.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>

<h2 align="center">3-1. Login Page </h2>

<h1 align="left"></h1>

<div align="center">
  <img height="550"  src="https://github.com/HirenCodeMaster11/resume_app_daily_task/assets/148859956/f2e0126c-130d-40c7-8a51-70038e3822b0" />
</div>
<div align="center">
<a href="https://github.com/HirenCodeMaster11/resume_app_daily_task/blob/master/lib/Screen/Login/page1.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>

<h2 align="center">3-2. Login Page2 </h2>

<h1 align="left"></h1>
<div align="center">
  <img height="550"  src="https://github.com/HirenCodeMaster11/resume_app_daily_task/assets/148859956/7b8e8303-d6f1-47f1-b0e9-3ac2af0a993b" />
</div>
<div align="center">
<a href="https://github.com/HirenCodeMaster11/resume_app_daily_task/blob/master/lib/Screen/Login/page2.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>

<h2 align="center">3-3. Login Page Recording </h2>

<h1 align="left"></h1>

<div align="center">
 <video src="https://github.com/HirenCodeMaster11/resume_app_daily_task/assets/148859956/dcd66b37-431e-4b87-a1e4-cba9456287e4.mp4" type="video/mp4"> 
</video>
</div>


<h2 align="center">4-1. Google Login Page </h2>

<h1 align="left"></h1>
<div align="center">
  <img height="550"  src="https://github.com/HirenCodeMaster11/resume_app_daily_task/assets/148859956/5ebc1610-ba06-4a66-8b58-75b265ef716d" />
</div>
<div align="center">
<a href="https://github.com/HirenCodeMaster11/resume_app_daily_task/blob/master/lib/ChromeLogin/login1.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>


<h2 align="center">4-2. Google Login Page 2 </h2>

<h1 align="left"></h1>
<div align="center">
  <img height="550"  src="https://github.com/HirenCodeMaster11/resume_app_daily_task/assets/148859956/26c7a451-bffe-4fba-9b25-dae42fe1fd78" />
</div>
<div align="center">
<a href="https://github.com/HirenCodeMaster11/resume_app_daily_task/blob/master/lib/ChromeLogin/login2.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>


<h2 align="center">4-3. Google Login Page 3 </h2>

<h1 align="left"></h1>
<div align="center">
  <img height="550"  src="https://github.com/HirenCodeMaster11/resume_app_daily_task/assets/148859956/ad79a794-9f21-435b-9636-331a071cde4d" />
</div>
<div align="center">
<a href="https://github.com/HirenCodeMaster11/resume_app_daily_task/blob/master/lib/ChromeLogin/login3.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>

<h2 align="center">4-4. Google Login Pages Recording </h2>

<h1 align="left"></h1>
<div align="center">
 <video src="https://github.com/HirenCodeMaster11/resume_app_daily_task/assets/148859956/49d1b3f8-b9ca-4f88-8735-6bece284a6aa.mp4" type="video/mp4"> 
</video>
</div>


<h2 align="center">5-1. Image Picker </h2>

<h1 align="left"></h1>
<div align="center">
  <img height="550"  src="https://github.com/HirenCodeMaster11/resume_app_daily_task/assets/148859956/db6bc727-8b2c-4c93-96a0-beefc90306ae" />
</div>
<div align="center">
<a href="https://github.com/HirenCodeMaster11/resume_app_daily_task/blob/master/lib/ImagePicker.dart">-> 📂 Go To Dart File 📂 <-</a>
</div>

<h2 align="center"5-2. Image Picker Recording </h2>

<h1 align="left"></h1>
<div align="center">
 <video src=".mp4" type="video/mp4"> 
</video>
</div>
