class AppIcons {
  AppIcons._();

  static const String logo = 'assets/icons/logo.svg';
  static const String logo2 = 'assets/icons/logo2.svg';

  //BottomNavBar
  static const String home = 'assets/icons/home.svg';
  static const String courses = 'assets/icons/themes.svg';
  static const String cart = 'assets/icons/cart.svg';
  static const String results = 'assets/icons/results.svg';
  static const String pupils = 'assets/icons/ic_profile.svg';

  static const String notifications = 'assets/icons/notifications.svg';
  static const String calendar = 'assets/icons/calendar.svg';

  static const String person = 'assets/icons/person.svg';

  //PARENT
  static const String onLaptop = 'assets/icons/on_laptop.svg';
  static const String empty = 'assets/icons/empty.svg';
  static const String emptyNotification = 'assets/icons/no_notification.svg';
  static const String themeBook = 'assets/icons/theme_book.svg';
  static const String icDocument = 'assets/icons/document.svg';
  static const String icVideo = 'assets/icons/ic_video.svg';
  static const String icLeft = 'assets/icons/ic_left.svg';
  static const String icRight = 'assets/icons/ic_right.svg';
  static const String star = 'assets/icons/ic_star.svg';
  static const String clock = 'assets/icons/clock.svg';
  static const String book = 'assets/icons/book.svg';
  static const String add = 'assets/icons/ic_add.svg';
  static const String lightning = 'assets/icons/lightning.svg';
  static const String coin = 'assets/icons/coin.svg';
  static const String settings = 'assets/icons/settings.svg';
  static const String wallet = 'assets/icons/wallet.svg';
  static const String certificate = 'assets/icons/certificates.svg';
  static const String logout = 'assets/icons/logout.svg';
  static const String icEdit = 'assets/icons/ic_edit.svg';
  static const String income = 'assets/icons/income.svg';
  static const String expense = 'assets/icons/expense.svg';
  static const String progress = 'assets/icons/progress.svg';
  static const String illustration = 'assets/icons/illustration.svg';
  static const String mail = 'assets/icons/Mail.svg';
  static const String books = 'assets/icons/books_home.png';
  static const String bloodReport = 'assets/icons/blood_report.png';
  static const String trophy = 'assets/icons/trophy.png';
  static const String personBackground = 'assets/icons/person_background.png';
  static const String noInternet = 'assets/icons/no_internet.svg';
  static const String upload = 'assets/icons/document_upload.svg';
  static const String trash = 'assets/icons/trash.svg';
  static const String calendarOrange = 'assets/icons/calendar_orange.svg';
  static const String taskSquare = 'assets/icons/task_square.svg';
  static const String icTestDocument = 'assets/icons/ic_document.svg';
  static const String onboarding1 = 'assets/icons/onboarding1.svg';
  static const String onboarding2 = 'assets/icons/stack-of-money2.svg';
  static const String onboarding3 = 'assets/icons/onboarding3.svg';
  static const String paymentScreenIcon = "assets/icons/Iconex2.svg";
  static const String walletFull = "assets/icons/Wallet_full.svg";

  static String getFile(String type) {
    return type == "pdf" || type == "docx" || type == "mp4"
        ? 'assets/icons/$type.svg'
        : "assets/icons/file.svg";
  }
}

class AppImages {
  AppImages._();

  static const String imgAppLogo = 'assets/images/img_app_logo.png';
}
