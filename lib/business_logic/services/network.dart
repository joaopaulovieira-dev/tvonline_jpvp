import 'package:dio/dio.dart';
import 'package:tvonline_jpvp/business_logic/model/channel.dart';

Future<List<ChannelObj>?> fetchChannels() async {
  List<ChannelObj> channels = [];

  try {
    Response response =
        await Dio().get('https://tvonline.joaopaulovieira.dev/channels.json');
    print("enzo");
    print(response.toString());
    for (var channel in response.data) {
      ChannelObj channelObj = ChannelObj.fromJson(channel);

      //Remove os canais adultos
      if (channelObj.categories.isNotEmpty) {
        if (channelObj.categories[0].name != "XXX") {
          channels.add(channelObj);
        }
      }
    }
    print("salmm");

    print(channels[0].countries[0].name);
    List<ChannelObj> repairChannels = channels.toSet().toList();

    return repairChannels;
  } catch (e) {
    print(e);
  }
}
