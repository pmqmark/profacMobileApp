// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:chewie/chewie.dart';
// import 'package:profac/presentation/common_widgets/constant_widgets.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:video_player/video_player.dart';

// class StoriesCarousel extends StatefulWidget {
//   StoriesCarousel({super.key, this.startingPageIndex = 0}) {
//     _pageController = PageController(initialPage: startingPageIndex);
//   }
//   final int startingPageIndex;
//   final videoUrls = [
//     "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
//     "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
//     "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
//   ];
//   late final PageController _pageController;

//   @override
//   _StoriesCarouselState createState() => _StoriesCarouselState();
// }

// class _StoriesCarouselState extends State<StoriesCarousel> {
//   final ValueNotifier<int> _currentPage = ValueNotifier(0);

//   @override
//   void dispose() {
//     _currentPage.dispose();
//     widget._pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Stack(
//         children: [
//           PageView(
//             controller: widget._pageController,
//             onPageChanged: (index) {
//               _currentPage.value = index;
//               _currentPage.notifyListeners();
//             },
//             children: widget.videoUrls
//                 .map((url) => VideoPlayerScreen(videoUrl: url))
//                 .toList(),
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               VerticalSpace(68),
//               ValueListenableBuilder<int>(
//                 valueListenable: _currentPage,
//                 builder: (context, currentPage, _) {
//                   return Row(
//                     children: [
//                       HorizontalSpace(10),
//                       ...List.generate((widget.videoUrls.length * 2) - 1,
//                           (index) {
//                         if (index.isOdd) {
//                           return HorizontalSpace(10);
//                         }
//                         return Expanded(
//                             child: SizedBox(
//                           height: 4,
//                           child: DecoratedBox(
//                               decoration: BoxDecoration(
//                             color: index <= currentPage * 2
//                                 ? Colors.white
//                                 : Colors.grey,
//                             borderRadius: BorderRadius.circular(10),
//                           )),
//                         ));
//                       }),
//                       HorizontalSpace(10),
//                     ],
//                   );
//                 },
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Text(
//                   "A Plumber's Edition ",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//               Spacer(),
//               Center(
//                 child: Icon(
//                   Icons.keyboard_arrow_up_sharp,
//                   color: Colors.white,
//                   size: 22,
//                 ),
//               ),
//               VerticalSpace(10),
//               Center(
//                 child: Text(
//                   'swipe up to learn more',
//                   style: Theme.of(context)
//                       .textTheme
//                       .labelMedium
//                       ?.copyWith(color: Colors.white),
//                 ),
//               ),
//               VerticalSpace(10),
//             ],
//           ),
//           GestureDetector(
//             onTapUp: (TapUpDetails details) {
//               final screenWidth = MediaQuery.of(context).size.width;
//               final tapPosition = details.localPosition.dx;

//               if (tapPosition < screenWidth / 2) {
//                 log('Left tapped');
//                 widget._pageController.previousPage(
//                     duration: Duration(milliseconds: 300),
//                     curve: Curves.easeIn);
//               } else {
//                 widget._pageController.nextPage(
//                     duration: Duration(milliseconds: 300),
//                     curve: Curves.easeIn);
//                 log('Right tapped');
//               }
//             },
//             onVerticalDragUpdate: (details) {
//               if (details.primaryDelta! < 0) {
//                 log('Scroll up detected');
//               }
//             },
//             child: SizedBox.expand(
//               child: Container(
//                 color: Colors.transparent,
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 25),
//             child: BackButton(
//               color: Colors.white,
//               onPressed: () => Navigator.of(context).pop(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class VideoPlayerScreen extends StatefulWidget {
//   @override
//   _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
//   final String videoUrl;

//   const VideoPlayerScreen({super.key, required this.videoUrl});
// }

// class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
//   late VideoPlayerController _videoPlayerController;
//   late ChewieController _chewieController;

//   @override
//   void initState() {
//     super.initState();

//     // Initialize the VideoPlayerController with a network URL
//     _videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(
//       widget.videoUrl,
//     ) // Replace with your video URL
//         )
//       ..initialize().then((_) {
//         setState(() {
//           //play the video
//           _videoPlayerController.play();
//         }); // Update the UI once the video is ready
//       });

//     // Initialize the ChewieController
//     _chewieController = ChewieController(
//       videoPlayerController: _videoPlayerController,
//       autoPlay: true, // Automatically play the video
//       looping: true, // Loop the video
//       allowPlaybackSpeedChanging: false, // Disable speed change options
//       showControls: false, // Hide controls (no pause)
//       aspectRatio:
//           _videoPlayerController.value.aspectRatio, // Use video's aspect ratio
//     );
//   }

//   @override
//   void dispose() {
//     _videoPlayerController.dispose();
//     _chewieController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: _videoPlayerController.value.isInitialized
//           ? SizedBox.expand(
//               child: FittedBox(
//                 clipBehavior: Clip.antiAlias,
//                 fit: BoxFit
//                     .fitHeight, // Ensures the video fills the entire screen
//                 child: SizedBox(
//                   width: _videoPlayerController.value.size.width,
//                   height: _videoPlayerController.value.size.height,
//                   child: Chewie(controller: _chewieController),
//                 ),
//               ),
//             )
//           : Center(
//               child: CircularProgressIndicator(
//               color: Colors.white,
//             )), // Loader until the video initializes
//     );
//   }
// }
