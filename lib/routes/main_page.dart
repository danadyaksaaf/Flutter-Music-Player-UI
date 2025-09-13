import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_page_ui/properties/colors.dart';
import 'package:home_page_ui/widgets/music_container.dart';
import 'package:home_page_ui/widgets/played_music.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 30, top: 80, right: 20, bottom: 20),

        decoration: BoxDecoration(color: AppColors.whiteColor),
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Howdy, Danadyaksa',
                            style: GoogleFonts.roboto(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black,
                            ),
                          ),
                       SizedBox(
                        height: 2,
                       ),
                      Text(
                        'Music lights up the mood',
                        style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                        ),
                      ),
                        ],
                      ),
                      SizedBox(width: 50),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Material(
                          child: InkWell(
                            child: Icon(Icons.notifications, size: 30),
                            onTap: () {},
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          width: 30,
                          height: 30,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/avatars/avatar.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  Text(
                    'Recently Played',
                    style: GoogleFonts.roboto(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Title',
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.shuffle),
                            color: Colors.grey,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.play_arrow),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  MusicContainer(
                    albumArts: 'assets/images/albumArts/without.png',
                    musicName: 'Without You',
                    artist: 'Avicii, Sandro Cavazza',
                    isPlayed: true,
                  ),
                  SizedBox(height: 10),
                  MusicContainer(
                    albumArts: 'assets/images/albumArts/sky.jpeg',
                    musicName: 'A Sky full of Stars',
                    artist: 'Coldplay',
                    isPlayed: false,
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Your Musics',
                    style: GoogleFonts.roboto(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20),
                  MusicContainer(
                    albumArts: 'assets/images/albumArts/sky.jpeg',
                    musicName: 'A Sky full of Stars',
                    artist: 'Coldplay',
                    isPlayed: false,
                  ),
                  SizedBox(height: 10),
                  MusicContainer(
                    albumArts: 'assets/images/albumArts/without.png',
                    musicName: 'Without you',
                    artist: 'Avicii',
                    isPlayed: false,
                  ),
                  MusicContainer(
                    albumArts: 'assets/images/albumArts/without.png',
                    musicName: 'Without you (Remix)',
                    artist: 'Avicii',
                    isPlayed: false,
                  ),
                ],
              ),
            ),
        
            PlayedMusic(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.history, color: AppColors.lightBlue,), label: 'Recent',),
        BottomNavigationBarItem(icon: Icon(Icons.music_note), label: 'Musics'),
        BottomNavigationBarItem(icon: Icon(Icons.playlist_add), label: 'Playlists'),
      ]),
    );
  }
}
