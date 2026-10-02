package com.anslayer.ui.comment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.x;
import com.anslayer.R;
import com.anslayer.ui.comment.CommentActivity;
import j4.z;
import jc.g;
import jc.l;
import u5.m;

/* compiled from: CommentActivity.kt */
/* loaded from: classes.dex */
public final class CommentActivity extends o5.a<z> {

    /* renamed from: l, reason: collision with root package name */
    public static final a f4177l = new a(null);

    /* compiled from: CommentActivity.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        public final Intent a(Context context, Long l10, String str, String str2, boolean z10) {
            l.f(context, "context");
            l.f(str, "jsonArg");
            l.f(str2, "requestType");
            Intent intent = new Intent(context, (Class<?>) CommentActivity.class);
            Bundle bundle = new Bundle();
            if (l10 != null) {
                bundle.putLong("anime_comment_id", l10.longValue());
            }
            bundle.putString("arg_json", str);
            bundle.putString("arg_request_type", str2);
            bundle.putBoolean("hide_comment_input", z10);
            bundle.putBoolean("from_notification", true);
            intent.putExtras(bundle);
            return intent;
        }
    }

    public static final void n(CommentActivity commentActivity, View view) {
        l.f(commentActivity, "this$0");
        commentActivity.onBackPressed();
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
        c().f8864c.setNavigationOnClickListener(new View.OnClickListener() { // from class: u5.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CommentActivity.n(CommentActivity.this, view);
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
            l.e(m10.d(R.id.fragment_container_view, m.class, getIntent().getExtras(), null), "add(containerViewId, F::class.java, args, tag)");
            m10.i();
        }
    }
}
