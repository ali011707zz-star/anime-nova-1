package com.anslayer.ui.authintication;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.x;
import com.anslayer.R;
import com.anslayer.ui.authintication.AuthSelectionActivity;
import j4.w;
import jc.l;
import k5.i;
import o5.a;

/* compiled from: AuthSelectionActivity.kt */
/* loaded from: classes.dex */
public final class AuthSelectionActivity extends a<w> {
    public static final void n(AuthSelectionActivity authSelectionActivity, View view) {
        l.f(authSelectionActivity, "this$0");
        authSelectionActivity.onBackPressed();
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        w c10 = w.c(getLayoutInflater());
        l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        setSupportActionBar(c().f8782c);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.s(true);
        }
        c().f8782c.setNavigationOnClickListener(new View.OnClickListener() { // from class: k5.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AuthSelectionActivity.n(AuthSelectionActivity.this, view);
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
