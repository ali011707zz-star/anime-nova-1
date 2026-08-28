package com.anslayer.ui.customlist;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.x;
import com.anslayer.R;
import com.anslayer.ui.customlist.AddToCustomListActivity;
import j4.z;
import jc.g;
import jc.l;
import m0.b;
import vb.n;
import x5.f;

/* compiled from: AddToCustomListActivity.kt */
/* loaded from: classes.dex */
public final class AddToCustomListActivity extends o5.a<z> {

    /* renamed from: l, reason: collision with root package name */
    public static final a f4186l = new a(null);

    /* compiled from: AddToCustomListActivity.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final Intent a(Context context, long j10) {
            l.f(context, "context");
            Intent intent = new Intent(context, (Class<?>) AddToCustomListActivity.class);
            intent.putExtra("anime_id", j10);
            return intent;
        }
    }

    public static final void n(AddToCustomListActivity addToCustomListActivity, View view) {
        l.f(addToCustomListActivity, "this$0");
        addToCustomListActivity.onBackPressed();
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
        c().f8864c.setNavigationOnClickListener(new View.OnClickListener() { // from class: x5.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddToCustomListActivity.n(AddToCustomListActivity.this, view);
            }
        });
        setTitle(getResources().getString(R.string.add_to_customlist));
        long longExtra = getIntent().getLongExtra("anime_id", -1L);
        if (longExtra == -1) {
            finish();
            return;
        }
        if (bundle == null) {
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            l.e(supportFragmentManager, "supportFragmentManager");
            x m10 = supportFragmentManager.m();
            l.e(m10, "beginTransaction()");
            l.e(m10.d(R.id.fragment_container_view, f.class, b.a(n.a("enable_selection", Boolean.TRUE), n.a("anime_id", Long.valueOf(longExtra))), null), "add(containerViewId, F::class.java, args, tag)");
            m10.i();
        }
    }
}
