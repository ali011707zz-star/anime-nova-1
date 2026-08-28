package com.anslayer.ui.anime.characters.more;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.x;
import com.anslayer.R;
import com.anslayer.ui.anime.characters.more.CharacterStaffBrowseActivity;
import j4.z;
import jc.l;
import o5.a;

/* compiled from: CharacterStaffBrowseActivity.kt */
/* loaded from: classes.dex */
public final class CharacterStaffBrowseActivity extends a<z> {
    public static final void n(CharacterStaffBrowseActivity characterStaffBrowseActivity, View view) {
        l.f(characterStaffBrowseActivity, "this$0");
        characterStaffBrowseActivity.onBackPressed();
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
        c().f8864c.setNavigationOnClickListener(new View.OnClickListener() { // from class: e5.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CharacterStaffBrowseActivity.n(CharacterStaffBrowseActivity.this, view);
            }
        });
        Bundle extras = getIntent().getExtras();
        setTitle(extras == null ? null : extras.getString("arg_title"));
        Bundle extras2 = getIntent().getExtras();
        l.c(extras2);
        boolean z10 = extras2.getBoolean("show_staff");
        if (bundle == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            l.e(supportFragmentManager, "supportFragmentManager");
            x m10 = supportFragmentManager.m();
            l.e(m10, "beginTransaction()");
            m10.u(true);
            if (z10) {
                l.e(m10.d(R.id.fragment_container_view, g5.a.class, getIntent().getExtras(), null), "add(containerViewId, F::class.java, args, tag)");
            } else {
                l.e(m10.d(R.id.fragment_container_view, f5.a.class, getIntent().getExtras(), null), "add(containerViewId, F::class.java, args, tag)");
            }
            m10.i();
        }
    }
}
