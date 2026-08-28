package com.anslayer.ui.season;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.x;
import com.anslayer.R;
import com.anslayer.ui.season.SeasonArchiveActivity;
import j4.v1;
import jc.l;
import o5.a;
import x6.k;

/* compiled from: SeasonArchiveActivity.kt */
/* loaded from: classes.dex */
public final class SeasonArchiveActivity extends a<v1> {
    public static final void n(SeasonArchiveActivity seasonArchiveActivity, View view) {
        l.f(seasonArchiveActivity, "this$0");
        seasonArchiveActivity.onBackPressed();
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        v1 c10 = v1.c(getLayoutInflater());
        l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        setSupportActionBar(c().f8775c);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.s(true);
        }
        c().f8775c.setNavigationOnClickListener(new View.OnClickListener() { // from class: x6.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SeasonArchiveActivity.n(SeasonArchiveActivity.this, view);
            }
        });
        Bundle extras = getIntent().getExtras();
        l.c(extras);
        setTitle(extras.getString("current_season"));
        if (bundle == null) {
            Bundle extras2 = getIntent().getExtras();
            if (extras2 == null) {
                extras2 = new Bundle();
            }
            extras2.putBoolean("from_activity", true);
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            l.e(supportFragmentManager, "supportFragmentManager");
            x m10 = supportFragmentManager.m();
            l.e(m10, "beginTransaction()");
            m10.u(true);
            l.e(m10.d(R.id.fragment_container_view, k.class, extras2, null), "add(containerViewId, F::class.java, args, tag)");
            m10.i();
        }
    }
}
