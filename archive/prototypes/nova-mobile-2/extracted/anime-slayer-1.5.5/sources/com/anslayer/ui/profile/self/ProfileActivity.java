package com.anslayer.ui.profile.self;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.x;
import com.anslayer.R;
import j4.o1;
import jc.g;
import jc.l;
import n6.j;

/* compiled from: ProfileActivity.kt */
/* loaded from: classes.dex */
public final class ProfileActivity extends o5.a<o1> {

    /* renamed from: l, reason: collision with root package name */
    public static final a f4249l = new a(null);

    /* compiled from: ProfileActivity.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final Intent a(Context context) {
            l.f(context, "context");
            return new Intent(context, (Class<?>) ProfileActivity.class);
        }
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        o1 c10 = o1.c(getLayoutInflater());
        l.e(c10, "inflate(layoutInflater)");
        j(c10);
        setContentView(c().b());
        if (bundle == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            l.e(supportFragmentManager, "supportFragmentManager");
            x m10 = supportFragmentManager.m();
            l.e(m10, "beginTransaction()");
            m10.u(true);
            l.e(m10.d(R.id.fragment_container_view, j.class, getIntent().getExtras(), null), "add(containerViewId, F::class.java, args, tag)");
            m10.i();
        }
    }
}
