import '../models/scheme.dart';

class SchemesData {
  static List<Scheme> getAllSchemes() {
    return [
      // Children Schemes (0-14 years)
      Scheme(
        id: 'icds',
        name: 'Integrated Child Development Services (ICDS)',
        description:
            'Provides food, preschool education, and primary healthcare to children under 6 years.',
        category: 'Child Welfare',
        minAge: 0,
        maxAge: 6,
        benefits: [
          'Supplementary nutrition',
          'Immunization',
          'Health check-ups',
          'Referral services',
          'Pre-school education',
        ],
        eligibility:
            'Children below 6 years from BPL/APL families, pregnant and lactating mothers.',
        howToApply:
            'Visit nearest Anganwadi center with birth certificate and ration card.',
        ministry: 'Ministry of Women and Child Development',
        iconName: 'child_care',
      ),
      Scheme(
        id: 'mdm',
        name: 'Mid-Day Meal Scheme',
        description:
            'Free lunch on working days for children in government schools.',
        category: 'Education',
        minAge: 6,
        maxAge: 14,
        benefits: [
          'Free nutritious meal',
          'Improved enrollment',
          'Better attendance',
          'Nutritional support',
        ],
        eligibility:
            'Children studying in Classes I-VIII in government and government-aided schools.',
        howToApply: 'Automatic enrollment for students in eligible schools.',
        ministry: 'Ministry of Education',
        iconName: 'restaurant',
      ),
      Scheme(
        id: 'ssa',
        name: 'Samagra Shiksha Abhiyan',
        description:
            'Comprehensive program for school education from pre-school to class 12.',
        category: 'Education',
        minAge: 3,
        maxAge: 18,
        benefits: [
          'Free textbooks',
          'Free uniforms',
          'Quality education',
          'Infrastructure development',
          'Teacher training',
        ],
        eligibility: 'All children aged 3-18 years.',
        howToApply: 'Enroll in government/government-aided school.',
        ministry: 'Ministry of Education',
        iconName: 'school',
      ),

      // Youth Schemes (15-35 years)
      Scheme(
        id: 'pmkvy',
        name: 'Pradhan Mantri Kaushal Vikas Yojana',
        description:
            'Skill development initiative for youth to enhance employability.',
        category: 'Skill Development',
        minAge: 15,
        maxAge: 35,
        benefits: [
          'Free skill training',
          'Industry-relevant certification',
          'Placement assistance',
          'Monetary reward on certification',
        ],
        eligibility:
            'Indian nationals aged 15-35 years, school/college dropouts or unemployed.',
        howToApply:
            'Register on Skill India Portal or visit nearest PMKVY training center.',
        ministry: 'Ministry of Skill Development and Entrepreneurship',
        iconName: 'engineering',
      ),
      Scheme(
        id: 'pmmy',
        name: 'Pradhan Mantri Mudra Yojana',
        description: 'Loans for small business and entrepreneurship.',
        category: 'Employment',
        minAge: 18,
        maxAge: 65,
        benefits: [
          'Loans up to ₹10 lakh',
          'No collateral required',
          'Low interest rates',
          'Easy documentation',
        ],
        eligibility:
            'Any Indian citizen with a business plan for non-farm income generating activities.',
        howToApply: 'Apply at any bank, MFI, or NBFC with business plan.',
        ministry: 'Ministry of Finance',
        iconName: 'account_balance',
      ),
      Scheme(
        id: 'pmegp',
        name: 'Prime Minister Employment Generation Programme',
        description: 'Credit-linked subsidy for setting up micro-enterprises.',
        category: 'Employment',
        minAge: 18,
        maxAge: 45,
        benefits: [
          'Subsidy up to 35% for rural areas',
          'Subsidy up to 25% for urban areas',
          'Project cost up to ₹50 lakh for manufacturing',
          'Project cost up to ₹20 lakh for service sector',
        ],
        eligibility:
            'Any individual above 18 years, 8th pass for projects above ₹10 lakh.',
        howToApply: 'Apply online at KVIC portal or through banks.',
        ministry: 'Ministry of MSME',
        iconName: 'business',
      ),

      // Women Specific Schemes
      Scheme(
        id: 'pmuy',
        name: 'Pradhan Mantri Ujjwala Yojana',
        description: 'Free LPG connections for women from BPL households.',
        category: 'Welfare',
        minAge: 18,
        maxAge: 100,
        gender: 'Female',
        benefits: [
          'Free LPG connection',
          'First refill free',
          'EMI facility for stove and refill',
          'Smoke-free kitchen',
        ],
        eligibility: 'Adult women from BPL households without LPG connection.',
        howToApply:
            'Apply at nearest LPG distributor with KYC documents and BPL certificate.',
        ministry: 'Ministry of Petroleum and Natural Gas',
        iconName: 'local_fire_department',
      ),
      Scheme(
        id: 'pmmvy',
        name: 'Pradhan Mantri Matru Vandana Yojana',
        description:
            'Cash incentive for pregnant women for first living child.',
        category: 'Maternity',
        minAge: 19,
        maxAge: 45,
        gender: 'Female',
        benefits: [
          '₹5,000 in three installments',
          'Compensation for wage loss',
          'Improved health and nutrition',
        ],
        eligibility:
            'Pregnant women and lactating mothers for first living child.',
        howToApply:
            'Register at Anganwadi center or health facility within 150 days of pregnancy.',
        ministry: 'Ministry of Women and Child Development',
        iconName: 'pregnant_woman',
      ),
      Scheme(
        id: 'sksy',
        name: 'Sukanya Samriddhi Yojana',
        description: 'Savings scheme for girl child education and marriage.',
        category: 'Savings',
        minAge: 0,
        maxAge: 10,
        gender: 'Female',
        benefits: [
          'High interest rate',
          'Tax benefits under 80C',
          'Maturity at age 21',
          'Partial withdrawal for education at 18',
        ],
        eligibility: 'Girl child below 10 years of age.',
        howToApply:
            'Open account at any bank or post office with birth certificate.',
        ministry: 'Ministry of Finance',
        iconName: 'savings',
      ),

      // Senior Citizen Schemes (60+ years)
      Scheme(
        id: 'ignoaps',
        name: 'Indira Gandhi National Old Age Pension Scheme',
        description: 'Monthly pension for senior citizens from BPL families.',
        category: 'Pension',
        minAge: 60,
        maxAge: 100,
        benefits: [
          '₹200/month (60-79 years) from Centre',
          '₹500/month (80+ years) from Centre',
          'State contribution varies',
          'Direct bank transfer',
        ],
        eligibility:
            'Senior citizens aged 60+ years belonging to BPL family.',
        howToApply:
            'Apply through District Social Welfare Office or online portal.',
        ministry: 'Ministry of Rural Development',
        iconName: 'elderly',
      ),
      Scheme(
        id: 'pmvvy',
        name: 'Pradhan Mantri Vaya Vandana Yojana',
        description: 'Pension scheme providing assured returns for elderly.',
        category: 'Pension',
        minAge: 60,
        maxAge: 100,
        benefits: [
          'Guaranteed pension for 10 years',
          'Assured return of 7.4% p.a.',
          'Maximum investment ₹15 lakh',
          'Loan facility up to 75% of purchase price',
        ],
        eligibility: 'Senior citizens aged 60 years and above.',
        howToApply: 'Apply through LIC of India online or at branch office.',
        ministry: 'Ministry of Finance',
        iconName: 'account_balance_wallet',
      ),
      Scheme(
        id: 'scss',
        name: 'Senior Citizens Savings Scheme',
        description: 'High-interest savings scheme for senior citizens.',
        category: 'Savings',
        minAge: 60,
        maxAge: 100,
        benefits: [
          'Attractive interest rate (8.2% currently)',
          'Quarterly interest payout',
          'Maximum deposit ₹30 lakh',
          'Tax benefits under 80C',
        ],
        eligibility: 'Indian citizens aged 60+ years or 55+ for retired defense personnel.',
        howToApply: 'Open account at any bank or post office.',
        ministry: 'Ministry of Finance',
        iconName: 'savings',
      ),

      // Health Schemes (All ages)
      Scheme(
        id: 'pmjay',
        name: 'Ayushman Bharat - Pradhan Mantri Jan Arogya Yojana',
        description:
            'Health insurance cover of ₹5 lakh per family per year.',
        category: 'Health',
        minAge: 0,
        maxAge: 100,
        benefits: [
          '₹5 lakh health cover per family',
          'Cashless treatment at empanelled hospitals',
          'No cap on family size',
          'Pre and post hospitalization expenses covered',
        ],
        eligibility:
            'Families listed in SECC database as deprived, BPL ration card holders.',
        howToApply:
            'Check eligibility on mera.pmjay.gov.in and get Ayushman card from CSC or hospital.',
        ministry: 'Ministry of Health and Family Welfare',
        iconName: 'health_and_safety',
      ),
      Scheme(
        id: 'jsy',
        name: 'Janani Suraksha Yojana',
        description:
            'Cash assistance for institutional delivery.',
        category: 'Maternity',
        minAge: 19,
        maxAge: 45,
        gender: 'Female',
        benefits: [
          'Cash assistance for delivery',
          '₹1,400 in rural areas',
          '₹1,000 in urban areas',
          'ASHA support during delivery',
        ],
        eligibility:
            'Pregnant women from BPL families delivering in government hospitals.',
        howToApply: 'Register at nearest government health facility.',
        ministry: 'Ministry of Health and Family Welfare',
        iconName: 'local_hospital',
      ),

      // Education Schemes
      Scheme(
        id: 'nsp',
        name: 'National Scholarship Portal Schemes',
        description: 'Various scholarships for students at all levels.',
        category: 'Education',
        minAge: 6,
        maxAge: 35,
        benefits: [
          'Financial assistance for education',
          'Multiple scholarship options',
          'Merit and means-based',
          'Direct benefit transfer',
        ],
        eligibility:
            'Students from economically weaker sections with good academic record.',
        howToApply: 'Apply online at scholarships.gov.in during application period.',
        ministry: 'Ministry of Education',
        iconName: 'school',
      ),
      Scheme(
        id: 'pmrf',
        name: 'Prime Minister Research Fellowship',
        description: 'Fellowship for doctoral research in IITs and IISc.',
        category: 'Higher Education',
        minAge: 21,
        maxAge: 35,
        benefits: [
          '₹70,000-80,000 monthly fellowship',
          'Research grant of ₹2 lakh per year',
          'Direct admission to PhD programs',
        ],
        eligibility:
            'Students with excellent academic record from IITs, IISc, NITs, IISERs, IIITs.',
        howToApply: 'Apply online during PMRF admission cycle.',
        ministry: 'Ministry of Education',
        iconName: 'science',
      ),

      // Housing Schemes
      Scheme(
        id: 'pmayg',
        name: 'Pradhan Mantri Awaas Yojana - Gramin',
        description: 'Financial assistance for construction of pucca house.',
        category: 'Housing',
        minAge: 18,
        maxAge: 100,
        benefits: [
          '₹1.20 lakh in plain areas',
          '₹1.30 lakh in hilly/difficult areas',
          '90 days of unskilled labor wages under MGNREGA',
          'Toilet construction assistance',
        ],
        eligibility:
            'Houseless families or those living in kutcha/dilapidated house, as per SECC data.',
        howToApply: 'Apply through Gram Panchayat or Block Development Office.',
        ministry: 'Ministry of Rural Development',
        iconName: 'home',
      ),
      Scheme(
        id: 'pmayu',
        name: 'Pradhan Mantri Awaas Yojana - Urban',
        description: 'Affordable housing for urban poor.',
        category: 'Housing',
        minAge: 18,
        maxAge: 100,
        benefits: [
          'Interest subsidy on home loans',
          'Up to ₹2.67 lakh subsidy for EWS/LIG',
          'Central assistance for in-situ rehabilitation',
        ],
        eligibility:
            'EWS/LIG/MIG families in urban areas without pucca house.',
        howToApply: 'Apply online at pmaymis.gov.in or through ULBs.',
        ministry: 'Ministry of Housing and Urban Affairs',
        iconName: 'apartment',
      ),

      // Agriculture Schemes
      Scheme(
        id: 'pmkisan',
        name: 'PM-KISAN Samman Nidhi',
        description: 'Income support for farmers.',
        category: 'Agriculture',
        minAge: 18,
        maxAge: 100,
        benefits: [
          '₹6,000 per year in 3 installments',
          'Direct bank transfer',
          'All landholding farmers eligible',
        ],
        eligibility: 'All farmer families with cultivable land.',
        howToApply:
            'Register through local agriculture office or online at pmkisan.gov.in.',
        ministry: 'Ministry of Agriculture',
        iconName: 'agriculture',
      ),
      Scheme(
        id: 'pmfby',
        name: 'Pradhan Mantri Fasal Bima Yojana',
        description: 'Crop insurance scheme for farmers.',
        category: 'Agriculture',
        minAge: 18,
        maxAge: 100,
        benefits: [
          'Low premium - 2% for Kharif, 1.5% for Rabi',
          'Full insured amount on total crop loss',
          'Coverage for all crops',
          'Smartphone-based claim settlement',
        ],
        eligibility: 'All farmers growing notified crops in notified areas.',
        howToApply: 'Enroll through bank or insurance company during sowing season.',
        ministry: 'Ministry of Agriculture',
        iconName: 'grass',
      ),

      // Disability Schemes
      Scheme(
        id: 'ignwds',
        name: 'Indira Gandhi National Disability Pension Scheme',
        description: 'Monthly pension for persons with severe disabilities.',
        category: 'Disability',
        minAge: 18,
        maxAge: 79,
        benefits: [
          '₹300/month from Centre',
          'Additional state contribution',
          'Direct bank transfer',
        ],
        eligibility:
            'Persons with 80%+ disability from BPL families, aged 18-79 years.',
        howToApply: 'Apply through District Social Welfare Office.',
        ministry: 'Ministry of Social Justice and Empowerment',
        iconName: 'accessible',
      ),

      // Widow Schemes
      Scheme(
        id: 'ignwps',
        name: 'Indira Gandhi National Widow Pension Scheme',
        description: 'Monthly pension for widows from BPL families.',
        category: 'Pension',
        minAge: 40,
        maxAge: 79,
        gender: 'Female',
        benefits: [
          '₹300/month from Centre',
          'Additional state contribution',
          'Direct bank transfer',
        ],
        eligibility: 'Widows aged 40-79 years from BPL families.',
        howToApply: 'Apply through District Social Welfare Office.',
        ministry: 'Ministry of Rural Development',
        iconName: 'person',
      ),
    ];
  }

  static List<Scheme> getSchemesByAge(int age, String gender) {
    return getAllSchemes()
        .where((scheme) => scheme.isEligible(age, gender))
        .toList();
  }

  static List<Scheme> getSchemesByCategory(String category) {
    return getAllSchemes()
        .where((scheme) => scheme.category == category)
        .toList();
  }

  static List<String> getAllCategories() {
    return getAllSchemes().map((s) => s.category).toSet().toList()..sort();
  }
}
