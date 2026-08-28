package com.anslayer.ui.profile.people.anime;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.x;
import com.anslayer.R;
import com.anslayer.ui.profile.people.anime.BrowsePeopleAnimesActivity;
import j4.z;
import j6.b;
import jc.l;
import o5.a;

/* compiled from: BrowsePeopleAnimesActivity.kt */
/* loaded from: classes.dex */
public final class BrowsePeopleAnimesActivity extends a<z> {
    public static final void n(BrowsePeopleAnimesActivity browsePeopleAnimesActivity, View view) {
        l.f(browsePeopleAnimesActivity, "this$0");
        browsePeopleAnimesActivity.onBackPressed();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.activity_close_enter, R.anim.activity_close_exit);
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        z c10 = z.c(getLayoutInflater());
        l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        Bundle extras = getIntent().getExtras();
        l.c(extras);
        setTitle(extras.getString("arg_title"));
        setSupportActionBar(c().f8864c);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.s(true);
        }
        c().f8864c.setNavigationOnClickListener(new View.OnClickListener() { // from class: j6.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BrowsePeopleAnimesActivity.n(BrowsePeopleAnimesActivity.this, view);
            }
        });
        if (bundle == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            l.e(supportFragmentManager, "supportFragmentManager");
            x m10 = supportFragmentManager.m();
            l.e(m10, "beginTransaction()");
            l.e(m10.d(R.id.fragment_container_view, b.class, getIntent().getExtras(), null), "add(containerViewId, F::class.java, args, tag)");
            m10.i();
        }
    }
}
