package com.anslayer.ui.profile.self.blocked;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.x;
import com.anslayer.R;
import com.anslayer.ui.profile.self.blocked.BlockedUsersActivity;
import com.twitter.sdk.android.core.identity.AuthHandler;
import j4.z;
import jc.g;
import jc.l;
import o6.e;

/* compiled from: BlockedUsersActivity.kt */
/* loaded from: classes.dex */
public final class BlockedUsersActivity extends o5.a<z> {

    /* renamed from: l, reason: collision with root package name */
    public static final a f4250l = new a(null);

    /* compiled from: BlockedUsersActivity.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final Intent a(Context context, String str, long j10) {
            l.f(context, "context");
            l.f(str, "screenTitle");
            Intent intent = new Intent(context, (Class<?>) BlockedUsersActivity.class);
            intent.putExtra("arg_title", str);
            intent.putExtra(AuthHandler.EXTRA_USER_ID, j10);
            return intent;
        }
    }

    public static final void n(BlockedUsersActivity blockedUsersActivity, View view) {
        l.f(blockedUsersActivity, "this$0");
        blockedUsersActivity.onBackPressed();
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
        c().f8864c.setNavigationOnClickListener(new View.OnClickListener() { // from class: o6.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BlockedUsersActivity.n(BlockedUsersActivity.this, view);
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
            l.e(m10.d(R.id.fragment_container_view, e.class, getIntent().getExtras(), null), "add(containerViewId, F::class.java, args, tag)");
            m10.i();
        }
    }
}
