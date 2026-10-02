package com.anslayer.ui.search;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.x;
import com.anslayer.R;
import j4.c;
import jc.l;
import o5.a;
import w6.k;

/* compiled from: FilterActivity.kt */
/* loaded from: classes.dex */
public final class FilterActivity extends a<c> {
    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        c c10 = c.c(getLayoutInflater());
        l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        if (bundle == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            l.e(supportFragmentManager, "supportFragmentManager");
            x m10 = supportFragmentManager.m();
            l.e(m10, "beginTransaction()");
            m10.u(true);
            l.e(m10.d(R.id.fragment_container_view, k.class, getIntent().getExtras(), null), "add(containerViewId, F::class.java, args, tag)");
            m10.i();
        }
    }
}
