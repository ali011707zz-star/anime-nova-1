package com.anslayer.ui.recommend;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.x;
import com.anslayer.R;
import com.anslayer.ui.recommend.RecommendActivity;
import com.twitter.sdk.android.core.identity.AuthHandler;
import j4.z;
import jc.g;
import jc.l;
import s6.n;

/* compiled from: RecommendActivity.kt */
/* loaded from: classes.dex */
public final class RecommendActivity extends o5.a<z> {

    /* renamed from: l, reason: collision with root package name */
    public static final a f4334l = new a(null);

    /* compiled from: RecommendActivity.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final Intent a(Context context, String str, String str2, long j10, boolean z10) {
            l.f(context, "context");
            l.f(str, "screenTitle");
            l.f(str2, "listType");
            Intent intent = new Intent(context, (Class<?>) RecommendActivity.class);
            intent.putExtra("arg_title", str);
            intent.putExtra("list_type", str2);
            intent.putExtra(AuthHandler.EXTRA_USER_ID, j10);
            intent.putExtra("self_recommendation", z10);
            return intent;
        }
    }

    public static final void n(RecommendActivity recommendActivity, View view) {
        l.f(recommendActivity, "this$0");
        recommendActivity.onBackPressed();
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
        c().f8864c.setNavigationOnClickListener(new View.OnClickListener() { // from class: s6.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RecommendActivity.n(RecommendActivity.this, view);
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
            l.e(m10.d(R.id.fragment_container_view, n.class, getIntent().getExtras(), null), "add(containerViewId, F::class.java, args, tag)");
            m10.i();
        }
    }
}
