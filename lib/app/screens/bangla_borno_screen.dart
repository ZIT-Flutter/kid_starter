import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:kid_starter/app/constant.dart';
import 'package:kid_starter/app/controllers/alphabet_bn_controller.dart';
import 'package:kid_starter/app/models/alphabet_bn_model.dart';
import 'package:kid_starter/app/widgets/page_header.dart';
import 'package:kid_starter/app/widgets/tile_card.dart';

class BanglaBornoScreen extends StatefulWidget {
  final String title;
  final Color primaryColor;
  final Color seconderyColor;
  final List<AlphabetBnModel> bornoList;


  const BanglaBornoScreen(
      {Key? key,
      required this.title,
      required this.primaryColor,
      required this.seconderyColor,
      required this.bornoList})
      : super(key: key);

  @override
  State<BanglaBornoScreen> createState() => _BanglaBornoScreenState();
}

class _BanglaBornoScreenState extends State<BanglaBornoScreen> {
  final _audioPlayer = AudioPlayer();
  final _scrollController = ScrollController();
  double offset = 0;


  @override
  void initState() {
    super.initState();
    _scrollController.addListener(onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }


  void onScroll() {
    setState(() {
      offset = (_scrollController.hasClients) ? _scrollController.offset : 0;
    });
  }

  void _playAudio(String assetPath) async {
    try {
      await _audioPlayer.setAsset(assetPath);
      _audioPlayer.play();
    } catch (e) {
      debugPrint("Error loading audio source: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: PageHeader(
                isBangla: true,
                title: widget.title,
                offset: offset,
                primaryColor: widget.primaryColor,
                secondaryColor: widget.seconderyColor),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            delegate: SliverChildBuilderDelegate(
              childCount: widget.bornoList.length,
              (context, index) {
                return Padding(
                  padding: index % 2 == 0
                      ? const EdgeInsets.only(bottom: 20, left: 20)
                      : const EdgeInsets.only(bottom: 20, right: 20),
                  child:
                      TileCard(title: widget.bornoList[index].text,
                           isBangla: true,
                           fontSizeBase: 100,
                           textColor: getIndexColor(index),
                           onTap: () {
                        if(widget.bornoList[index].audio != null){
                          _playAudio(widget.bornoList[index].audio!);
                        }

                           }),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
