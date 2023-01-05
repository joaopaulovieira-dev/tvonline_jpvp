import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvonline_jpvp/business_logic/model/channel_model.dart';

final channelCardProvider = StateProvider<List<ChannelModel>>((ref) {
  List<ChannelModel> channelsCard = [
    ChannelModel(
        name: "Live TV", iconAddress: "assets/icons/tv.svg", channelCount: 0),
    ChannelModel(
        name: "TV Aberta", iconAddress: "assets/icons/tv.svg", channelCount: 0),
    ChannelModel(
        name: "Esporte",
        iconAddress: "assets/icons/sport.svg",
        channelCount: 0),
    ChannelModel(
        name: "Notícia", iconAddress: "assets/icons/news.svg", channelCount: 0),
    ChannelModel(
        name: "Gospel", iconAddress: "assets/icons/news.svg", channelCount: 0),
    ChannelModel(
        name: "Série",
        iconAddress: "assets/icons/popcorn.svg",
        channelCount: 0),
    ChannelModel(
        name: "Filme", iconAddress: "assets/icons/movie.svg", channelCount: 0),
    ChannelModel(
        name: "Desenho",
        iconAddress: "assets/icons/animation.svg",
        channelCount: 0),
    ChannelModel(
        name: "Anime",
        iconAddress: "assets/icons/animation.svg",
        channelCount: 0),
    ChannelModel(
        name: "Música", iconAddress: "assets/icons/music.svg", channelCount: 0),
    ChannelModel(
        name: "Carro", iconAddress: "assets/icons/auto.svg", channelCount: 0),
    ChannelModel(
        name: "Cozinha",
        iconAddress: "assets/icons/coocking.svg",
        channelCount: 0),
    ChannelModel(
        name: "Infantil",
        iconAddress: "assets/icons/kids.svg",
        channelCount: 0),
    ChannelModel(
        name: "Educação",
        iconAddress: "assets/icons/education.svg",
        channelCount: 0),
    ChannelModel(
        name: "Negócio",
        iconAddress: "assets/icons/business.svg",
        channelCount: 0),
    ChannelModel(
        name: "Relaxamento",
        iconAddress: "assets/icons/relaxation.svg",
        channelCount: 0),
    ChannelModel(
        name: "Entretenimento",
        iconAddress: "assets/icons/entertainment.svg",
        channelCount: 0),
    ChannelModel(
        name: "Estilo de Vida",
        iconAddress: "assets/icons/lifeStyle.svg",
        channelCount: 0),
    ChannelModel(
        name: "Ciência",
        iconAddress: "assets/icons/science.svg",
        channelCount: 0),
    ChannelModel(
        name: "Comédia",
        iconAddress: "assets/icons/comedy.svg",
        channelCount: 0),
    ChannelModel(
        name: "Família",
        iconAddress: "assets/icons/family.svg",
        channelCount: 0),
    ChannelModel(
        name: "Shop", iconAddress: "assets/icons/shop.svg", channelCount: 0),
  ];
  return channelsCard;
});


//Aqui fica os estilos de canais nos card do menu principal (HomePage).