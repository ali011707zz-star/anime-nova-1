package com.anslayer.ui.customlist.details;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.x;
import com.anslayer.R;
import com.twitter.sdk.android.core.identity.AuthHandler;
import j4.p0;
import jc.g;
import jc.l;
import p4.j;
import z5.k;

/* compiled from: CustomListDetailsActivity.kt */
/* loaded from: classes.dex */
public final class CustomListDetailsActivity extends o5.a<p0> {

    /* renamed from: l, reason: collision with root package name */
    public static final a f4195l = new a(null);

    /* compiled from: CustomListDetailsActivity.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final Intent a(Context context, j jVar) {
            l.f(context, "context");
            l.f(jVar, "customList");
            Intent intent = new Intent(context, (Class<?>) CustomListDetailsActivity.class);
            intent.putExtra("id", jVar.c());
            intent.putExtra("title", jVar.e());
            intent.putExtra("desc", jVar.d());
            intent.putExtra(AuthHandler.EXTRA_USER_ID, jVar.f());
            return intent;
        }
    }

    @Override // o5.a, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        p0 c10 = p0.c(getLayoutInflater());
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
