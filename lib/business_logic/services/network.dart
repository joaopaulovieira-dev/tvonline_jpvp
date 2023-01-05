import 'package:dio/dio.dart';
import 'package:tvonline_jpvp/business_logic/model/channel.dart';

// ignore: body_might_complete_normally_nullable
Future<List<ChannelObj>?> fetchChannels() async {
  List<ChannelObj> channels = [];

  try {
    Response response =
        await Dio().get('https://tvonline.joaopaulovieira.dev/channels.json');
    for (var channel in response.data) {
      ChannelObj channelObj = ChannelObj.fromJson(channel);

      channels.add(channelObj); //Adiciona o canal na lista
    }

    List<ChannelObj> repairChannels = channels.toSet().toList();

    return repairChannels;
  } catch (e) {
    print(e);
  }
}
