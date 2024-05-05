import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_nav_forge/pages/person.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      'Nalin',
      'Chandra',
      'Shiva',
      'Swetha',
      'Raj',
      'Ramu',
      'Priya',
      'Ananya',
      'Arjun',
      'Sneha',
      'Karthik',
      'Anand',
      'Ayesha',
      'Vivek',
      'Deepika',
      'Prakash',
      'Meera',
      'Rahul',
      'Kavya',
      'Arnav',
      'Sunita',
      'Ravi',
      'Pooja',
      'Ajay',
      'Priyanka',
      'Sanjay',
      'Neha',
      'Vinay',
      'Anushka',
      'Vishal',
      'Manju',
      'Rohit',
      'Harini',
      'Vikram',
      'Sangeeta',
      'Gopal',
      'Akshay',
      'Shreya',
      'Sunil',
      'Divya',
      'Manish',
      'Shalini',
      'Suresh',
      'Maya',
      'Arvind',
      'Sonali',
      'Mohan',
      'Lavanya',
      'Krish',
      'Nisha',
      'Prasad',
      'Sumitra',
      'Aditya',
      'Rashmi',
      'Ganesh',
      'Anjali',
      'Pramod',
      'Radha',
      'Varun',
      'Jyoti',
      'Ashwin',
      'Kirti',
      'Rajesh',
      'Geeta',
      'Satish',
      'Kritika',
      'Surya',
      'Tara',
      'Siddharth',
      'Preeti',
      'Arun',
      'Smita',
      'Pradeep',
      'Shruti',
      'Vijay',
      'Anuradha',
      'Sandeep',
      'Vandana',
      'Vikas',
      'Kavita',
      'Jay',
      'Anita',
      'Kiran',
      'Ritu',
      'Dev',
      'Maya',
      'Nitin',
      'Nandini',
      'Sameer',
      'Neha',
      'Mahesh',
      'Leela',
      'Dinesh',
      'Parul',
      'Rohan',
      'Radhika',
      'Arvind',
      'Swati',
      'Ashok',
      'Kamini'
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                // navigation
//Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));

                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Person(
                          image: 'assets/images/lord-rama.jpg',
                          name: names[index],
                        )));
              },
              tileColor: index.isEven ? Colors.blueGrey.shade200 : null,
              leading: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/lord-rama.jpg')),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                // child: Image.asset('assets/images/lord-rama.jpg'),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(names[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  const Text('This is description here we can add anything like this',style: TextStyle(fontSize: 11)),
                ],
              ),
              trailing: const Icon(Icons.arrow_circle_right_outlined, color: Colors.purple,),
            );
          },
        ),
      ),
    );
  }
}
