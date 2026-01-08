import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const TechProApp());
}

class TechProApp extends StatelessWidget {
  const TechProApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech Professionals',
      debugShowCheckedModeBanner: false,

      // RTL Support Configuration
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English
        Locale('ar', ''), // Arabic
        Locale('he', ''), // Hebrew
        Locale('fa', ''), // Persian
        Locale('ur', ''), // Urdu
      ],

      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),

      home: const TechProHomePage(),
    );
  }
}

class TechProHomePage extends StatefulWidget {
  const TechProHomePage({super.key});

  @override
  State<TechProHomePage> createState() => _TechProHomePageState();
}

class _TechProHomePageState extends State<TechProHomePage> {
  bool _isRTL = false;

  void _toggleDirection() {
    setState(() {
      _isRTL = !_isRTL;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: _isRTL ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: Text(_isRTL ? 'محترفو التكنولوجيا' : 'Tech Professionals'),
          actions: [
            IconButton(
              icon: Icon(_isRTL ? Icons.format_textdirection_l_to_r : Icons.format_textdirection_r_to_l),
              onPressed: _toggleDirection,
              tooltip: _isRTL ? 'Switch to LTR' : 'Switch to RTL',
            ),
          ],
        ),
        body: TechProList(isRTL: _isRTL),
      ),
    );
  }
}

class TechProfessional {
  final String name;
  final String nameAr;
  final String role;
  final String roleAr;
  final String expertise;
  final String expertiseAr;
  final int experience;

  TechProfessional({
    required this.name,
    required this.nameAr,
    required this.role,
    required this.roleAr,
    required this.expertise,
    required this.expertiseAr,
    required this.experience,
  });
}

class TechProList extends StatelessWidget {
  final bool isRTL;

  const TechProList({super.key, required this.isRTL});

  static final List<TechProfessional> _professionals = [
    TechProfessional(
      name: 'Sarah Johnson',
      nameAr: 'سارة جونسون',
      role: 'Senior Flutter Developer',
      roleAr: 'مطورة فلاتر أولى',
      expertise: 'Mobile App Development',
      expertiseAr: 'تطوير تطبيقات الجوال',
      experience: 5,
    ),
    TechProfessional(
      name: 'Ahmed Hassan',
      nameAr: 'أحمد حسن',
      role: 'Full Stack Engineer',
      roleAr: 'مهندس متكامل',
      expertise: 'Web & Cloud Architecture',
      expertiseAr: 'تطوير الويب والسحابة',
      experience: 7,
    ),
    TechProfessional(
      name: 'Leah Cohen',
      nameAr: 'ليا كوهين',
      role: 'DevOps Specialist',
      roleAr: 'أخصائية عمليات التطوير',
      expertise: 'CI/CD & Infrastructure',
      expertiseAr: 'البنية التحتية والنشر',
      experience: 6,
    ),
    TechProfessional(
      name: 'Reza Ahmadi',
      nameAr: 'رضا أحمدي',
      role: 'Machine Learning Engineer',
      roleAr: 'مهندس تعلم آلي',
      expertise: 'AI & Data Science',
      expertiseAr: 'الذكاء الاصطناعي وعلم البيانات',
      experience: 4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _professionals.length,
      itemBuilder: (context, index) {
        final pro = _professionals[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 30,
                      child: Text(
                        isRTL
                          ? pro.nameAr[0]
                          : pro.name[0],
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            isRTL ? pro.nameAr : pro.name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            isRTL ? pro.roleAr : pro.role,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.code, size: 20, color: Colors.grey[600]),
                    const SizedBox(width: 8),
                    Text(
                      isRTL ? pro.expertiseAr : pro.expertise,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.work_outline, size: 20, color: Colors.grey[600]),
                    const SizedBox(width: 8),
                    Text(
                      isRTL
                        ? '${pro.experience} سنوات خبرة'
                        : '${pro.experience} years experience',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
