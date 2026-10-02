package com.anslayer.ui.actor;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.x;
import com.anslayer.R;
import com.anslayer.ui.actor.ActorDetailsActivity;
import j4.z;
import jc.g;
import jc.l;
import z4.d;

/* compiled from: ActorDetailsActivity.kt */
/* loaded from: classes.dex */
public final class ActorDetailsActivity extends o5.a<z> {

    /* renamed from: l, reason: collision with root package name */
    public static final a f4160l = new a(null);

    /* compiled from: ActorDetailsActivity.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final Intent a(Context context, int i10, String str) {
            l.f(context, "context");
            l.f(str, "actorName");
            Intent intent = new Intent(context, (Class<?>) ActorDetailsActivity.class);
            intent.putExtra("actor_id", i10);
            intent.putExtra("arg_title", str);
            return intent;
        }
    }

    public static final void n(ActorDetailsActivity actorDetailsActivity, View view) {
        l.f(actorDetailsActivity, "this$0");
        actorDetailsActivity.onBackPressed();
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
        c().f8864c.setNavigationOnClickListener(new View.OnClickListener() { // from class: z4.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActorDetailsActivity.n(ActorDetailsActivity.this, view);
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
            l.e(m10.d(R.id.fragment_container_view, d.class, getIntent().getExtras(), null), "add(containerViewId, F::class.java, args, tag)");
            m10.i();
        }
    }
}
