import 'dart:convert';
import 'dart:math';
import 'package:hazrat_khadije/model/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' as rootBundle;
import 'package:hazrat_khadije/model/MainProduct.dart';
import 'dart:async';
import 'dart:core';

import '../model/File.dart';
import '../model/meta.dart';


// const NESTED_JSON = '[{"id": "3DG","language": "fa","subdomain": null,"title": "کاش برای بهتر شدن حالمان دعا کنند ...","seotitle": null,"slug": "shehk-moslem-esmaeely","slug_raw": "shehk-moslem-esmaeely","parent_url": [],"url": "news/shehk-moslem-esmaeely","link": "https://khadije.com/fa/news/shehk-moslem-esmaeely","content": "<p>این روزها به سوگ<b> شیخ مسلم اسماعیلی</b> نشسته ایم؛ از چهره های آشنا در آسمان و پایبند به رسم و رسوم مملکت عشق.</p><p>رسم و رسوم آدم های عاشق با تمام دنیا فرق می کند.</p><p>متحیرم بعضی رسم عاشقی را در کدام مکتب خانه اینگونه کامل و بی نقص آموخته اند و درس به درس زندگی کردند.</p><p>آنان که گاهی به رسم مردترین مرد، شب گرد کوچه های نیاز مردم می شوند .</p><p>گاهی به رسم کریم ترین مرد، سفره داری می کنند و بی حساب می بخشند.</p><p>گاهی به رسم تنهاترین مرد، با تمام هستی شان فریاد می شوند بر سر آنان که غریبه اند با الفبای آزادگی.</p><p>گاهی به رسم عابدترین مرد، زمین را بی خواب می کنند از زمزمه های شبانه و عاشقانه شان در سجده.</p><p>آنانکه زندگیشان مملو از رسم هاییست که انگار یکی از یکی بیگانه ترند برای اهالی خاک اما برای اهالی آسمان آشنای آشنا...</p><p>و هرکدامشان که می روند چقدر هوای نفس کشیدنمان کم تر و سینه هامان سنگین تر می شود...</p><p><b>کاش برای بهتر شدن حالمان دعا کنند ...</b></p><p><br></p>","meta": {"download": {"title": "","url": null,"target": false,"color": ""},"source": {"title": "","url": null},"redirect": null,"thumb": "https://khadije.com/files/15/663-25b2916b5c49db617f52fa5ea48efee7.jpg","gallery": ["https://khadije.com/files/15/664-25b2916b5c49db617f52fa5ea48efee7.jpg"]},"file": {"main": "https://khadije.com/files/15/663-25b2916b5c49db617f52fa5ea48efee7.jpg","large": "https://khadije.com/files/15/663-25b2916b5c49db617f52fa5ea48efee7-large.jpg","normal": "https://khadije.com/files/15/663-25b2916b5c49db617f52fa5ea48efee7-normal.jpg","thumb": "https://khadije.com/files/15/663-25b2916b5c49db617f52fa5ea48efee7-thumb.jpg"},"type": "post","subtype": "standard","special": "slider","comment": "closed","count": null,"order": null,"status": "publish","parent": null,"user_id": "5Xv","publishdate": "2021-09-02 00:00:00","datemodified": "2021-09-04 09:56:15","datecreated": "2021-09-02 09:47:52","subtitle": null,"excerpt": "رحلت عالم وارسته، معلم اخلاق و پناه مستمندان ، جناب حجت‌الاسلام و المسلمین آقا مسلم اسماعیلی."},{"id": "3DC","language": "fa","subdomain": null,"title": "به تو از دور سلام","seotitle": null,"slug": "zyarat-nyabati","slug_raw": "zyarat-nyabati","parent_url": [],"url": "news/zyarat-nyabati","link": "https://khadije.com/fa/news/zyarat-nyabati",-"content": "<p>خادمان موسسه حضرت خدیجه سلام الله علیها امروز مفتخرند  دل زائران و دوستداران کریمه اهل بیت علیها السلام  را که در <b>طرح زیارت نیابتی</b> ثبت نام نموده بودند به ضریح بانوی کرامت گره زنند.</p><p>به همین مناسبت به نیابت از افرادی که توفیق تشرف حضوری در حرم مطهر حضرت فاطمه معصومه سلام الله علیها را ندارند اما دل و ذهن آن ها در صحن و سرای این بانوی عظیم الشان می باشد زیارت نیابتی انجام گردید.</p>","meta": {"download": {"title": "","url": null,"target": false,"color": ""},"source": {"title": "","url": null},"redirect": null,"thumb": "https://khadije.com/files/15/324-25b2916b5c49db617f52fa5ea48efee7.jpg","gallery": ["https://khadije.com/files/15/325-51cffa88e182545b8d779538e93452d2.jpg","https://khadije.com/files/15/326-9589bc5eb1595d147341d1fa185586c8.jpg","https://khadije.com/files/15/327-c0d0b2b0d2c6a7056df08cfd06c4f6ba.jpg"]},"file": {"main": "https://khadije.com/files/15/324-25b2916b5c49db617f52fa5ea48efee7.jpg","large": "https://khadije.com/files/15/324-25b2916b5c49db617f52fa5ea48efee7-large.jpg","normal": "https://khadije.com/files/15/324-25b2916b5c49db617f52fa5ea48efee7-normal.jpg","thumb": "https://khadije.com/files/15/324-25b2916b5c49db617f52fa5ea48efee7-thumb.jpg"},"type": "post","subtype": "standard","special": "slider","comment": "closed","count": null,"order": null,"status": "publish","parent": null,"user_id": "5Xv","publishdate": "2021-08-03 00:00:00","datemodified": "2021-08-03 11:59:52","datecreated": "2021-08-03 11:44:37","subtitle": null,"excerpt": "زیارت نیابتی در حرم بانوی کرامت سلام الله علیها."},{"id": "3Ds","language": "fa","subdomain": null,"title": "کد دستوری جدید جهت فعالیت های مشارکتی","seotitle": null,"slug": "code-dastori-jadid","slug_raw": "code-dastori-jadid","parent_url": [],"url": "news/code-dastori-jadid","link": "https://khadije.com/fa/news/code-dastori-jadid","content": "<h2 style=\"text-align: center;\">ستاره ۶۶۵۵ ستاره ۱۰ مربع</h2>","meta": {"download": {"title": "","url": null,"target": false,"color": ""},"source": {"title": "","url": null},"redirect": null,"thumb": "https://khadije.com/files/15/55-ddb09ceb13180511144bac4a8051b8bd.jpg"},"file": {"main": "https://khadije.com/files/15/55-ddb09ceb13180511144bac4a8051b8bd.jpg","large": "https://khadije.com/files/15/55-ddb09ceb13180511144bac4a8051b8bd-large.jpg","normal": "https://khadije.com/files/15/55-ddb09ceb13180511144bac4a8051b8bd-normal.jpg","thumb": "https://khadije.com/files/15/55-ddb09ceb13180511144bac4a8051b8bd-thumb.jpg"},"type": "post","subtype": "standard","special": "slider","comment": "closed","count": null,"order": null,"status": "publish","parent": null,"user_id": "3SHP","publishdate": "2021-06-30 00:00:00","datemodified": "2021-07-25 10:30:59","datecreated": "2021-06-30 16:42:16","subtitle": null,"excerpt": "ستاره ۶۶۵۵ ستاره ۱۰ مربع"},{"id": "3Dr","language": "fa","subdomain": null,"title": "گزارش قربانی ماه شوال","seotitle": null,"slug": "ghozresh-ghorbani-shavval","slug_raw": "ghozresh-ghorbani-shavval","parent_url": [],"url": "news/ghozresh-ghorbani-shavval","link": "https://khadije.com/fa/news/ghozresh-ghorbani-shavval","content": "<p>بیش از یکسال است که سفره بخشی از مردم محروم کشورمان با همت خیرین و بینندگان محترم برنامه سمت خدا رنگین شده است</p><p>افتخار داریم که به اطلاع همراهان ارجمند برسانیم که در ماه شوال بیش از 1500 راس قربانی در قالب 18 هزار بسته یک و نیم کیلویی گوشت گوسفندی با کیفیت بسیار بالا بین استانهای قم قزوین کرمانشاه همدان اردبیل سمنان تهران مازندران گیلان مرکزی کردستان اصفهان توزیع شده است.</p><p><br></p><p>به اطلاع همراهان محترم میرساند که اگر در روزهای اولیه ماه واریزی داشته باشند در قربانی مشارکتی ماه جاری&nbsp; و چنانچه بعد از زمان مشخص شده واریزی داشته باشند برای اول ماه قمری آینده هزینه خواهد شد</p><p>همچنین به هردلیلی موفق به اعلام واریزی نشدید نگران هزینه کرد هدایای خود در نیت قربانی نباشید به دلیل اینکه حساب اعلام شده&nbsp; صرفا مربوط به قربانی میباشد</p><p>جهت مشارکت در قربانی از طریق لینگ ذیل اقدام نمایید</p><p><a href=\"https://khadije.com/donate?nazr=qorbani-aval-mah\"><span data-auto-link=\"true\" data-href=\"https://khadije.com/donate?nazr=qorbani-aval-mah\">https://khadije.com/donate?nazr=qorbani-aval-mah</span></a>&nbsp;</p>","meta": {"download": {"title": "","url": null,"target": false,"color": ""},"source": {"title": "","url": null},"redirect": null,"thumb": "https://khadije.com/files/14/859-79e42e9d0fef80a3bd37632b10e06a6b.jpg","gallery": ["https://khadije.com/files/14/860-ac4224386c5a653d8638ef738c5f60d0.jpg","https://khadije.com/files/14/861-ea7a53ffd7a8e145e15dedc1819b489c.jpg","https://khadije.com/files/14/862-a053958896e0a6fed5a1a88832fba8c3.jpg","https://khadije.com/files/14/863-fcade008f3d258ba0f99c6aed6faf742.jpg","https://khadije.com/files/14/864-82a07641cee644877d884c1dc9548b85.jpg","https://khadije.com/files/14/865-179eda74067e15c86b7e65e2e282efb4.jpg","https://khadije.com/files/14/866-9aaebc08f6801a02449890a55e8d2908.jpg","https://khadije.com/files/14/867-87eb2f5f40c4fcba5962993779a71f7e.jpg"]},"file": {"main": "https://khadije.com/files/14/859-79e42e9d0fef80a3bd37632b10e06a6b.jpg","large": "https://khadije.com/files/14/859-79e42e9d0fef80a3bd37632b10e06a6b-large.jpg","normal": "https://khadije.com/files/14/859-79e42e9d0fef80a3bd37632b10e06a6b-normal.jpg","thumb": "https://khadije.com/files/14/859-79e42e9d0fef80a3bd37632b10e06a6b-thumb.jpg"},"type": "post","subtype": "standard","special": "slider","comment": "open","count": null,"order": null,"status": "publish","parent": null,"user_id": "3SHP","publishdate": "2021-05-30 18:59:00","datemodified": "2021-07-08 10:27:08","datecreated": "2021-05-30 18:56:00","subtitle": null,"excerpt": "قربانی مشارکتی توزیع سمت خدا موسسه حضرت خدیجه علیها السلام محرومین"},{"id": "3Dq","language": "fa","subdomain": null,"title": "تولد چهارمین فرزند طرح فرزندان غدیر","seotitle": null,"slug": "tavallode-chaharomin-farzad","slug_raw": "tavallode-chaharomin-farzad","parent_url": [],"url": "news/tavallode-chaharomin-farzad","link": "https://khadije.com/fa/news/tavallode-chaharomin-farzad","content": "<p>به یاری خداوند متعال و با مشارکت خیرین برنامه تلویزیونی سمت خدا و موسسه حضرت خدیجه علیها السلام بعداز گذشت قریب به 9 ماه از آغاز طرح ملی فرزندان غدیر ،افتخار داریم خبر شیرین ولادت چهارمین فرزند را به اطلاع شما عزیزان رسانده و اعلام کنیم که بیش از 100 مادر در انتظار تولد فرزند دلبندشان میباشند.</p><p>ادامه این مسیر علاوه بر دعای خیر شما خوبان،نیازمند همت والایتان در مشارکت برای تامین هزینه ها میباشد.</p><p><br></p><p>ولادت یک فرزند جلوگیری از فروپاشی خانواده</p><p>جهت مشارکت از طریق لینک ذیل اقدام بفرمایید</p><p><a href=\"https://khadije.com/pay-1/redirect-ghadir\"><span data-auto-link=\"true\" data-href=\"https://khadije.com/pay-1/redirect-ghadir\">https://khadije.com/pay-1/redirect-ghadir</span></a><br></p>","meta": {"download": {"title": "","url": null,"target": false,"color": ""},"source": {"title": "","url": null},"redirect": null,"thumb": "https://khadije.com/files/14/858-a068dd9caa5ad91f11823ca327a35180.jpg"},"file": {"main": "https://khadije.com/files/14/858-a068dd9caa5ad91f11823ca327a35180.jpg","large": "https://khadije.com/files/14/858-a068dd9caa5ad91f11823ca327a35180-large.jpg","normal": "https://khadije.com/files/14/858-a068dd9caa5ad91f11823ca327a35180-normal.jpg","thumb": "https://khadije.com/files/14/858-a068dd9caa5ad91f11823ca327a35180-thumb.jpg"},"type": "post","subtype": "standard","special": "slider","comment": "closed","count": null,"order": null,"status": "publish","parent": null,"user_id": "3SHP","publishdate": "2021-05-30 00:00:00","datemodified": "2021-07-26 12:15:10","datecreated": "2021-05-30 18:42:25","subtitle": null,"excerpt": "ولادت یک فرزند جلوگیری از فروپاشی خانواده."},{"id": "3Dp","language": "fa","subdomain": null,"title": "پویش افطاری خانه به خانه در شب وفات ام المومنین علیهاالسلام","seotitle": null,"slug": "eftari-khane-be-khane","slug_raw": "eftari-khane-be-khane","parent_url": [],"url": "news/eftari-khane-be-khane","link": "https://khadije.com/fa/news/eftari-khane-be-khane","content": "<p>موسسه حضرت خدیجه سلام الله علیها همزمان با <b>فرا رسیدن دهم ماه مبارک رمضان  و سالروز وفات ام المومنین حضرت خدیجه کبری سلام الله علیها</b> و <b>به منظور همکاری با کادر درمان و رعایت پروتکل های بهداشتی</b> اقدام به پویش افطاری خانه به خانه در شب وفات بانوی بزرگ اسلام نمود.</p><p>بر اساس این طرح پس از تحویل اقلام مورد نیاز، هر خانه برای نزدیکان خود اقدام به پخت و توزیع افطاری نمود و <b>بیش از هشتاد هزار پرس غذا </b>در استان های خراسان رضوی، سمنان، تهران، گیلان، گلستان، مازندران و قم طبخ گردید.</p>","meta": {"download": {"title": "","url": null,"target": false,"color": ""},"source": {"title": "","url": null},"redirect": null,"thumb": "https://khadije.com/files/14/636-25b2916b5c49db617f52fa5ea48efee7.jpg","gallery": ["https://khadije.com/files/14/626-d9b4268136dde50ba91b42b57d2c2da0.jpg","https://khadije.com/files/14/627-d09eba92cfb252b7c3bba75b21b8227d.jpg","https://khadije.com/files/14/628-5ed213e5bed0b89479c32595b0d54b24.jpg","https://khadije.com/files/14/629-d5e41084066e917b9d485c20717c6a3b.jpg","https://khadije.com/files/14/630-676a56606c8190d2524ec090f5d8c633.jpg","https://khadije.com/files/14/631-12cc8241700e44c1ec63235f45d04a51.jpg"]},"file": {"main": "https://khadije.com/files/14/636-25b2916b5c49db617f52fa5ea48efee7.jpg","large": "https://khadije.com/files/14/636-25b2916b5c49db617f52fa5ea48efee7-large.jpg","normal": "https://khadije.com/files/14/636-25b2916b5c49db617f52fa5ea48efee7-normal.jpg","thumb": "https://khadije.com/files/14/636-25b2916b5c49db617f52fa5ea48efee7-thumb.jpg"},"type": "post","subtype": "standard","special": "slider","comment": "closed","count": null,"order": null,"status": "publish","parent": null,"user_id": "5Xv","publishdate": "2021-04-26 00:00:00","datemodified": "2021-04-27 13:36:32","datecreated": "2021-04-26 13:48:54","subtitle": null,"excerpt": "خوان کرامت ام المومنین حضرت خدیجه سلام الله علیها در شب وفات حضرتش."},{"id": "3Dn","language": "fa","subdomain": null,"title": "فضاسازی شهری همزمان با سالروز وفات حضرت خدیجه سلام الله علیها","seotitle": null,"slug": "faza-sazi-shahri-dar-vfat-hazrat-khadije","slug_raw": "faza-sazi-shahri-dar-vfat-hazrat-khadije","parent_url": [],"url": "news/faza-sazi-shahri-dar-vfat-hazrat-khadije","link": "https://khadije.com/fa/news/faza-sazi-shahri-dar-vfat-hazrat-khadije","content": "<p style=\"text-align: justify;\">موسسه حضرت خدیجه علیها السلام با عنایت به فرارسیدن سالروز وفات ام المومنین حضرت خدیجه کبری سلام الله علیها  و در راستای گرامیداشت شخصیت این بانوی بزرگ، و با هدف برجسته سازی و ایجاد فضای معنوی مناسب با این روز اقدام به نصب پرچم مشکی و سیاه‌پوش کردن سطح شهر نمود.</p><p style=\"text-align: justify;\">در همین راستا بیش از سه هزار و چهارصد متر مربع فضاسازی رحلت حضرت خدیجه سلام الله علیها در قالب بنر سر درب عوارضی قم، تهران، پرتابلی، استرابورد، عرشه پل و آویز و اکران در بیش از یک هزار نقطه از سطح شهرمقدی قم انجام شد.</p>","meta": {"download": {"title": "","url": null,"target": false,"color": ""},"source": {"title": "","url": null},"redirect": null,"thumb": "https://khadije.com/files/14/618-25b2916b5c49db617f52fa5ea48efee7.jpg","gallery": ["https://khadije.com/files/14/607-82e1b608c53ffba3a49bae55b9644d90.jpg","https://khadije.com/files/14/608-ff8791d51e5d9cd289e246ca703bc7c0.jpg","https://khadije.com/files/14/609-a272a2ed6cec4110b89eb1626d32f184.jpg","https://khadije.com/files/14/610-c5615fce534264a67250a70d1cea7eb3.jpg","https://khadije.com/files/14/611-64d940941d91bc7ada64145d9c094b50.jpg","https://khadije.com/files/14/612-1aa401fe1f6088436bbcca4998484204.jpg","https://khadije.com/files/14/613-89c58a6b368b3b7adfd83318a97634b3.jpg","https://khadije.com/files/14/614-395f90e87a903a5cb4caed14ba520f07.jpg","https://khadije.com/files/14/615-f63c2fe21473d1302d241ecf7722fcdb.jpg","https://khadije.com/files/14/616-98ba1d610825e147b572489e63997391.jpg","https://khadije.com/files/14/617-3d34a92d7b389fae6c1b1954c089c4b6.jpg","https://khadije.com/files/14/632-f1ffdb28ab7ee28e58b5d9e865ba4c9d.jpg","https://khadije.com/files/14/633-346a2397153ff6b34eed8a1ca6f923cd.jpg","https://khadije.com/files/14/634-c94a715d517cadda2807b619bb33d776.jpg","https://khadije.com/files/14/635-a41c43f52cd43743f0093877f7191b98.jpg","https://khadije.com/files/14/638-94a69abfd259dc75949cfd4b24bc264e.jpg","https://khadije.com/files/14/640-e57a38de46f72cf25ad5fb23c2d93a1e.jpg","https://khadije.com/files/14/641-b6514fba71b4651014a328508de68376.jpg","https://khadije.com/files/14/639-e8165fcafccac268e5e44494cc1f38eb.jpg"]},"file": {"main": "https://khadije.com/files/14/618-25b2916b5c49db617f52fa5ea48efee7.jpg","large": "https://khadije.com/files/14/618-25b2916b5c49db617f52fa5ea48efee7-large.jpg","normal": "https://khadije.com/files/14/618-25b2916b5c49db617f52fa5ea48efee7-normal.jpg","thumb": "https://khadije.com/files/14/618-25b2916b5c49db617f52fa5ea48efee7-thumb.jpg"},"type": "post","subtype": "standard","special": "slider","comment": "closed","count": null,"order": null,"status": "publish","parent": null,"user_id": "5Xv","publishdate": "2021-04-25 00:00:00","datemodified": "2021-04-28 10:21:48","datecreated": "2021-04-25 13:30:36","subtitle": null,"excerpt": "گرامیداشت سالروز وفات ام المومنین حضرت خدیجه کبری سلام الله علیها."},{"id": "3Dm","language": "fa","subdomain": null,"title": "جهت دانلود کتاب صوتی این تو و این ماجرای عشق من کلیک بفرمایید.","seotitle": null,"slug": "in-to-va-in-majaraye-eshghe-man","slug_raw": "in-to-va-in-majaraye-eshghe-man","parent_url": [],"url": "news/in-to-va-in-majaraye-eshghe-man","link": "https://khadije.com/fa/news/in-to-va-in-majaraye-eshghe-man","content": "<p><b>دانلود کتاب صوتی این تو و این ماجرای عشق من</b></p><p><b>نویسنده کتاب: سرکار خانم انسیه سادات هاشمی</b></p><p><b>&nbsp;با صدای دلنشین نجم الدین شریعتی&nbsp;</b></p>","meta": {"download": {"title": "","url": null,"target": false,"color": ""},"source": {"title": "","url": null},"redirect": null,"gallery": ["https://khadije.com/files/14/537-bd2eca33a6c355902800d8ecf66e16bb.mp3","https://khadije.com/files/14/538-db54e14f03d494687f0c678c6483a567.mp3"],"thumb": "https://khadije.com/files/14/637-a9a4f927aa0a50572493ddb6e2d359c5.jpg"},"file": {"main": "https://khadije.com/files/14/637-a9a4f927aa0a50572493ddb6e2d359c5.jpg","large": "https://khadije.com/files/14/637-a9a4f927aa0a50572493ddb6e2d359c5-large.jpg","normal": "https://khadije.com/files/14/637-a9a4f927aa0a50572493ddb6e2d359c5-normal.jpg","thumb": "https://khadije.com/files/14/637-a9a4f927aa0a50572493ddb6e2d359c5-thumb.jpg"},"type": "post","subtype": "standard","special": "slider","comment": "closed","count": null,"order": null,"status": "publish","parent": null,"user_id": "3SHP","publishdate": "2021-04-19 00:00:00","datemodified": "2021-04-27 15:28:48","datecreated": "2021-04-19 17:39:13","subtitle": null,"excerpt": "دانلود کتاب صوتی این تو و این ماجرای عشق من با صدای دلنشین نجم الدین شریعتی"},{"id": "3Dk","language": "fa","subdomain": null,"title": "ارسال بسته های قربانی به سراسر ایران اسلامی","seotitle": null,"slug": "send-the-sacrifice","slug_raw": "send-the-sacrifice","parent_url": [],"url": "news/send-the-sacrifice","link": "https://khadije.com/fa/news/send-the-sacrifice","content": "طرح ارسال قربانی اول ماه شعبان و نیمه شعبان که به همت خیرین گران مایه برنامه تلویزیونی سمت خدا و موسسه حضرت خدیجه سلام الله علیها و در جوار آستان مقدس بانوی کرامت انجام گردیده بود به اتمام رسید.<p>&nbsp;در مرحله نخست این ارسال ها <b>هفت استان و نه نقطه</b> و در مرحله دوم <b>بیست و چهار استان</b> از کمک های مومنانه خیرین بهره مند گردیدند.&nbsp;</p><p><b>&nbsp;&nbsp;لازم به ذکر است که بیش از سه هزار و پانصد راس گوسفند در قالب چهل هزار بسته گوشت در میان افراد کم برخوردار سراسر کشور توزیع گردید.</b></p>","meta": {"download": {"title": "","url": null,"target": false,"color": ""},"source": {"title": "","url": null},"redirect": null,"gallery": ["https://khadije.com/files/14/300-95d8d81e3309d7bf8f3e7ad853366230.jpg","https://khadije.com/files/14/301-a8e60a8f7e98fae9f10da56b061a5c8b.jpg","https://khadije.com/files/14/302-d1c37a8931b2322ea9eab8d8857faabe.jpg","https://khadije.com/files/14/303-5764d6a6eeae7b822df5fc9dfe7c9a86.jpg","https://khadije.com/files/14/304-71664407d631579f784da5ab7bada24f.jpg","https://khadije.com/files/14/305-a40c9e5f5b5cab2fedd28aa90cf182a6.jpg","https://khadije.com/files/14/306-d91ea5d8cc7b8db1724e3427c25ed2a0.jpg","https://khadije.com/files/14/307-ce6a40dbedcdf34c2c576fa794d0ab05.jpg","https://khadije.com/files/14/308-295252d910b858f19b40a40ea1ac6961.jpg"],"thumb": "https://khadije.com/files/14/309-25b2916b5c49db617f52fa5ea48efee7.jpg"},"file": {"main": "https://khadije.com/files/14/309-25b2916b5c49db617f52fa5ea48efee7.jpg","large": "https://khadije.com/files/14/309-25b2916b5c49db617f52fa5ea48efee7-large.jpg","normal": "https://khadije.com/files/14/309-25b2916b5c49db617f52fa5ea48efee7-normal.jpg","thumb": "https://khadije.com/files/14/309-25b2916b5c49db617f52fa5ea48efee7-thumb.jpg"},"type": "post","subtype": "standard","special": "slider","comment": "closed","count": null,"order": null,"status": "publish","parent": null,"user_id": "5Xv","publishdate": "2021-04-11 00:00:00","datemodified": "2021-04-11 12:45:26","datecreated": "2021-04-11 12:23:08","subtitle": null,"excerpt": "ارسال بیش از چهل هزار بسته قربانی به سی و یک استان کشور."},{"id": "3Dg","language": "fa","subdomain": null,"title": "سی سخت تنها نیست","seotitle": null,"slug": "سی-سخت-تنها-نیست","slug_raw": "سی-سخت-تنها-نیست","parent_url": [],"url": "news/سی-سخت-تنها-نیست","link": "https://khadije.com/fa/news/سی-سخت-تنها-نیست","content": "<p>5 دستگاه ماشین در قالب 1 دستگاه نانوایی تمام اتوماتیک و پیشرفته، 2 ماشین حمل گوشت ( 4000 بسته گوشت 1.5 کیلویی) و 2 ماشین حمل آرد (7 تن ) به منظقه زلزله زده سی سخت اعزام شدند که کاروان با بدرقه و همراهی نماینده محترم ولی فقیه استان کهگیلویه و ریاست محترم ارشاد و مدیر محترم کانون های مساجد استان وارد منطقه زلزله شدند.&nbsp;</p><p>لازم به ذکر است که تعداد 2800 خانواده در شهر سی سخت در چادر اسکان دارند و 140 خانواده در کانکس و حدود 1000 خانواده در روستاهها آواره شده که در چادرها اسکان داده شده اند.</p><p>خادمان موسسه حضرت خدیجه س و برنامه سمت خدا با حمایت شما خیرین محترم و به نیابت از شما در منطقه زلزله زده سی سخت مشغول کمک به مردم شریف این شهر و روستاها می باشند.&nbsp;</p><p style=\"text-align: center;\"><b><span style=\"font-size: 1.3em;\">جهت کمک به زلزله زدگان سی سخت می توانید هدایای خود را به شماره کارت ذیل واریز نمایید؛<br></span></b></p><p style=\"text-align: center;\"><span style=\"font-size: 1.3em;\"><b>5041721111537602</b></span></p><b><div style=\"text-align: center;\"><b style=\"font-size: 1em;\"><span style=\"font-size: 1.3em;\">به نام موکب حضرت خدیجه سلام الله علیها</span></b></div></b><p></p><p><br></p>","meta": {"download": {"title": "","url": null,"target": false,"color": ""},"source": {"title": "","url": null},"redirect": null,"thumb": "https://khadije.com/files/13/967-c5e34b5c3f4819043f5d1283e626dba1.jpg","gallery": ["https://khadije.com/files/13/968-76550259d5e559eb5cb736da540d178c.jpg","https://khadije.com/files/13/969-5c48825e224476527924114a97dc0acb.jpg","https://khadije.com/files/13/988-7c1afe606e0f2f89d558ffc1364f8b6d.jpg","https://khadije.com/files/13/967-c5e34b5c3f4819043f5d1283e626dba1.jpg","https://khadije.com/files/13/966-b578fbe02b582489a37121aa03992c2c.jpg","https://khadije.com/files/14/2-eebcd572847460f390281a30d14c4ff1.jpg","https://khadije.com/files/14/3-38cbfd1ec5ef67eefb854d70ebd02a7d.jpg","https://khadije.com/files/14/4-4ab960ed2658b05187e5488438bcd300.jpg","https://khadije.com/files/14/5-77e60aac6bd6a2196c615432c089375b.jpg","https://khadije.com/files/14/6-2952bc66bc6c9fd121d64b449dff0739.jpg","https://khadije.com/files/14/7-0b2f4ade8533dec6dc2bd1022bbbe6b3.jpg","https://khadije.com/files/14/8-2364475efdd26339fc6382be72f0134a.jpg"]},"file": {"main": "https://khadije.com/files/13/967-c5e34b5c3f4819043f5d1283e626dba1.jpg","large": "https://khadije.com/files/13/967-c5e34b5c3f4819043f5d1283e626dba1-large.jpg","normal": "https://khadije.com/files/13/967-c5e34b5c3f4819043f5d1283e626dba1-normal.jpg","thumb": "https://khadije.com/files/13/967-c5e34b5c3f4819043f5d1283e626dba1-thumb.jpg"},"type": "post","subtype": "standard","special": "slider","comment": "closed","count": null,"order": null,"status": "publish","parent": null,"user_id": "3SHP","publishdate": "2021-02-28 00:00:00","datemodified": "2021-03-01 20:08:26","datecreated": "2021-02-28 19:13:34","subtitle": null,"excerpt": "ارسال کمک های خداپسندانه خیرین محترم به منظقه زلزله زده سی سخت"}]';


class ApiClass extends StatefulWidget {
   const ApiClass({Key key}) : super(key: key);

   @override
   _ApiClassState createState() => _ApiClassState();
}

class _ApiClassState extends State<ApiClass> {
  List<dynamic> data;
  Future <List<Product>> getDataFromFakeServer() async{
      // List<dynamic> data = jsonDecode(NESTED_JSON);
      // print(data);
      // products.add(Product.fromJson(data[0]));
      // print(products[0]);
      // List<Product> products = data.map((data) => Product.fromJson(data)).toList();
      // products.add(data.map((data) => Product.fromJson(data)).toList());
      // return products;
      // print(products[0]);
    final jsondata = await rootBundle.rootBundle.loadString('jsonfile/khadijeJson.json');
    final map = json.decode(jsondata);
    List<dynamic> data = map["result"];
    print(data[0]["title"]);
    // print(map["result"][0]["title"]);
    // return data.map((e) => Product.fromJson(e)).toList();

    // Map<String, dynamic> map = json.decode(response.body);
    // List<dynamic> data = map["dataKey"];
    // print(data[0]["name"]);
  }
  // MainProduct _Items;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // fetchItems();
    getDataFromFakeServer();
  }

  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Padding(
  //       padding: EdgeInsets.all(5),
  //       child: GridView.count(
  //         crossAxisSpacing: 7,
  //         mainAxisSpacing: 10,
  //         crossAxisCount: 2,
  //         children: List.generate(
  //           _Items.result.length,
  //               (int position){
  //             return generateItem(_Items.result[position],context,_Items.result.length);
  //           },
  //         ),
  //       ),
  //     ),
  //   );
  // }


  //   void fetchItems() async {
  //     final jsondata = await rootBundle.rootBundle.loadString('jsonfile/khadijeJson.json');
  //
  //     setState(() {
  //       final map = json.decode(jsondata);
  //       List<dynamic> datas = map["result"];
  //       print(datas[0]['title']);
  //       // for (var data in datas) {
  //       var productItem = map.map((data) => Product.fromJson(data)).toList();
  //         // var productItem =  Product(
  //         //   id: data["id"],
  //         //   language: data["language"],
  //         //   subdomain: data["subdomain"],
  //         //   title: data["title"],
  //         //   seotitle: data["seotitle"],
  //         //   slug: data["slug"],
  //         //   slug_raw: data["slug_raw"],
  //         //   parent_url: data["parent_url"],
  //         //   url: data["url"],
  //         //   link: data["link"],
  //         //   content: data["content"],
  //         //   meta: Meta.fromJson(data["meta"]),
  //         //   file: File.fromJson(data["file"]),
  //         //   type: data["type"],
  //         //   subtype: data["subtype"],
  //         //   special: data["special"],
  //         //   comment: data["comment"],
  //         //   count: data["count"],
  //         //   order: data["order"],
  //         //   status: data["status"],
  //         //   parent: data["parent"],
  //         //   user_id: data["user_id"],
  //         //   publishdate: data["publishdate"],
  //         //   datemodified: data["datemodified"],
  //         //   datecreated: data["datecreated"],
  //         //   subtitle: data["subtitle"],
  //         //   excerpt: data["excerpt"],
  //         // );
  //       // var productItem = Product.fromJson(
  //       //     data ['id'],
  //       //     data ['language'],
  //       //     data ['subdomain'],
  //       //     data ['title'],
  //       //     data ['seotitle'],
  //       //     data ['slug'],
  //       //     data ['slug_raw'],
  //       //     data ['parent_url'],
  //       //     data ['url'],
  //       //     data ['link'],
  //       //     data ['content'],
  //       //   data ['meta'],
  //       //   data ['file'],
  //       //   data ['type'],
  //       //   data ['subtype'],
  //       //   data ['special'],
  //       //   data ['comment'],
  //       //   data ['count'],
  //       //   data ['order'],
  //       //   data ['status'],
  //       //   data ['parent'],
  //       //   data ['user_id'],
  //       //   data ['publishdate'],
  //       //   data ['datemodified'],
  //       //   data ['datecreated'],
  //       //   data ['subtitle'],
  //       //   data ['excerpt'],
  //       // );
  //       _Items.result.add(productItem);
  //     // }
  //       print(_Items.result[0].excerpt);
  //     }
  //   );
  // }


//   Card generateItem(Product product,context,int i){
//     return Card(
//       child: InkWell(
//         onTap: (){
//           // Navigator.of(context).push(MaterialPageRoute(
//           //     builder: (context) =>
//           // )
//           // );
//         },
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               // Container(
//               //   width: 100,
//               //   height: 100,
//               //   child: Image.network(
//               //       product.link),
//               // ),
//               // Text(
//               //   product.price,
//               //   style: TextStyle(
//               //     fontFamily: "Vazir",
//               //     color: Colors.pink,
//               //     fontSize: 15,
//               //   ),
//               // ),
//               Text(
//                 product.title,
//                 style: TextStyle(
//                   fontFamily: "Vazir",
//                   color: Colors.black45,
//                   fontSize: 15,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(
//               Radius.circular(30)
//           )
//       ),
//       elevation: 10,
//     );
//   }
// }






// class ApiClass extends StatefulWidget {
//   const ApiClass({Key? key}) : super(key: key);
//
//   @override
//   _ApiClassState createState() => _ApiClassState();
// }

// class _ApiClassState extends State<ApiClass> {
//
//   List<Product> _Items=[];
//
//   @override
//   void initState() {
    // TODO: implement initState
//     super.initState();
//     fetchItems();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.all(5),
//         child: GridView.count(
//           crossAxisSpacing: 7,
//           mainAxisSpacing: 10,
//           crossAxisCount: 2,
//           children: List.generate(
//             _Items.length,
//                 (int position){
//               return generateItem(_Items[position],context);
//             },
//           ),
//         ),
//       ),
//     );
//   }
//
//
//   void fetchItems() async {
//
//     var url="http://welearnacademy.ir/flutter/products_list.json";
//     var response = await http.get(Uri.parse(url));
//     // http.post(Uri.parse(url));
//     setState(() {
//       var productJson = json.decode(utf8.decode(response.bodyBytes));
//       for (var i in productJson) {
//         var productItem = Product(
//             i ['id'],
//             i ['language'],
//             i ['subdomain'],
//             i ['title'],
//             i ['seotitle'],
//             i ['slug'],
//             i ['slug_raw'],
//             i ['parent_url'],
//             i ['url'],
//             i ['link'],
//             i ['content'],
//           i ['meta'],
//           i ['file'],
//           i ['type'],
//           i ['subtype'],
//           i ['special'],
//           i ['comment'],
//           i ['count'],
//           i ['order'],
//           i ['status'],
//           i ['parent'],
//           i ['user_id'],
//           i ['publishdate'],
//           i ['datemodified'],
//           i ['datecreated'],
//           i ['subtitle'],
//           i ['excerpt'],
//         );
//         _Items.add(productItem);
//       }
//     }
//     );
//   }
//   Card generateItem(Product product,context){
//     return Card(
//       child: InkWell(
//         onTap: (){
//           // Navigator.of(context).push(MaterialPageRoute(
//           //     builder: (context) =>
//           // )
//           // );
//         },
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               // Container(
//               //   width: 100,
//               //   height: 100,
//               //   child: Image.network(
//               //       product.link),
//               // ),
//               // Text(
//               //   product.price,
//               //   style: TextStyle(
//               //     fontFamily: "Vazir",
//               //     color: Colors.pink,
//               //     fontSize: 15,
//               //   ),
//               // ),
//               Text(
//                 product.content,
//                 style: TextStyle(
//                   fontFamily: "Vazir",
//                   color: Colors.black45,
//                   fontSize: 15,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(
//               Radius.circular(30)
//           )
//       ),
//       elevation: 10,
//     );
//   }
// }
//





Widget build(BuildContext context) {
  return Scaffold(
    body: FutureBuilder(
      future: getDataFromFakeServer(),
      builder: (context , data){
        if (data.hasError){
          return Center(child: Text("${data.error}"),);
        }else
          if (data.hasData){
          var items = data.data as List<Product>;
          return ListView.builder(
            itemCount: items == null? 0: items.length,
            itemBuilder: (context,int index){
              return Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 6.0),
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50.0,
                        width: 50.0,
                        child: Image(image: NetworkImage(items[index].file.main),fit: BoxFit.fill,),
                      ),
                      Expanded(child: Container(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.only(left: 8.0,right: 8.0),
                              child: Text(items[index].title,style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),),),
                            Padding(padding: EdgeInsets.only(left: 8.0,right: 8.0),
                              child: Text(items[index].excerpt),)
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              );
            },
          );
        }else{
          return Center(child: CircularProgressIndicator(),);
        }
      },
    ),
  );
}}