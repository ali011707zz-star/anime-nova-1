package com.anslayer.ui.setting;

import a7.i;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.x;
import com.anslayer.R;
import com.anslayer.ui.setting.SettingsActivity;
import j4.l2;
import jc.l;
import o5.a;

/* compiled from: SettingsActivity.kt */
/* loaded from: classes.dex */
public final class SettingsActivity extends a<l2> {
    public static final void n(SettingsActivity settingsActivity, View view) {
        l.f(settingsActivity, "this$0");
        settingsActivity.onBackPressed();
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        l2 c10 = l2.c(getLayoutInflater());
        l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        setSupportActionBar(c().f8521c);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.s(true);
        }
        c().f8521c.setNavigationOnClickListener(new View.OnClickListener() { // from class: a7.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsActivity.n(SettingsActivity.this, view);
            }
        });
        if (bundle == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            l.e(supportFragmentManager, "supportFragmentManager");
            x m10 = supportFragmentManager.m();
            l.e(m10, "beginTransaction()");
            m10.u(true);
            l.e(m10.d(R.id.fragment_container_view, i.class, null, null), "add(containerViewId, F::class.java, args, tag)");
            m10.i();
        }
    }
}
