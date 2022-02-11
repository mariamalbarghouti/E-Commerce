// import 'dart:async';
// ...
// Timer? _debounceTimer;
// ...

// Create Denouncing function

// Next, we write the denounce function. This function will take a function that will be called and a int for the time it has to wait in milliseconds as a parameter.

// ...
// void debouncing({required Function() fn, int waitForMs = 500}) {
//   // if this function is called before 500ms [waitForMs] expired
//   //cancel the previous call
//   _debounceTimer?.cancel();
//   // set a 500ms [waitForMs] timer for the [fn] to be called
//   _debounceTimer = Timer(Duration(milliseconds: waitForMs), fn);
// }
// ...

// Debouncing Search

// Now it’s time to use the function. We will do what I mentioned above which is avoid sending an API call for every letter the user type in the TextField aka Search box.

// ...
// late TextEditingController _controller;
// ...
// @override
// void initState() {
//   _controller = TextEditingController();
//   _controller.addListener(_onSearchChange);
//   super.initState();
// }
// void _onSearchChange() {
//   debouncing(
//     fn: () {
//       print('get search suggestion from keyword: ${_controller.text}');
//     },
//   );
// }
// @override
// void dispose() {
//   ...
  
//   _controller.removeListener(_onSearchChange);
//   super.dispose();
// }
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text(widget.title),
//     ),
//     body: TextField(
//       decoration: InputDecoration(
//         hintText: 'Search',
//       ),
//       controller: _controller,
//     ),
//   );
// }

// This is what print out when you search for “play” without using debouncing

// flutter: get search suggestion from keyword: p
// flutter: get search suggestion from keyword: pl
// flutter: get search suggestion from keyword: pla
// flutter: get search suggestion from keyword: play

// This is with debouncing

// flutter: get search suggestion from keyword: play

// Finally

// don’t forget to cancel your Timer in dispose.

// @override
// void dispose() {
//   // cleaning up the debounce timer
//   _debounceTimer?.cancel();
//   ...
// }
