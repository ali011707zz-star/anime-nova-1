package com.anslayer.ui.setting;

import android.os.Bundle;
import android.view.View;
import com.anslayer.ui.setting.DisclaimerActivity;
import j4.b;
import jc.l;
import o5.a;

/* compiled from: DisclaimerActivity.kt */
/* loaded from: classes.dex */
public final class DisclaimerActivity extends a<b> {
    public static final void n(DisclaimerActivity disclaimerActivity, View view) {
        l.f(disclaimerActivity, "this$0");
        disclaimerActivity.onBackPressed();
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        b c10 = b.c(getLayoutInflater());
        l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        setSupportActionBar(c().f8151c);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.s(true);
        }
        c().f8151c.setNavigationOnClickListener(new View.OnClickListener() { // from class: a7.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DisclaimerActivity.n(DisclaimerActivity.this, view);
            }
        });
    }
}
