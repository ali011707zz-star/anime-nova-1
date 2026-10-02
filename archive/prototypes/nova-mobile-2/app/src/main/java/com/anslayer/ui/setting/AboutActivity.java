package com.anslayer.ui.setting;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import com.anslayer.R;
import com.anslayer.ui.setting.AboutActivity;
import com.twitter.sdk.android.core.identity.SSOAuthHandler;
import java.util.Arrays;
import jc.a0;
import jc.l;
import o5.a;
import qc.t;

/* compiled from: AboutActivity.kt */
/* loaded from: classes.dex */
public final class AboutActivity extends a<j4.a> {
    public static final void u(AboutActivity aboutActivity, View view) {
        l.f(aboutActivity, "this$0");
        aboutActivity.onBackPressed();
    }

    public static final void v(AboutActivity aboutActivity, View view) {
        l.f(aboutActivity, "this$0");
        String str = (("App version : 1.5.5" + ((Object) System.getProperty("line.separator"))) + "Device version : " + Build.VERSION.SDK_INT + ((Object) System.getProperty("line.separator"))) + "Device name : " + ((Object) aboutActivity.t()) + ((Object) System.getProperty("line.separator"));
        try {
            str = str + "from : " + ((Object) aboutActivity.getPackageManager().getInstallerPackageName(aboutActivity.getPackageName())) + ((Object) System.getProperty("line.separator"));
        } catch (Exception unused) {
        }
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setData(Uri.parse("mailto:"));
        String string = aboutActivity.getString(R.string.text_contact_email);
        l.e(string, "getString(R.string.text_contact_email)");
        intent.putExtra("android.intent.extra.EMAIL", new String[]{string});
        intent.putExtra("android.intent.extra.TEXT", System.getProperty("line.separator"));
        intent.putExtra("android.intent.extra.TEXT", System.getProperty("line.separator"));
        intent.putExtra("android.intent.extra.TEXT", System.getProperty("line.separator") + ((Object) System.getProperty("line.separator")) + ((Object) System.getProperty("line.separator")) + str);
        try {
            aboutActivity.startActivity(intent);
        } catch (Exception unused2) {
        }
    }

    public static final void w(AboutActivity aboutActivity, View view) {
        l.f(aboutActivity, "this$0");
        try {
            aboutActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://app-mo.com")));
        } catch (Exception unused) {
        }
    }

    public static final void x(AboutActivity aboutActivity, View view) {
        l.f(aboutActivity, "this$0");
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.BROWSABLE");
            if (aboutActivity.r(aboutActivity, "com.facebook.katana")) {
                intent.setPackage("com.facebook.katana");
                int i10 = 0;
                try {
                    i10 = aboutActivity.getPackageManager().getPackageInfo("com.facebook.katana", 0).versionCode;
                } catch (PackageManager.NameNotFoundException e10) {
                    e10.printStackTrace();
                }
                if (i10 >= 3002850) {
                    intent.setData(Uri.parse("fb://facewebmodal/f?href=http://m.facebook.com/AnimeSlayerApp"));
                } else {
                    intent.setData(Uri.parse("fb://page/AnimeSlayerApp"));
                }
            } else {
                intent.setData(Uri.parse("http://m.facebook.com/AnimeSlayerApp"));
            }
            aboutActivity.startActivity(intent);
        } catch (Exception unused) {
        }
    }

    public static final void y(AboutActivity aboutActivity, View view) {
        l.f(aboutActivity, "this$0");
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.addCategory("android.intent.category.BROWSABLE");
        if (aboutActivity.r(aboutActivity, SSOAuthHandler.TWITTER_PACKAGE_NAME)) {
            intent.setPackage(SSOAuthHandler.TWITTER_PACKAGE_NAME);
            a0 a0Var = a0.f9170a;
            String format = String.format("twitter://user?screen_name=%s", Arrays.copyOf(new Object[]{"AnimeSlayerApp"}, 1));
            l.e(format, "format(format, *args)");
            intent.setData(Uri.parse(format));
        } else {
            a0 a0Var2 = a0.f9170a;
            String format2 = String.format("http://twitter.com/intent/user?screen_name=%s", Arrays.copyOf(new Object[]{"AnimeSlayerApp"}, 1));
            l.e(format2, "format(format, *args)");
            intent.setData(Uri.parse(format2));
        }
        try {
            aboutActivity.startActivity(intent);
        } catch (Exception unused) {
        }
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        j4.a c10 = j4.a.c(getLayoutInflater());
        l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        setSupportActionBar(c().f8124j);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.s(true);
        }
        c().f8124j.setNavigationOnClickListener(new View.OnClickListener() { // from class: a7.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AboutActivity.u(AboutActivity.this, view);
            }
        });
        c().f8119e.setText(" اصدار التطبيق : 1.5.5");
        c().f8116b.setOnClickListener(new View.OnClickListener() { // from class: a7.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AboutActivity.v(AboutActivity.this, view);
            }
        });
        c().f8120f.setOnClickListener(new View.OnClickListener() { // from class: a7.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AboutActivity.w(AboutActivity.this, view);
            }
        });
        c().f8117c.setOnClickListener(new View.OnClickListener() { // from class: a7.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AboutActivity.x(AboutActivity.this, view);
            }
        });
        c().f8118d.setOnClickListener(new View.OnClickListener() { // from class: a7.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AboutActivity.y(AboutActivity.this, view);
            }
        });
    }

    public final boolean r(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public final String s(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        char charAt = str.charAt(0);
        if (Character.isUpperCase(charAt)) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Character.toUpperCase(charAt));
        String substring = str.substring(1);
        l.e(substring, "this as java.lang.String).substring(startIndex)");
        sb2.append(substring);
        return sb2.toString();
    }

    public final String t() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        l.e(str2, "model");
        l.e(str, "manufacturer");
        if (t.z(str2, str, false, 2, null)) {
            return s(str2);
        }
        return s(str) + ' ' + ((Object) str2);
    }
}
