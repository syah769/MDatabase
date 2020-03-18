// import 'package:flutter/material.dart';

class SliderModel {
  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath, this.title, this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides(){
  
  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  sliderModel.setDesc("The availability of computer system resources");
  sliderModel.setTitle("Cloud Technology");
  sliderModel.setImageAssetPath("assets/data.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("Simply centralized locations ");
  sliderModel.setTitle("Data Center");
  sliderModel.setImageAssetPath("assets/center.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

   //3
  sliderModel.setDesc("An organized collection of data, generally stored and accessed electronically from a computer system");
  sliderModel.setTitle("Database");
  sliderModel.setImageAssetPath("assets/center2.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}