package com.anslayer.ui.profile.people;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.x;
import com.anslayer.R;
import com.twitter.sdk.android.core.identity.AuthHandler;
import i6.m;
import j4.m1;
import jc.g;
import jc.l;

/* compiled from: PeopleProfileActivity.kt */
/* loaded from: classes.dex */
public final class PeopleProfileActivity extends o5.a<m1> {

    /* renamed from: l, reason: collision with root package name */
    public static final a f4248l = new a(null);

    /* compiled from: PeopleProfileActivity.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final Intent a(Context context, long j10) {
            l.f(context, "context");
            Intent intent = new Intent(context, (Class<?>) PeopleProfileActivity.class);
            intent.putExtra(AuthHandler.EXTRA_USER_ID, j10);
            return intent;
        }
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m1 c10 = m1.c(getLayoutInflater());
        l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        if (bundle == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            l.e(supportFragmentManager, "supportFragmentManager");
            x m10 = supportFragmentManager.m();
            l.e(m10, "beginTransaction()");
            m10.u(true);
            l.e(m10.d(R.id.fragment_container_view, m.class, getIntent().getExtras(), null), "add(containerViewId, F::class.java, args, tag)");
            m10.i();
        }
    }
}
