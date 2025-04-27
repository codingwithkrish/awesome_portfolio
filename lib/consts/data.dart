import 'package:awesome_portfolio/models/app_model.dart';
import 'package:awesome_portfolio/models/color_model.dart';
import 'package:awesome_portfolio/models/device_model.dart';
import 'package:awesome_portfolio/screen/miniProjects/education/education.dart';
import 'package:awesome_portfolio/screen/miniProjects/experience/experience.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/experience_model.dart';
import '../models/skill_model.dart';
import '../screen/miniProjects/about/about.dart';
import '../screen/miniProjects/skills/skills.dart';

const double baseHeight = 790;
const double baseWidth = 1440;

List<DeviceModel> devices = [
  DeviceModel(
    device: Devices.android.onePlus8Pro,
    icon: Icons.android,
  ),
  DeviceModel(
    device: Devices.ios.iPhone13,
    icon: Icons.apple,
  ),
  DeviceModel(
    device: Devices.ios.iPad,
    icon: Icons.tablet,
  ),
];

List<ColorModel> colorPalette = [
  ColorModel(
    svgPath: "assets/images/cloudRed.svg",
    color: Colors.yellowAccent,
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      // transform: Grad,
      end: Alignment.topRight,
      colors: [Colors.yellowAccent, Colors.deepOrange],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.blue,
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      colors: [Colors.blue, Colors.black45],
    ),
  ),
  ColorModel(
      svgPath: "assets/images/cloudyBlue.svg",
      color: const Color(0xff00d6ca),
      gradient: const LinearGradient(
        colors: [Color(0xff00ebd5), Color(0xff293474)],
        stops: [0, 1],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      )),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xff123cd1),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(-0.31, 0.95),
      colors: [Color(0xFF1042F4), Color(0x00203EA6)],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.purple,
    gradient: const LinearGradient(
      colors: [Color(0xffc95edb), Colors.black12],
      stops: [0, 1],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xfff35a32),
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Colors.indigo, Colors.deepOrange], // Adjust colors as needed
    ),
  ),
];

List<AppModel> apps = [
  AppModel(
      title: "About",
      color: Colors.white,
      icon: Icons.person,
      screen: const AboutMe()),
  AppModel(
      title: "Skills",
      color: Colors.white,
      icon: Icons.ac_unit_rounded,
      screen: const Skills()),
  AppModel(
    title: "Youtube",
    icon: FontAwesomeIcons.youtube,
    color: Colors.white,
    link: youtubeChannel,
  ),
  AppModel(
    title: "LinkedIn",
    icon: FontAwesomeIcons.linkedin,
    color: Colors.white,
    link: linkedIn,
  ),
  AppModel(
    title: "Twitter/X",
    icon: FontAwesomeIcons.twitter,
    color: Colors.white,
    link: twitter,
  ),
  AppModel(
    title: "Instagram",
    icon: FontAwesomeIcons.instagram,
    color: Colors.white,
    link: topMate,
  ),
  AppModel(
      title: "Experience",
      color: Colors.white,
      icon: FontAwesomeIcons.idBadge,
      screen: const Experience()),
  AppModel(
    title: "Education",
    color: Colors.white,
    icon: FontAwesomeIcons.edge,
    screen: const Education(),
  ),
  AppModel(
    title: "Github",
    icon: FontAwesomeIcons.github,
    color: Colors.white,
    link: github,
  ),
  AppModel(
    title: "Play Store",
    icon: FontAwesomeIcons.googlePlay,
    color: Colors.white,
    link: playApps,
  ),
];

final List<JobExperience> education = [
  JobExperience(
    color: Colors.red,
    location: "Pune,India",
    title: 'B.Tech In Computer Engineering ',
    company: 'Vishwakarma University Pune',
    startDate: 'June 2021',
    endDate: 'Jun 2025',
    bulletPoints: [
      "SGPA: 9.43/10, CGPA: 8.95/10",
      "Currently in the final year of my college!",
    ],
  ),
  JobExperience(
    color: Colors.blue,
    location: "Korba Chhattisgarh, India",
    title: '12th C.B.S.E Boards',
    company: 'DAV PUBLIC SCHOOL Kusmunda ,Korba Chhattisgarh',
    startDate: 'June 2020',
    endDate: 'June 2021',
    bulletPoints: [
      "Percentage: 91.4%",
    ],
  ),
  JobExperience(
    color: Colors.blue,
    location: "Korba Chhattisgarh, India",
    title: '10th C.B.S.E Boards',
    company: 'DAV PUBLIC SCHOOL Kusmunda ,Korba Chhattisgarh',
    startDate: 'June 2018',
    endDate: 'June 2019',
    bulletPoints: [
      "Percentage: 85.6%",
    ],
  ),
];

final List<JobExperience> jobExperiences = [
  JobExperience(
    color: Colors.blue,
    location: "Banglore, India",
    title: 'Full Stack Developer',
    company: 'Synkrama Technologies',
    startDate: 'Aug 2024',
    endDate: 'Present',
    bulletPoints: [
      "Actively develop and manage push notifications to engage users effectively.",
      "Successfully set up in-app purchase functionality for both iOS and Android platforms.",
      "Utilize the Provider package for streamlined state management and implement real-time data streams.",
      "Employ Amplitude and Firebase Analytics to track and analyze user behavior, informing data-driven decisions.",
      "The Startup has over 3,00,000 lakh active users",
    ],
  ),
  // Add more job experiences here...
  JobExperience(
    color: Colors.redAccent,
    location: "Remote",
    title: 'Flutter Developer',
    company: 'Perpetuum India',
    startDate: 'Oct 2022',
    endDate: 'Jan 2023',
    bulletPoints: [
      "Establish voice calling functionality using Agora SDK to enable real-time communication within the app.",
      "Implement intricate animations using Rive, enhancing the app's visual appeal and engagement.",
      "Collaborate directly with Stanza Living's CTO, gaining insights into industry best practices and cutting-edge technologies.",
      "Acquire proficiency in server-driven UI setup, optimizing app flexibility and scalability through dynamic configuration.",
    ],
  ),
  JobExperience(
    color: Colors.orangeAccent,
    location: "Remote",
    title: 'App Architecture Intern',
    company: 'Habeato',
    startDate: 'Oct 2021',
    endDate: 'Nov 2021',
    bulletPoints: [
      "Collaborated with founders to develop a HealthifyMe clone, demonstrating strong teamwork and app development skills.",
      "Engineered complex animations to enhance user experience and app visual appeal.",
      "Played an active role in system design processes, contributing to efficient and scalable app architecture.",
    ],
  ),
  JobExperience(
    color: Colors.greenAccent,
    location: "Remote",
    title: 'App Developer',
    company: 'Kylo Apps',
    startDate: 'Sep 2021',
    endDate: 'Oct 2021',
    bulletPoints: [
      "Collaborated as a team member in developing a cryptocurrency wallet, akin to Trust Wallet, showcasing strong teamwork and blockchain app development expertise.",
      "Proficiently integrated REST APIs into the application, enhancing its functionality and connectivity with external services."
    ],
  ),
  JobExperience(
    color: Colors.black,
    location: "Remote",
    title: 'Flutter App Intern',
    company: 'Cogent Web Services',
    startDate: 'Dec 2020',
    endDate: 'June 2021',
    bulletPoints: [
      "Independently developed a Life Simulator game using Flutter from scratch, applying state-of-the-art state management practices to ensure a top-tier user experience.",
      "Leveraged Flutter's robust features to craft an immersive and captivating gameplay experience, demonstrating proficiency in app development.",
      "Successfully implemented Google Ads, in-app purchases, and Hive database for efficient user data storage and monetization strategies.",
      "Generated creative ideas for client pitches, fostering creativity and ensuring the game's entertainment value and thought-provoking nature.",
      "Published the game on the Play Store, achieving over 5,000 downloads, showcasing the ability to deliver a popular and engaging mobile application.",
    ],
  ),
];

const String youtubeChannel = "";
const String linkedIn = "";
const String github = "";
const String twitter = "";
const String topMate = "";
const String resumeLink =
    "https://drive.google.com/file/d/1LO3Km6fFkJVW92MNXRLSYl--E9YlTHJd/view";
const String email = "krishgupta.8.kg@gmail.com";
String introduction =
    "Hello! I'm a passionate third-year B.Tech student at VU Pune, specializing in app development. Proficient in Java, Dart, Python, C, C++, and JavaScript, I have sharpened my skills through over five internships and numerous personal projects. \n\nAs an Android and Flutter Developer, I prioritize creating intuitive, user-friendly applications that meet client and end-user needs. With a robust programming foundation, I excel in collaborative teamwork, consistently delivering high-quality projects on time and within budget.\n\nEager to apply my tech expertise, confident in contributing to innovative organizations. Passionate about mobile/web development, data analysis, and software engineering. Excited to explore new opportunities and evolve as a developer.";
const String playApps =
    "https://play.google.com/store/apps/developer?id=AppyMonk";

List<SkillsModel> skills = [
  SkillsModel(skillName: "Flutter", colorS: Colors.blue, iconPath: "random"),
  SkillsModel(skillName: "Dart", colorS: Colors.red, iconPath: "random"),
  SkillsModel(
      skillName: "Native Android Development",
      colorS: Colors.pink,
      iconPath: "random"),
  SkillsModel(skillName: "Java", colorS: Colors.orange, iconPath: "random"),
  SkillsModel(
    skillName: "Firebase",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Github",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Dart",
    colorS: Colors.blue,
  ),
  SkillsModel(
    skillName: "Provider",
    colorS: Colors.orange,
  ),
  SkillsModel(
    skillName: "Riverpod",
    colorS: Colors.blue,
  ),
  SkillsModel(
    skillName: "CI/CD",
    colorS: Colors.amberAccent,
  ),
  SkillsModel(
    skillName: "Firebase",
    colorS: Colors.accents[5],
  ),
  SkillsModel(
    skillName: "REST API",
    colorS: Colors.lightGreenAccent,
  ),
  SkillsModel(
    skillName: "NODE JS",
    colorS: Colors.lightBlue,
  ),
  SkillsModel(
    skillName: "JavaScript",
    colorS: Colors.orange,
  ),
  SkillsModel(
    skillName: "React",
    colorS: Colors.amber,
  ),
  SkillsModel(
    skillName: "Data Structure and Algorithm",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "OOPS",
    colorS: Colors.cyanAccent,
  ),
  SkillsModel(
    skillName: "MySql",
    colorS: Colors.redAccent,
  ),
  SkillsModel(
    skillName: "Python",
    colorS: Colors.limeAccent,
  ),
  SkillsModel(
    skillName: "C",
    colorS: Colors.teal,
  ),
  SkillsModel(
    skillName: "C++",
    colorS: Colors.accents[1],
  ),
  SkillsModel(
    skillName: "HTML",
    colorS: Colors.accents[0],
  ),
  SkillsModel(
    skillName: "CSS",
    colorS: Colors.cyan,
  ),
  SkillsModel(
    skillName: "FastApi",
    colorS: Colors.purpleAccent,
  ),
];

List<SkillsModel> languages = [
  SkillsModel(skillName: "Android Studio", colorS: Colors.black),
  SkillsModel(skillName: "Xcode", colorS: Colors.blueGrey),
  SkillsModel(skillName: "Visual Studio", colorS: Colors.blueGrey),
  SkillsModel(skillName: "Firebase", colorS: Colors.blueGrey),
  SkillsModel(skillName: "Figma", colorS: Colors.blueGrey),
  SkillsModel(skillName: "Adobe XD", colorS: Colors.blueGrey),
  SkillsModel(skillName: "Git/GitHub", colorS: Colors.blueGrey),
  SkillsModel(skillName: "GitLab", colorS: Colors.blueGrey),
  SkillsModel(skillName: "Jira", colorS: Colors.blueGrey),
  SkillsModel(skillName: "etc", colorS: Colors.blueGrey),
];
