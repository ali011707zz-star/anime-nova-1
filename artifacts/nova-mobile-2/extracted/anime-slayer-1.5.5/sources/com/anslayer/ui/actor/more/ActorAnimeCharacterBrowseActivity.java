package com.anslayer.ui.actor.more;

import a5.b;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.x;
import com.anslayer.R;
import com.anslayer.ui.actor.more.ActorAnimeCharacterBrowseActivity;
import j4.z;
import jc.l;
import o5.a;

/* compiled from: ActorAnimeCharacterBrowseActivity.kt */
/* loaded from: classes.dex */
public final class ActorAnimeCharacterBrowseActivity extends a<z> {
    public static final void n(ActorAnimeCharacterBrowseActivity actorAnimeCharacterBrowseActivity, View view) {
        l.f(actorAnimeCharacterBrowseActivity, "this$0");
        actorAnimeCharacterBrowseActivity.onBackPressed();
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        z c10 = z.c(getLayoutInflater());
        l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        setSupportActionBar(c().f8864c);
        androidx.appcompat.app.a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.s(true);
        }
        c().f8864c.setNavigationOnClickListener(new View.OnClickListener() { // from class: a5.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActorAnimeCharacterBrowseActivity.n(ActorAnimeCharacterBrowseActivity.this, view);
            }
        });
        Bundle extras = getIntent().getExtras();
        boolean z10 = false;
        if (extras != null && extras.containsKey("arg_title")) {
            z10 = true;
        }
        if (z10) {
            Bundle extras2 = getIntent().getExtras();
            l.c(extras2);
            setTitle(extras2.getString("arg_title"));
        }
        if (bundle == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            l.e(supportFragmentManager, "supportFragmentManager");
            x m10 = supportFragmentManager.m();
            l.e(m10, "beginTransaction()");
            m10.u(true);
            l.e(m10.d(R.id.fragment_container_view, b.class, getIntent().getExtras(), null), "add(containerViewId, F::class.java, args, tag)");
            m10.i();
        }
    }
}
