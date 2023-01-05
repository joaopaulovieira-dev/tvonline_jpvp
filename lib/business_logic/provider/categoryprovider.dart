import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvonline_jpvp/business_logic/model/channel.dart';
import 'package:tvonline_jpvp/business_logic/provider/channelProvider.dart';
import 'package:tvonline_jpvp/business_logic/provider/country_code.dart';
import 'package:tvonline_jpvp/core/consts.dart';

import 'channelCardprovider.dart';

final categoryProvider =
    Provider<AsyncValue<Map<String, List<ChannelObj>>>>((ref) {
  Map<String, List<ChannelObj>> sortedByCategory = {};
  kCategoryType.forEach((key, value) {
    sortedByCategory[key] = [];
  });

  final channels = ref.watch(mainChannels);
  final categoriesChannels = ref.watch(channelCardProvider.state);
  final countryCode = ref.watch(countryCodeProvider.state);

  return channels.when(
    data: (value) {
      int x = 0;
      for (ChannelObj channel in value!) {
        // print(sortedByCategory);

        if (channel.categories.isNotEmpty) {
          // countryCode.state.contains(channel.countries[0].name
          if (channel.countries.isNotEmpty) {
            if (countryCode.state.isNotEmpty) {
              for (var element in channel.countries) {
                bool containCountry =
                    countryCode.state.keys.contains(element.name);
                if (!containCountry) {
                  countryCode.state[element.name] = element.code;
                } else {
                  countryCode.state[element.name] = element.code;
                }
              }
            } else {
              countryCode.state[channel.countries[0].name] =
                  channel.countries[0].code;
            }
          }

          x++;

          switch (channel.categories[0].name) {
            case "TV Aberta":
              categoriesChannels.state.forEach((element) =>
                  element.name == "TV Aberta" ? element.channelCount++ : null);
              sortedByCategory["TV Aberta"]!.add(channel);

              break;
            case "Esporte":
              for (var element in categoriesChannels.state) {
                element.name == "Esporte" ? element.channelCount++ : null;
              }

              sortedByCategory["Esporte"]!.add(channel);
              break;

            case "Notícia":
              for (var element in categoriesChannels.state) {
                element.name == "Notícia" ? element.channelCount++ : null;
              }

              sortedByCategory["Notícia"]!.add(channel);

              break;
            case "Gospel":
              for (var element in categoriesChannels.state) {
                element.name == "Gospel" ? element.channelCount++ : null;
              }

              sortedByCategory["Gospel"]!.add(channel);

              break;

            case "Série":
              for (var element in categoriesChannels.state) {
                element.name == "Série" ? element.channelCount++ : null;
              }
              sortedByCategory["Série"]!.add(channel);

              break;
            case "Filme":
              for (var element in categoriesChannels.state) {
                element.name == "Filme" ? element.channelCount++ : null;
              }

              sortedByCategory["Filme"]!.add(channel);

              break;

            case "Desenho":
              for (var element in categoriesChannels.state) {
                element.name == "Desenho" ? element.channelCount++ : null;
              }

              sortedByCategory["Desenho"]!.add(channel);

              break;

            case "Anime":
              for (var element in categoriesChannels.state) {
                element.name == "Anime" ? element.channelCount++ : null;
              }
              sortedByCategory["Anime"]!.add(channel);

              break;

            case "Música":
              for (var element in categoriesChannels.state) {
                element.name == "Música" ? element.channelCount++ : null;
              }
              sortedByCategory["Música"]!.add(channel);

              break;

            case "Carro":
              for (var element in categoriesChannels.state) {
                element.name == "Carro" ? element.channelCount++ : null;
              }
              sortedByCategory["Carro"]!.add(channel);

              break;

            case "Cozinha":
              for (var element in categoriesChannels.state) {
                element.name == "Cozinha" ? element.channelCount++ : null;
              }
              sortedByCategory["Cozinha"]!.add(channel);

              break;

            case "Infantil":
              for (var element in categoriesChannels.state) {
                element.name == "Infantil" ? element.channelCount++ : null;
              }
              sortedByCategory["Infantil"]!.add(channel);

              break;

            case "Educação":
              for (var element in categoriesChannels.state) {
                element.name == "Educação" ? element.channelCount++ : null;
              }
              sortedByCategory["Educação"]!.add(channel);

              break;

            case "Negócio":
              for (var element in categoriesChannels.state) {
                element.name == "Negócio" ? element.channelCount++ : null;
              }
              sortedByCategory["Negócio"]!.add(channel);

              break;

            case "Relaxamento":
              for (var element in categoriesChannels.state) {
                element.name == "Relaxamento" ? element.channelCount++ : null;
              }
              sortedByCategory["Relaxamento"]!.add(channel);

              break;

            case "Entretenimento":
              for (var element in categoriesChannels.state) {
                element.name == "Entretenimento"
                    ? element.channelCount++
                    : null;
              }
              sortedByCategory["Entretenimento"]!.add(channel);

              break;

            case "Documentário":
              for (var element in categoriesChannels.state) {
                element.name == "Documentário" ? element.channelCount++ : null;
              }
              sortedByCategory["Documentário"]!.add(channel);

              break;

            case "Ciência":
              for (var element in categoriesChannels.state) {
                element.name == "Ciência" ? element.channelCount++ : null;
              }
              sortedByCategory["Ciência"]!.add(channel);

              break;

            case "Comédia":
              for (var element in categoriesChannels.state) {
                element.name == "Comédia" ? element.channelCount++ : null;
              }
              sortedByCategory["Comédia"]!.add(channel);

              break;

            case "Família":
              for (var element in categoriesChannels.state) {
                element.name == "Família" ? element.channelCount++ : null;
              }
              sortedByCategory["Família"]!.add(channel);

              break;

            case "Compras":
              for (var element in categoriesChannels.state) {
                element.name == "Compras" ? element.channelCount++ : null;
              }
              sortedByCategory["Compras"]!.add(channel);

              break;

            default:
              sortedByCategory["Other"]!.add(channel);
          }
        }
      }
      for (var element in categoriesChannels.state) {
        element.name == "Live Tv" ? element.channelCount = x : null;
      }
      print("eneee");
      print(countryCode.state);

      return AsyncValue.data(sortedByCategory);
    },
    error: (error, stackTrace) =>
        AsyncValue.error(error, stackTrace: stackTrace),
    loading: AsyncValue.loading,
  );
});
