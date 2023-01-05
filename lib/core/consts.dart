import 'package:flutter/material.dart';

const Color kBlackBg = Color(0xff1c1829);
const Color kWhiteBg = Color(0xff262436);
const Color kPurple = Color(0xff9c4af5);
const Color kGray = Color(0xff262433);
const Map<String, String> kCategoryType = {
  "Live TV":
      "https://img.elo7.com.br/product/original/317F25D/adesivo-personalizado-para-parede-desenho-bob-esponja-series.jpg",
  "TV Aberta":
      "https://images.unsplash.com/photo-1503376780353-7e6692767b70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  "Esporte":
      "https://images.unsplash.com/photo-1600880292203-757bb62b4baf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  "Gospel":
      "https://images.unsplash.com/photo-1608144252993-f33f23e9df9a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1502&q=80",
  "Série":
      "https://media.biobiochile.cl/wp-content/uploads/2021/04/happy_ending-e1618520426737.jpeg",
  "Filme":
      "https://images.unsplash.com/photo-1466637574441-749b8f19452f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80",
  "Desenho":
      "https://images.unsplash.com/photo-1488861859915-4b5a5e57649f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80",
  "Anime":
      "https://images.unsplash.com/photo-1615309871801-6b065d20f50b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80",
  "Música":
      "https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80",
  "Carro":
      "https://images.unsplash.com/photo-1603739903239-8b6e64c3b185?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80",
  "Cozinha":
      "https://images.unsplash.com/photo-1561525140-c2a4cc68e4bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  "Infantil":
      "https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80",
  "Kids":
      "https://images.unsplash.com/photo-1607453998774-d533f65dac99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
  "Educação":
      "https://images.unsplash.com/photo-1526615735835-530c611a3d8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80",
  "Negócio":
      "https://images.unsplash.com/photo-1529333166437-7750a6dd5a70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80",
  "Relaxamento":
      "https://images.unsplash.com/photo-1482514194978-3ed8cc9d86c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  "Entretenimento":
      "https://images.unsplash.com/photo-1594909122845-11baa439b7bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  "Documentário":
      "https://images.unsplash.com/photo-1511379938547-c1f69419868d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  "Ciência":
      "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80",
  "Comédia":
      "https://images.unsplash.com/photo-1526772662000-3f88f10405ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
  "Família":
      "https://images.unsplash.com/photo-1512552288940-3a300922a275?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80",
  "Compras":
      "https://images.unsplash.com/photo-1606838974689-1a4039d727fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  "Science":
      "https://images.unsplash.com/photo-1582719471384-894fbb16e074?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
  "Series":
      "https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  "Shop":
      "https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  "Sports":
      "https://images.unsplash.com/photo-1517649763962-0c623066013b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  "Travel":
      "https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2021&q=80",
  "Weather":
      "https://images.unsplash.com/photo-1592210454359-9043f067919b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
  "Other":
      "https://images.unsplash.com/photo-1504275107627-0c2ba7a43dba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
};

const kLoading = ("assets/animation/loading.json");
const kSplashLoading = ("assets/animation/splash_loading.json");
const kNotFound = ("assets/animation/not_found.json");
const kTvLoading = ("assets/animation/tv_loading.json");

final List<String> kLanguages = [
  "Russian",
  "Hindi",
  "Pashto",
  "Spanish",
  "German",
  "Ukrainian",
  "Hungarian",
  "Georgian",
  "Persian",
  "Arabic",
  "Wolof",
  "English",
  "Tamil",
  "Catalan",
  "French",
  "Greek",
  "Polish",
  "Armenian",
  "Albanian",
  "Kazakh",
  "Marathi",
  "Italian",
  "Turkish",
  "Urdu",
  "Bulgarian",
  "Portuguese",
  "Punjabi",
  "Romanian",
  "Bengali",
  "Amharic",
  "Serbian",
  "Kurdish",
  "Swedish",
  "Vietnamese",
  "Bosnian",
  "Finnish",
  "Thai",
  "Turkmen",
  "Azerbaijani",
  "Malayalam",
  "Japanese",
  "Korean",
  "Hebrew",
  "Malay",
  "Dutch",
  "Nepali",
  "Uzbek",
  "Bhojpuri",
  "Khmer",
  "Belarusian",
  "Indonesian",
  "Chinese",
  "Slovak",
  "Tagalog",
  "Luxembourgish",
  "Sinhala",
  "Swahili",
  "Czech",
  "Kannada",
  "Estonian",
  "Norwegian",
  "Bokmål",
  "Slovenian",
  "Somali",
  "Croatian",
  "Norwegian",
  "Danish",
  "Assyrian",
  "Neo - Aramaic",
  "Kinyarwanda",
  "Greenlandic",
  "Faroese",
  "Lao",
  "Latvian",
  "Lithuanian",
  "Maori",
  "Chichewa",
  "Icelandic",
  "Macedonian",
  "Maltese",
  "Panjabi",
  "Akan",
  "Telugu",
  "Galician",
  "Dhivehi",
  "Kyrgyz",
  "Bashkir",
  "Min Nan Chinese"
];
