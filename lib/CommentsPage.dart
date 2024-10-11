// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// class Comment {
//   final String userName;
//   final String text;
//   final double rating;
//   final DateTime time;

//   Comment({required this.userName, required this.text, required this.rating})
//       : time = DateTime.now();
// }

// class CommentsPage extends StatefulWidget {
//   const CommentsPage({super.key});

//   @override
//   _CommentsPageState createState() => _CommentsPageState();
// }

// class _CommentsPageState extends State<CommentsPage> {
  
//   final TextEditingController commentController = TextEditingController();
//   double rating = 0;
//   List<Comment> comments = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             RatingBar.builder(
//               initialRating: 0,
//               minRating: 1,
//               direction: Axis.horizontal,
//               allowHalfRating: true,
//               itemCount: 5,
//               itemBuilder: (context, _) => const Icon(
//                 Icons.star,
//                 color: Colors.amber,
//               ),
//               onRatingUpdate: (newRating) {
//                 setState(() {
//                   rating = newRating;
//                 });
//               },
//             ),
//             const SizedBox(height: 20),
//             TextFormField(
//               controller: commentController,
//               decoration: const InputDecoration(
//                 labelText: 'Add your comment',
//                 border: OutlineInputBorder(),
//               ),
//               maxLines: 3,
//             ),
//             const SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//                 if (commentController.text.isNotEmpty && rating != 0) {
//                   setState(
//                     () {
//                       comments.add(
//                         Comment(
//                           userName: 'User123',
//                           text: commentController.text,
//                           rating: rating,
//                         ),
//                       );
//                       commentController.clear();
//                       rating = 0; //
//                     },
//                   );
//                 }
//               },
//               child: const Text('Send'),
//             ),
//             const SizedBox(height: 20),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: comments.length,
//                 itemBuilder: (context, index) {
//                   final comment = comments[index];
//                   return ListTile(
//                     title: Text(comment.userName),
//                     subtitle: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(comment.text),
//                         Text(
//                           'Rating: ${comment.rating} / 5',
//                           style: const TextStyle(
//                               fontSize: 14, color: Colors.amber),
//                         ),
//                         Text(
//                           'Sent at: ${comment.time.hour}:${comment.time.minute}, ${comment.time.day}/${comment.time.month}/${comment.time.year}',
//                           style:
//                               const TextStyle(fontSize: 12, color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
