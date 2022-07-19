
import 'package:flutter/material.dart';

class Videodata {
    final String title,
        views,
        thumbnail,
        date,
        like,
        dislike,
        username,
        sub,
        propic,
        duration;

    const Videodata({required this.title,
        required this.thumbnail,
        required this.views,
        required this.date,
        required this.like,
        required this.dislike,
        required this.username,
        required this.sub,
        required this.propic,
        required this.duration});
}

   final List<Videodata>vdata = [

    Videodata(
        title: "videotitle1",
        views: "1M",
        date: "1 month ago",
        like: "220k",
        dislike: '50k',
        username: "Ben den Engelsen",
        sub: "500k",
        propic: "https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
        duration:" 10:15",
      thumbnail: "https://res.cloudinary.com/dshminc3x/image/upload/v1658164129/modern-youtube-thumbnail-desing-with-pink-comic-background_1361-2748_cczo6v.webp",),
    Videodata(
        title: "videotitle2",
        views: "300k",
        date: "6 month ago",
        like: "150k",
        dislike: '10k',
        username: "Foto Sushi",
        sub: "500k",
        propic: "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
        duration:" 6:05",
        thumbnail: "https://res.cloudinary.com/dshminc3x/image/upload/v1658164129/youtube-background-thumbnail-with-text-full-editable-template_1361-2732_j1xzx2.webp",),
    Videodata(
        title: "videotitle3",
        views: "10M",
        date: "1 year ago",
        like: "920k",
        dislike: '50k',
        username: "Vince Veras",
        sub: "500k",
        propic: "https://images.unsplash.com/photo-1619895862022-09114b41f16f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
        duration:" 20:5",
        thumbnail: "https://res.cloudinary.com/dshminc3x/image/upload/v1658164128/youtube-design-thumbnail-with-comic-background-template_1361-2734_yzxrbu.webp",),
    Videodata(
        title: "videotitle4",
        views: "100",
        date: "1 week ago",
        like: "50",
        dislike: '10',
        username: "Ayo Ogunseinde",
        sub: "500",
        propic: "https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
        duration:" 10:15",
        thumbnail:"https://res.cloudinary.com/dshminc3x/image/upload/v1658164128/youtube-background-thumbnail-design-template_1361-2733_wpbbcl.webp",),
    Videodata(
        title: "videotitle5",
        views: "10k",
        date: "6 month ago",
        like: "220",
        dislike: '50',
        username: "john alexander",
        sub: "500",
        propic: "https://images.unsplash.com/photo-1658134145121-93e14d916f29?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
        duration:" 10:15",
        thumbnail: "https://res.cloudinary.com/dshminc3x/image/upload/v1658164126/modern-youtube-thumbnail-with-comic-art-background_1361-2738_nn3nhd.jpg",),
    Videodata(
        title: "videotitle6",
        views: "1M",
        date: "1 month ago",
        like: "220k",
        dislike: '50k',
        username: "ducaman",
        sub: "500k",
        propic: "https://images.unsplash.com/photo-1601233749202-95d04d5b3c00?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=838&q=80",
        duration:" 10:15",
        thumbnail: "https://res.cloudinary.com/dshminc3x/image/upload/v1658164122/youtube-background-thumbnail-design-template-with-text-full-editable_1361-2730_ffbgyo.webp",),
    Videodata(
        title: "videotitle7",
        views: "1M",
        date: "1 month ago",
        like: "220k",
        dislike: '50k',
        username: "dog vibes",
        sub: "500k",
        propic: "https://images.unsplash.com/photo-1518717758536-85ae29035b6d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
        duration:" 10:15",
        thumbnail: "https://res.cloudinary.com/dshminc3x/image/upload/v1658047957/flat-abstract-business-youtube-thumbnail-template_23-2148913303_v8q3nw.webp",),
    Videodata(
        title: "videotitle8",
        views: "1M",
        date: "1 month ago",
        like: "220k",
        dislike: '50k',
        username: "hello",
        sub: "500k",
        propic: "https://images.unsplash.com/photo-1583337130417-3346a1be7dee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
        duration:" 10:15",
        thumbnail: "https://res.cloudinary.com/dshminc3x/image/upload/v1658047957/flat-abstract-business-youtube-thumbnail_23-2148925265_bkqdsj.webp",),
    Videodata(
        title: "videotitle9",
        views: "500k",
        date: "1 month ago",
        like: "20k",
        dislike: '1k',
        username: "username1",
        sub: "500k",
        propic: "https://images.unsplash.com/photo-1601233749202-95d04d5b3c00?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=838&q=80",
        duration:" 10:15",
        thumbnail: "https://res.cloudinary.com/dshminc3x/image/upload/v1658164129/modern-youtube-thumbnail-desing-with-pink-comic-background_1361-2748_cczo6v.webp",),





  ];

